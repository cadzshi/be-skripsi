<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories'; // Nama tabel di Postgres
    public $timestamps = false;      // Matikan default timestamps Laravel
    protected $guarded = [];
}
