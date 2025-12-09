<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $table = 'order_details';
    public $timestamps = false;
    protected $guarded = [];

    // Relasi balik ke Menu (agar admin tahu ini menu apa)
    public function menu()
    {
        return $this->belongsTo(Menu::class, 'menu_id');
    }
}
