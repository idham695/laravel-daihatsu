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

Route::get('/', 'TypeController@index');

Route::resource('/type', 'TypeController')->except([
    'index'
]);

Route::resource('/product', 'ProductController')->except([
    'index'
]);

Route::get('/search', function () {
    return view('search');
});
Route::get('/map', function () {
    return view('map');
});
