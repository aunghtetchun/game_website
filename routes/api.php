<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::get('/v1/game/{key}', [
//    'middleware' => 'App\Http\Middleware\ApiKey',
//    function () {
//        return view('welcome');
//    }]);
Route::get('/v1/game', array('uses' => 'ApiController@index','middleware' => ['ApiKey']));
Route::get('/v1/game/{id}', array('uses' => 'ApiController@show','middleware' => ['ApiKey']));
Route::get('/v1/games', array('uses' => 'ApiController@all','middleware' => ['ApiKey']));
Route::get('/v1/ads','ApiController@ads')->middleware('ApiKey');

//Route::post('/v1/request', array('uses' => 'ApiController@createRequest','middleware' => ['ApiKey']));
Route::resource('/v1','ApiController')->middleware('ApiKey');


//Route::post('v1/request', 'ApiController@createRequest')->middleware('ApiKey');
//Route::get('/requestGame/create','ApiController@createRequest')->name('requestGame.createRequest');

//Route::get('/games/{id}','ApiController@games')->name('games');

