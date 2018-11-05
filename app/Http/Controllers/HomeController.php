<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $verifiche = ScommessaController::getDisponibili();
        return view('home')->with('verifiche', $verifiche);
        $weekWin = ScommessaController::getWeekWin();
        $mouthWin = ScommessaController::getMouthWin();
        return view('home')->with('weekWin', $weekWin)->with('mouthWin', $mouthWin);
    }

}
