<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/scommetti', 'ScommessaController@scommetti')->name('scommetti');
Route::get('/my-bet', 'ScommessaController@myBet')->name('my-bet');

Route::post('/getDisponibili', 'ScommessaController@getDisponibili');
Route::post('/getScommessa', 'ScommessaController@getScommessa');
Route::post('/addScommessa', 'ScommessaController@addScommessa');
