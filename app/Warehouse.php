<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Warehouse extends Model
{
    protected $fillable = ['name'];

    public function bikes()
    {
        return $this->hasMany('App/Bike');
    }



    public function extras(){
        return $this->belongsToMany( 'App\Extra', 'warehouse_extras', 'warehouse_id', 'extra_id' );
    }
}
