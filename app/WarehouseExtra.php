<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WarehouseExtra extends Model
{
    protected $table='warehouse_extras';
    protected $fillable = ['extra_id', 'warehouse_id'];

}
