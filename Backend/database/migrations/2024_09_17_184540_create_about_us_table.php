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
        Schema::create('about_us', function (Blueprint $table) {
            $table->id();
            $table->string('left_image');        // URL for the image
            $table->string('image_alt');         // Alt text for the image
            $table->string('header_text');       // Header text
            $table->text('short_description');   // Short description for Home Page
            $table->text('long_description');    // Long description for About Us page
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('about_us');
    }
};
