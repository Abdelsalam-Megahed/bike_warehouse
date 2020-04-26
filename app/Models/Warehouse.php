<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Warehouse extends Model
{
    protected $fillable = ['name'];

    public function bikes()
    {
        return $this->hasMany('App\Models\Bike')->orderBy('updated_at', 'DESC');;
    }

    public function extras(){
        return $this->belongsToMany( 'App\Models\Extra', 'warehouse_extras', 'warehouse_id', 'extra_id' );
    }
}
