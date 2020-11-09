<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('/user', 'GetController@show_user');

Route::post('/login', 'userController@store');
Route::post('/lulusan/{id}', 'userController@lulusan');
Route::post('/pengguna_lulusan/{id}', 'userController@pengguna_lulusan');