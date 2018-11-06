<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Multipla;
use App\Scommessa;
use App\User;
use App\Disponibili;

class ScommessaController extends Controller
{
  public static function getDisponibili(){

    $verifiche = Disponibili::select('dalD', 'alD', 'fileD')
    ->whereDate('dalD', '<=', date('Y-m-d'))
    ->whereDate('alD', '>=', date('Y-m-d'))
    ->get();

    return $verifiche;
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

      $file = $chiave[0].'_'.$chiave[1].'.json';

      switch ($tipo) {
        case 'EUO':
          $cat = $m->tipoM;
          switch ($cat){
            case 'Esatto':
            if ($m->valueM == $m->risultatoR){
              $vin = $vin*$m->quotaM;
            }
            else {
              return 0;
            }
            break;
            case 'Under':
            $value = floatval($m->valueM);
            $res = floatval($m->risultatoR);

            if ($res < $value) {
              $vin *= $m->quotaM;
            }
            else {
              return 0;
            }
            break;
          case 'Over':
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

      return $vin*$scommessa->coinS;
      //$nome = $chiave[2];
    }

  }

}
