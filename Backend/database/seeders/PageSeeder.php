<?php

namespace Database\Seeders;

use App\Models\Page;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Page::create([
            'slug' => 'home',
            'title' => 'Home',
            'hero_title' => 'EMS Contracting',
            'hero_description' => 'Delivering first-class commercial maintenance nation wide 24/7',
            'hero_image' => 'storage/pictures/hero_1.png'
        ]);

        Page::create([
            'slug' => 'services',
            'title' => 'Services',
            'hero_title' => 'Services',
            'hero_description' => null,
            'hero_image' => 'storage/pictures/hero_2.jpg'
        ]);


    }
}
