<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AboutUsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $aboutUsId = DB::table('about_us')->insertGetId([
            'left_image' => 'storage/pictures/about-us/about_us_1.png',
            'image_alt' => 'EMS contracting workers',
            'header_text' => 'About EMS Contracting',
            'short_description' => 'EMS Contracting is a leading provider of ...',
            'long_description' => 'Founded by Mick Donkin and Kris Armstrong in 2013...',
        ]);

        // Seed Brand Values
        DB::table('brand_values')->insert([
            [
                'about_us_id' => $aboutUsId,
                'title' => 'Integrity',
                'description' => 'Acting with strong ethics is a priority for everyone...',
                'icon' => 'storage/pictures/about-us/integrity.png'
            ],
            [
                'about_us_id' => $aboutUsId,
                'title' => 'Honesty',
                'description' => 'It’s not just the best policy, it’s a core business practice...',
                'icon' => 'storage/pictures/about-us/honesty.png'
            ],
            // More brand values...
        ]);

        // Seed Subbrands
        DB::table('subbrands')->insert([
            [
                'about_us_id' => $aboutUsId,
                'logo' => 'storage/pictures/about-us/about_us_logo_1.png',
                'logo_alt' => 'Subbrand 1 logo'
            ],
            [
                'about_us_id' => $aboutUsId,
                'logo' => 'storage/pictures/about-us/about_us_logo_2.png',
                'logo_alt' => 'Subbrand 2 logo'
            ],
            // More subbrands...
        ]);
    }
}
