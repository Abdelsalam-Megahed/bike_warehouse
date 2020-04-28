<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//Warehouse
Route::get('warehouses', 'WarehouseController@index');
Route::get('warehouses/{id}', 'WarehouseController@show');
Route::post('warehouses', 'WarehouseController@store');
Route::put('warehouses/{id}', 'WarehouseController@update');
Route::delete('warehouses/{id}', 'WarehouseController@destroy');

//Bike
Route::get('bikes', 'BikeController@index');
Route::get('bikes/{id}', 'BikeController@show');
Route::patch('bikes/{id}', 'BikeController@update');
Route::post('bikes', 'BikeController@store');
Route::delete('bikes/{id}', 'BikeController@destroy');
//For getting bike unique models and sizes
Route::get('bike/models', 'BikeController@getBikeModels');
Route::get('bike/sizes', 'BikeController@getBikeSizes');
//bikeGraph
Route::get('bike/bikegraph', 'BikeController@getBikeGraph');

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
Route::get('warehouse/extras', 'WarehouseExtraController@index');
Route::post('warehouse/extras', 'WarehouseExtraController@store');
Route::put('warehouse/extras/{id}', 'WarehouseExtraController@update');
