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

Route::get('/','GameController@popular');

Auth::routes([
    'register' => false, // Registration Routes...
//    'reset' => false, // Password Reset Routes...
    'verify' => false, // Email Verification Routes...
]);

Route::get('stock/chart','HomeController@chart');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/sample', 'HomeController@sample')->name('sample');
Route::get('/edit','ProfileController@edit')->name('profile.edit');
Route::post('/change-password','ProfileController@changePassword')->name('profile.changePassword');
Route::post('/change-name','ProfileController@changeName')->name('profile.changeName');
Route::post('/change-email','ProfileController@changeEmail')->name('profile.changeEmail');
Route::post('/change-photo','ProfileController@changePhoto')->name('profile.changePhoto');
Route::resource('/category','CategoryController');
Route::resource('/post','PostController');
Route::resource('/photo','PhotoController');
Route::resource('/rating','RatingController');
Route::resource('/suggest','SuggestController');
Route::resource('/request_app','RequestAppController');
Route::resource('/comment','CommentController');
Route::resource('viewer','ViewerController');
Route::get('/showRating/{id}','PostController@showRating')->name('post.showRating');
Route::get('/showComment/{id}','PostController@showComment')->name('post.showComment');

Route::resource('/ads','AdsController');
Route::post('/background','PhotoController@changeBackground')->name('photo.changeBackground');



Route::get('/suggestGame/create','GameController@createSuggest')->name('suggestGame.createSuggest');
Route::post('/suggestGame','GameController@storeSuggest')->name('suggestGame.storeSuggest');
Route::get('/requestGame/create','GameController@createRequest')->name('requestGame.createRequest');
Route::post('/requestGame','GameController@storeRequest')->name('requestGame.storeRequest');
Route::post('/addRating','GameController@storeRating')->name('addRating.storeRating');
Route::post('/commentGame','GameController@storeComment')->name('commentGame.storeComment');
Route::get('/adGame','GameController@adGame')->name('adGame');

Route::get('/showComment/{id}','GameController@showComment')->name('post.showComment');
Route::get('/game','GameController@gameList')->name('game.gameList');
Route::get('/game/{id}','GameController@gameListFilter')->name('game.gameList-filter');
Route::get('/single-game-list/{id}','GameController@singleGameList')->name('game.single-game-list');
Route::get('/gameSearch','GameController@gameSearch')->name('game.gameSearch');
