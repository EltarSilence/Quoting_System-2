<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Multipla;
use App\Scommessa;
use App\User;
use App\Disponibili;

class ScommessaController extends Controller
{
    public function index(){
        return view('my-bet');
    }

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
        $winCoin = ScommessaController::isWinned($s);
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
        $winCoin = ScommessaController::isWinned($s);
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

    private static function isWinned($scommessa){
      $vin = 1;
      $mult = Multipla
        ::leftJoin('risultatis', 'multiplas.chiaveM', '=', 'risultatis.chiaveR')
        ->where('idScommessaM', '=', $scommessa->idS)
        ->get();
      foreach ($mult as $m) {
        if(isset($m->risultatoR)){
  				switch($m->tipoM){
  					case "ESATTO":
    					if($m->valueM == $m->risultatoR){
    						$vin = $vin*$m->quotaM;
    					}else{
    						$vin = 0;
    					}
    					break;
  					case "UNDER":
    					if(floatval($m->valueM) < floatval($m->risultatoR)){
    						$vin = $vin*$m->quotaM;
    					}else{
    						$vin = 0;
    					}
    					break;
  					case "OVER":
    					if(floatval($m->valueM) > floatval($m->risultatoR)){
    						$vin = $vin*$m->quotaM;
    					}else{
    						$vin = 0;
    					}
    					break;
  					default:
    					$vin = 0;
  					break;
  				}
  			}else{
  				return -1;
  			}
  		}
  		$vin = $vin*$scommessa->coinS;
      return $vin;
    }



}
