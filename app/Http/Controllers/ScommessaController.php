<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ScommessaController extends Controller
{

    public function getWeekWin(){

      $ret = array();
      array_push($ret, array("Zexal087" => "800"));
      array_push($ret, array("Zexal087" => "200"));

      return $ret;
    }

    public function index(){
      return 1;
    }


}
