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
        //getWinCoin or 0
        $winCoin = ScommessaController::isWinned($s);
        if($winCoin > 0){
          array_push($ret, array($s->name => $winCoin));
        }
      }
      return $ret;
    }

    private static function isWinned($scommessa){


      
      $mult = Multipla::where('idScommessa', '=', $idScommessa)->get();

      $r = Scommessa::leftJoin('users', 'users.id', '=', 'scommessas.idUtente')->get();
      foreach ($r as $s) {
        echo $s->name;
      }

      return 100;
    }

    public static function getMouthWin(){
      //read all, by primaryKey, where
  /*    Multipla::all();
      ::find(1)
      ::where('idScommessa', '<=', 1)

      //insert
      $a = new Multipla()
      $a->idScommessa = 1;
      $a->save();
*/

      $ret = array();
      array_push($ret, array("Zexal087" => "800"));
      array_push($ret, array("Zexal087" => "200"));

      return $ret;
    }

    public function index(){
      return 1;
    }

}
