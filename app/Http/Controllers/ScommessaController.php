<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ScommessaController extends Controller
{
    //

    /*public function getAll($id){
      return view("auth.login")->with('id', $id);
    }*/

    public function get($value = 0){
      return view("_topWin")->with('id', $value);
    }

    public function index(){

    }


}
