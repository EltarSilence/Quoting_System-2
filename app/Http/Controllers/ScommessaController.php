<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//import the model
use App\Multipla;
use App\Scommessa;
use App\User;

class ScommessaController extends Controller
{

    public static function getWeekWin(){
      $ret = array();
      $scom = Scommessa
        ::join('users', 'users.id', '=', 'scommessas.idUtente')
        ->whereDate('data', '>=', date("Y-m-d", strtotime(date("Y-m-d")."-7day")))
        ->where('pagata', 1)
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
        ::join('users', 'users.id', '=', 'scommessas.idUtente')
        ->whereDate('data', '>=', date("Y-m-d", strtotime(date("Y-m-d")."-30day")))
        ->where('pagata', 1)
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
        ::leftJoin('risultatis', 'multiplas.chiave', '=', 'risultatis.chiave')
        ->where('idScommessa', '=', $scommessa->id)
        ->get();
      foreach ($mult as $m) {
        if(isset($m->risultato)){
  				switch($m->tipo){
  					case "ESATTO":
    					if($m->value == $m->risultato){
    						$vin = $vin*$m->quota;
    					}else{
    						$vin = 0;
    					}
    					break;
  					case "UNDER":
    					if(floatval($m->value) < floatval($m->risultato)){
    						$vin = $vin*$m->quota;
    					}else{
    						$vin = 0;
    					}
    					break;
  					case "OVER":
    					if(floatval($m->value) > floatval($m->risultato)){
    						$vin = $vin*$m->quota;
    					}else{
    						$vin = 0;
    					}
    					break;
  					default:
    					$vin = 0;
  					break;
  				}
  			}else{
  				$vin = 0;
  			}
  		}
  		$vin = $vin*$scommessa->betCoin;
      return $vin;
    }



}
