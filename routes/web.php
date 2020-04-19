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
Route::get('/csrf', 'CsrfController@index');


Route::get('/', 'TypeController@index');
Route::get('/types', 'TypeController@getType');
Route::get('/product/image/{id}', 'ProductController@getImageProducts');
Route::post('/image_interior/{id}', 'Product_Image_InteriorController@update');
Route::post('/image_eksterior/{id}', 'Product_Image_EksteriorController@update');

Route::resource('/type', 'TypeController')->except([
    'index'
]);
Route::resource('/plus', 'Plus_Product_Controller')->except([
    'show','create','edit'
]);
Route::resource('/color', 'Color_ProductController')->except([
    'create','edit'
]);
Route::resource('/minus', 'Minus_Product_Controller')->except([
    'show','create','edit'
]);
Route::resource('/image_interior', 'Product_Image_InteriorController')->except([
    'update','create','edit'
]);
Route::resource('/image_eksterior', 'Product_Image_EksteriorController')->except([
    'update','create','edit'
]);
Route::resource('/down', 'Down_PaymentController')->except([
    'show','create','edit'
]);
Route::resource('/credit', 'CreditController')->except([
    'show','create','edit'
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
