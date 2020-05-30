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
Route::get('/products', 'ProductController@index');
Route::post('/searchProduct', 'ProductController@searchProduct');
Route::get('/product/photo/{id}', 'Product_ImageController@show');
// Route::get('/product/addImage/{id}', 'ProductController@addImageProducts');
Route::post('/image_interior/{id}', 'Product_Image_InteriorController@update');
Route::post('/image_eksterior/{id}', 'Product_Image_EksteriorController@update');
Route::post('/image/{id}', 'Product_ImageController@update');

Route::resource('/type', 'TypeController')->except([
    'index'
]);
Route::resource('/plus', 'Plus_Product_Controller')->except([
    'show','create','edit'
]);
Route::resource('/color', 'Color_ProductController')->except([
    'create','edit'
]);
Route::resource('/performance', 'PerformanceController')->except([
    'create','edit'
]);
Route::resource('/capacity', 'CapacityController')->except([
    'create','edit'
]);
Route::resource('/detailMesin', 'DetailMesinController')->except([
    'create','edit'
]);
Route::resource('/kemudi', 'KemudiController')->except([
    'create','edit'
]);
Route::resource('/suspensi', 'SuspensionController')->except([
    'create','edit'
]);
Route::resource('/transmisi', 'TransmisionController')->except([
    'create','edit'
]);
Route::resource('/velg', 'VelgBanController')->except([
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
Route::resource('/image', 'Product_ImageController')->except([
    'show','update','create','edit'
]);
Route::resource('/down', 'Down_PaymentController')->except([
    'show','create','edit'
]);
Route::resource('/eksterior', 'EksteriorController')->except([
    'show','create','edit'
]);
Route::resource('/hiburan', 'HiburanController')->except([
    'show','create','edit'
]);
Route::resource('/keamanan', 'KeamananController')->except([
    'show','create','edit'
]);
Route::resource('/kenyamanan', 'KenyamananController')->except([
    'show','create','edit'
]);
Route::resource('/keselamatan', 'KeselamatanController')->except([
    'show','create','edit'
]);
Route::resource('/lain', 'LainLainController')->except([
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
