<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    public $timestamps = false;
    protected $guarded = [];

    // Relasi ke Detail Item
    public function details()
    {
        return $this->hasMany(OrderDetail::class, 'order_id');
    }
}
