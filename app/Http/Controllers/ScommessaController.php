<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//import the model
use App\Multipla;

class ScommessaController extends Controller
{

    public static function getWeekWin(){
      
      $ret = array();
      array_push($ret, array("Zexal087" => "800"));
      array_push($ret, array("Zexal087" => "200"));

      return $ret;
    }

    public static function getMouthWin(){
      //read all, by key, where
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
