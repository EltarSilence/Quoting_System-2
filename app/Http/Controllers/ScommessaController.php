<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Multipla;
use App\Scommessa;
use App\User;
use App\Disponibili;

class ScommessaController extends Controller
{

  public function index(){
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

  public static function getDisponibili(){
    $verifiche = Disponibili::select('dalD', 'alD', 'fileD')
    ->whereDate('dalD', '<=', date('Y-m-d'))
    ->whereDate('alD', '>=', date('Y-m-d'))
    ->get();

    return $verifiche;
  }

  public static function getScommessa(){
    $key = Input::get('scommessa');
    $file = $key.'.json';

    $multiple = array();
    $multiple['type'] = substr($key, 0, stripos($key, "_"));
    $multiple['al'] = "2018-10-31";
    $multiple['filename'] = $key;
    $multiple['file'] = json_decode('{"0":{"descrizione": "Andreoli ammesso...","SI" : 1.5,"NO" : 1.56},"1":{"descrizione": "Bacchetti ammesso...","SI" : 1.56,"NO" : 1.6}}', true);

    return $multiple;
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
    // SELECT * FROM multiplas
    // LEFT JOIN risultatis ON multiplas.chiaveM = risultatis.chiaveR
    // WHERE idScommessaM = 1

    //SELECT * FROM multiplas
    //LEFT JOIN risultatis
    //ON multiplas.chiaveM = risultatis.chiaveR
    //inner join disponibilis ON multiplas.chiaveM
    //LIKE "%" WHERE idScommessaM = 1
    $mult = Multipla
      ::leftJoin('risultatis', 'multiplas.chiaveM', '=', 'risultatis.chiaveR')
      ->join('disponibilis', 'multiplas.chiaveM', '=', 'disponibilis.fileD')
      ->where('idScommessaM', '=', $scommessa->idS)
      ->get();
    var_dump($mult);
    return $mult;

  }

}
