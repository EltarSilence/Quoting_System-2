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

      $scom = Scommessa::all();
      //::where('data', '>', '2018-10-21');
//      date("Y-m-d", strtotime(date("Y-m-d")."-7day")));
      foreach ($scom as $s) {
        //getWinCOin or 0
        $winCoin = 100;
        if($winCoin > 0){
          $u = User::where('id', $s->idUtente)->first();
          array_push($ret, array($u->name => $winCoin));
        }
      }
      return $ret;
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
