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
      $q_totale = 1;
      for ($i=0; $i<count($userBets); $i++){
        $won = ScommessaController::isWon($userBets[$i]);
        $details = ScommessaController::getBetDetail($userBets[$i]);
        for ($k=0; $k<count($details[$i]); $k++){
          //-1 APERTA, 0 PERDENTE, 1 VINCENTE
          $key = $details[$i][$k]['chiaveM'];
          $vl = $details[$i][$k]['valueM'];
          $category = explode('_', $key)[0];
          switch ($category) {
            case 'EUO':
              $id = explode('_', $key)[1];
              $nome = explode('_', $key)[2];
              $tipo = $details[$i][$k]['tipoM'];
              $value = $details[$i][$k]['valueM'];
              $desc = $details[$i][$k]['descrizioneD'];
              $maxdata = explode("|", $desc)[0];
              $testo_scom = explode("|", $desc)[1];
              $q_totale *= $details[$i][$k]['quotaM'];
              $esito = $details[$i][$k]['risultatoR'];

              if (!is_null($esito)){
                switch ($tipo) {
                  case 'ESATTO':
                    if ($value == $esito){
                      $single_won = 1;
                    }
                    else {
                      $single_won = 0;
                    }
                    break;
                  case 'UNDER':
                    if ($esito < $value){
                      $single_won = 1;
                    }
                    else {
                      $single_won = 0;
                    }
                    break;
                  case 'OVER':
                    if ($esito > $value){
                      $single_won = 1;
                    }
                    else {
                      $single_won = 0;
                    }
                    break;
                  default:

                    break;
                }
              }
              else {

              }


              if (!is_null($esito))
                echo "</h6>
                <i>Verifica riconsegnata - $esito</i>
                <br /><br />";
              else
                echo "</h6>
                <i>Scommessa aperta</i>
                <br /><br />";
              break;
            case 'SN':
              $id = explode('_', $key)[1];
              $subj = explode('_', $key)[2];
              $value = $details[$i][$k]['valueM'];
              $quota = $details[$i][$k]['quotaM'];
              $q_totale *= $quota;
              $desc = $details[$i][$k]['descrizioneD'];
              $esito = $details[$i][$k]['risultatoR'];

              if (!is_null($esito)){
                if ($value == $esito){
                  $single_won = 1;
                }
                else {
                  $single_won = 0;
                }
              }
              else {
                $single_won = -1;
              }
              break;
            case 'MT':
              $id = explode('_', $key)[1];
              $desc = $details[$i][$k]['descrizioneD'];
              $titolo = $json[explode("-", $vl)[0]]['titolo'];
              $quota = $details[$i][$k]['quotaM'];
              $q_totale *= $quota;
              $esito = $details[$i][$k]['risultatoR'];

              if (!is_null($esito)){
                if ($esito == $vl){
                  $single_won = 1;
                }
                else {
                  $single_won = 0;
                }
              }
              else {
                $single_won = -1;
              }

              break;
            }

          array_push($single_won, $details);
          array_push($vincite, $won);
          array_push($dettagli, $details);
        }

      }


      return view('my-bet')
        ->with('userBets', $userBets)
        ->with('isWon', $vincite)
        ->with('quota_totale', $quota_totale)
        ->with('details', $dettagli);
  }

  public function scommetti(){
    return view('scommetti');
  }

  public static function getDisponibili(){
    $verifiche = Disponibili::whereDate('dalD', '<=', date('Y-m-d'))
    ->whereDate('alD', '>=', date('Y-m-d'))
    ->get();
    $ret = array();
    foreach ($verifiche as $v) {
      $a = array();
      $a['alD'] = $v->alD;
      $a['typeD'] = $v->typeD;
      $a['fileD'] = $v->fileD;
      $a['descrizioneD'] = explode("|", $v->descrizioneD);

      array_push($ret, $a);
    }

    return $ret;
  }

  public static function getScommessa(){
    $key = Input::get('scommessa');

    $scom = Disponibili
      ::where('typeD', '=', $key)
      ->get();

    $data = array();
    $data['type'] = $scom[0]->typeD;
    $data['descrizione'] = explode("|", $scom[0]->descrizioneD);
    $data['al'] = date("d/m/Y", strtotime($scom[0]->alD));
    $data['filename'] = $key;
    $data['file'] = json_decode($scom[0]->fileD, true);

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
    ->orderBy('idS', 'desc')
    ->get();
    return $bets;
  }

  public static function getBetDetail($scommessa){
    $mult = Multipla
      ::leftJoin('risultatis', 'multiplas.chiaveM', '=', 'risultatis.chiaveR')
      ->join('disponibilis', 'multiplas.chiaveM', 'LIKE', DB::raw('CONCAT(disponibilis.typeD, "%")'))
      ->where('idScommessaM', '=', $scommessa->idS)
      ->get();
    return $mult;

  }

  public static function addScommessa(){
    $key = Input::get();

    if(Auth::user()->coin >= Input::get('importo') + 100){
      $a = new Scommessa;
      $a->idUtenteS = Auth::user()->id;
      $a->coinS = Input::get('importo');
      $a->dataS = date('Y-m-d');
      $a->pagataS = 0;
      $a->save();
      $ut = User
        ::where('id', '=', Auth::user()->id)
        ->update(['coin' => Auth::user()->coin - Input::get('importo')]);
      $id = $a->id;
      for($i = 0; $i < sizeof(Input::get('chiave')); $i++){
        $b = new Multipla;
        $b->idScommessaM = $id;
        $b->chiaveM = Input::get('chiave')[$i];
        $b->tipoM = (strpos(Input::get('chiave')[$i], 'EUO_') !== false ? Input::get('type')[$i] : "");
        $b->valueM = Input::get('value')[$i];

        $t = explode("_", Input::get('chiave')[$i]);

        switch($t[0]){
          case "EUO":
            $d = Disponibili::where('typeD', '=', $t[0]."_".$t[1])
              ->get();
            $j = json_decode($d[0]->fileD, true);
            $b->quotaM = $j[$t[2]][Input::get('type')[$i]][Input::get('value')[$i]];
            break;
          case "SN":
            $d = Disponibili::where('typeD', '=', $t[0]."_".$t[1])
              ->get();
            $j = json_decode($d[0]->fileD, true);
            $b->quotaM = $j[$t[2]][Input::get('value')[$i]];
            break;
          case "MT":
            $d = Disponibili::where('typeD', '=', $t[0]."_".$t[1])
              ->get();
            $j = json_decode($d[0]->fileD, true);
            $b->quotaM = $j[explode("-", Input::get('value')[$i])[0]]['quota'];
            break;
        }
        $b->save();
      }
      return redirect(route('home'));
    }else{

    }
  }

}
