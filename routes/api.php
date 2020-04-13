<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

//Warehouse
Route::get('warehouses', 'WarehouseController@index');
Route::get('warehouses/{id}', 'WarehouseController@show');
Route::post('warehouses', 'WarehouseController@store');
//Bike
Route::get('bikes', 'BikeController@index');
Route::get('bikes', 'BikeController@filter');
Route::get('bikes/{id}', 'BikeController@show');
Route::put('bikes/{id}', 'BikeController@update');
Route::post('bikes', 'BikeController@store');
//Order
Route::get('orders', 'OrderController@index');
Route::get('orders/{id}', 'OrderController@show');
Route::post('orders', 'OrderController@store');
Route::put('orders/{id}', 'OrderController@update');
//Extra
Route::get('extras', 'ExtraController@index');
Route::get('extras/{id}', 'ExtraController@show');
Route::post('extras', 'ExtraController@store');
Route::put('extras/{id}', 'ExtraController@update');
//Warehouse Extra
Route::post('warehouse/extras', 'WarehouseExtraController@store');
Route::put('warehouse/extras/{id}', 'WarehouseExtraController@update');
