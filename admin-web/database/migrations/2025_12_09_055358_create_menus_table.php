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
        Schema::create('menus', function (Blueprint $table) 
        {
            $table->id(); // 1. id
            $table->string('name'); // 2. name
            $table->text('description')->nullable(); // 3. description (nullable biar aman kalau kosong)
            $table->integer('price'); // 4. price
            $table->string('image_url')->nullable(); // 5. image_url
            
            // 6. category_id (Relasi ke tabel categories)
            $table->foreignId('category_id')
                ->constrained('categories')
                ->cascadeOnDelete(); 
                
            $table->boolean('is_available')->default(true); // 7. is_available
            
            $table->timestamps(); // 8. created_at (sekaligus updated_at)
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('menus');
    }
};
