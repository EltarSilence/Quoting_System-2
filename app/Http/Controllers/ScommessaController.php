<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use App\Multipla;
use App\Scommessa;
use App\User;
use App\Disponibili;

class ScommessaController extends Controller
{

  public function myBet(){
      $userBets = ScommessaController::getAllBetsBy(1);
      $vincite = array();
      $dettagli = array();

      foreach($userBets as $bet){
        $won = ScommessaController::isWon($bet);
        $details = ScommessaController::getBetDetail($bet);
        array_push($vincite, $won);
        array_push($dettagli, $details);
      }

      return view('my-bet')
        ->with('userBets', $userBets)
        ->with('isWon', $vincite)
        ->with('details', $dettagli);
  }

  public function scommetti(){
    $verifiche = ScommessaController::getDisponibili();
    return view('scommetti');
  }

  public static function getDisponibili(){
    $verifiche = Disponibili::select('alD', 'fileD', 'descrizioneD')
    ->whereDate('dalD', '<=', date('Y-m-d'))
    ->whereDate('alD', '>=', date('Y-m-d'))
    ->get();
    $ret = array();
    foreach ($verifiche as $v) {
      $a = array();
      $a['alD'] = $v->alD;
      $a['type'] = substr($v->fileD, 0, stripos($v->fileD, "_"));
      $a['fileD'] = $v->fileD;
      $a['descrizioneD'] = explode("|", $v->descrizioneD);

      array_push($ret, $a);
    }

    return $ret;
  }

  public static function getScommessa(){
    $key = Input::get('scommessa');

    $scom = Disponibili
      ::where('fileD', '=', $key)
      ->get();

    $data = array();
    $data['type'] = substr($key, 0, stripos($key, "_"));
    $data['descrizione'] = explode("|", $scom[0]->descrizioneD);
    $data['al'] = date("d/m/Y", strtotime($scom[0]->alD));
    $data['filename'] = $key;

if($data['type'] == 'EUO'){
  $data['file'] = json_decode('{"Gallina":{"ESATTO":{"9" : 1.56},"UNDER":{"9" : 1.56},"OVER":{"9" : 1.56}}}', true);
}else if($data['type'] == 'SN'){
  $data['file'] = json_decode('{"0":{"SI" : 1.5,"NO" : 1.56},"1":{"SI" : 1.56,"NO" : 1.6}}', true);
}else{
  $data['file'] = json_decode('{"0" : {"titolo": "Prof1","quota" : 1.56},"1" : {"titolo": "Prof2","quota" : 1.6}}', true);
}



    return $data;
  }

  public static function getWeekWin(){
    $ret = array();
    $scom = Scommessa
    ::join('users', 'users.id', '=', 'scommessas.idUtenteS')
    ->whereDate('dataS', '>=', date("Y-m-d", strtotime(date("Y-m-d")."-7day")))
    ->where('pagataS', 1)
    ->get();
    foreach ($scom as $s) {
      $winCoin = ScommessaController::isWon($s);
      if($winCoin > 0){
        array_push($ret, array($s->name => $winCoin));
      }
    }
    usort($ret, "self::cmp");
    return $ret;
  }

  public static function getMouthWin(){
    $ret = array();
    $scom = Scommessa
    ::join('users', 'users.id', '=', 'scommessas.idUtenteS')
    ->whereDate('dataS', '>=', date("Y-m-d", strtotime(date("Y-m-d")."-30day")))
    ->where('pagataS', 1)
    ->get();

    foreach ($scom as $s) {
      $winCoin = ScommessaController::isWon($s);
      if($winCoin > 0){
        array_push($ret, array($s->name => $winCoin));
      }
    }
    usort($ret, "self::cmp");
    return $ret;
  }

  public static function cmp($a, $b){
    foreach($a as $akey => $avalue){
      foreach($b as $bkey => $bvalue){
        return ($avalue < $bvalue) ? 1 : -1;
      }
    }
    return 0;
  }

  private static function isWon($scommessa){
    $vin = 1;
    $mult = Multipla
      ::leftJoin('risultatis', 'multiplas.chiaveM', '=', 'risultatis.chiaveR')
      ->where('idScommessaM', '=', $scommessa->idS)
      ->get();
    foreach ($mult as $m) {
      if (!isset($m->chiaveR)){
        return -1;
      }
      $chiave = explode('_', $m->chiaveR);
      $tipo = $chiave[0];
      switch ($tipo) {
        case 'EUO':
          $cat = $m->tipoM;
          switch ($cat){
            case 'ESATTO':
            if ($m->valueM == $m->risultatoR){
              $vin = $vin*$m->quotaM;
            }
            else {
              return 0;
            }
            break;
            case 'UNDER':
            $value = floatval($m->valueM);
            $res = floatval($m->risultatoR);

            if ($res < $value) {
              $vin *= $m->quotaM;
            }
            else {
              return 0;
            }
            break;
          case 'OVER':
            $value = floatval($m->valueM);
            $res = floatval($m->risultatoR);

            if ($res > $value) {
              $vin *= $m->quotaM;
            }
            else {
              return 0;
            }
            break;
          default:
            return 0;
            break;
        }
        break;
        case 'SN':
        case 'MT':
        if ($m->risultatoR == $m->valueM){
          $vin = $vin*$m->quotaM;
        }
        else {
          return 0;
        }
        break;

        default:
        return 0;
        break;
      }
    }
    return $vin*$scommessa->coinS;
  }

  public static function getAllBetsBy($id){
    $bets = Scommessa::where('idUtenteS', '=', $id)
    ->orderBy('dataS', 'desc')
    ->get();
    return $bets;
  }

  public static function getBetDetail($scommessa){
    $mult = Multipla
      ::leftJoin('risultatis', 'multiplas.chiaveM', '=', 'risultatis.chiaveR')
      ->join('disponibilis', 'multiplas.chiaveM', 'LIKE', DB::raw('CONCAT(disponibilis.fileD, "%")'))
      ->where('idScommessaM', '=', $scommessa->idS)
      ->get();
    return $mult;

  }

  public static function addScommessa(){
    $key = Input::get();

    $a = new Scommessa;
    $a->idUtenteS = Auth::user()->id;
    $a->coinS = Input::get('importo');
    $a->dataS = date('Y-m-d');
    $a->pagataS = 0;
    $a->save();

    $id = $a->id;

    for($i = 0; $i < sizeof(Input::get('chiave')); $i++){
      $b = new Multipla;
      $b->idScommessaM = $id;
      $b->chiaveM = Input::get('chiave')[$i];
      $b->tipoM = (strpos(Input::get('chiave')[$i], 'EUO_') !== false ? Input::get('type')[$i] : "");
      $b->valueM = Input::get('value')[$i];
      //quota da cercase su file
      $b->quotaM = 1.2;
      $b->save();
    }

    //return redirect(route('home'));
  }

}
