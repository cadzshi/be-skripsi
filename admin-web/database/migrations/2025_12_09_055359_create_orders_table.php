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
        Schema::create('orders', function (Blueprint $table) 
        {
            $table->id(); // 1. id
            $table->string('customer_name'); // 2. customer_name
            $table->bigInteger('total_price'); // 3. total_price (pakai BigInt biar muat angka besar)
            $table->string('status')->default('pending'); // 4. status
            $table->timestamps(); // 5 & 6. created_at & updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
