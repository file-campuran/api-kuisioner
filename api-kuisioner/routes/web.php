<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});
// $router->post("/register", "AuthController@register");
// $router->post("/login", "AuthController@login");

//$router->get("/soal/lulusan", "SoalLulusanController@index");
$router->get("/survey/lulusan_ti", "SoalLulusanTiController@index");
$router->get("/survey/lulusan_tpht", "SoalLulusanTphtController@index");
$router->get("/survey/pengguna_lulusan", "SoalPenggunaLulusanController@index");
//$router->get("/subsoal/lulusan", "SubSoalLulusanController@index");
$router->get("/prodi", "ProdiController@index");