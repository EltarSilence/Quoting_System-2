<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\ScommessaController;

class HomeController extends Controller
{
    public function __construct(){
    }

    public function index(){
return view('home')->with('weekWin', [])->with('mouthWin', []);
        $weekWin = ScommessaController::getWeekWin();
        $mouthWin = ScommessaController::getMouthWin();
        return view('home')->with('weekWin', $weekWin)->with('mouthWin', $mouthWin);
    }

}
