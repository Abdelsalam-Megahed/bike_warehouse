<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Bike extends Model
{
    protected $fillable = ['warehouse_id', 'order_id'];


    public function getCreatedAtAttribute($value)
    {
        return $this->asDateTime($value)->format('d/m/Y - H:i');
    }

    public function getUpdatedAtAttribute($value)
    {
        return $this->asDateTime($value)->format('d/m/Y - H:i');
    }


    public function warehouse()
    {
        return $this->belongsTo('App\Models\Warehouse');
    }

    public function order()
    {
        return $this->hasOne('App\Models\Order');
    }

}
