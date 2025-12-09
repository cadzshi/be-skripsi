<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('order_details', function (Blueprint $table) 
        {
            $table->id(); // 1. id
            
            // 2. order_id (Relasi ke tabel orders)
            $table->foreignId('order_id')
                ->constrained('orders')
                ->cascadeOnDelete(); // Kalau order dihapus, detail ikut terhapus
                
            // 3. menu_id (Relasi ke tabel menus)
            $table->foreignId('menu_id')
                ->constrained('menus'); 
                
            $table->integer('quantity'); // 4. quantity
            $table->integer('price_at_time'); // 5. price_at_time
            
            $table->timestamps(); // Standar laravel
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order_details');
    }
};
