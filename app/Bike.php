<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bike extends Model
{
    //For put endpoint
    protected $fillable = ['warehouse_id', 'order_id'];

    public function warehouse()
    {
        return $this->belongsTo('App\Warehouse');
    }

    public function order()
    {
        return $this->belongsTo('App\Order');
    }
}
