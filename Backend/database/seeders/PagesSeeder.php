<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class PagesSeeder extends Seeder
{
    public function run()
    {
        DB::table('pages')->insert([
            [
                'slug' => 'home',
                'title' => 'Home',
                'hero_title' => 'Home',
                'hero_image' => 'storage/pictures/hero_1.png',
                'hero_description' => null,
                'is_active' => 1,
                'created_at' => Carbon::parse('2024-09-27 06:11:40'),
                'updated_at' => Carbon::parse('2024-09-27 10:11:59'),
            ],
            [
                'slug' => 'services',
                'title' => 'Services',
                'hero_title' => 'Services',
                'hero_image' => 'storage/pictures/hero_2.jpg',
                'hero_description' => null,
                'is_active' => 1,
                'created_at' => Carbon::parse('2024-09-27 06:11:40'),
                'updated_at' => Carbon::parse('2024-09-27 11:59:41'),
            ],
            [
                'slug' => 'blogs',
                'title' => 'Blogs',
                'hero_title' => 'Blogs',
                'hero_image' => 'storage/pictures/pages/j9eSRgTT9I3RXSyGAlKS0dIJBxr8opJz27YnJPdp.jpeg',
                'hero_description' => null,
                'is_active' => 1,
                'created_at' => Carbon::parse('2024-10-03 07:04:10'),
                'updated_at' => Carbon::parse('2024-10-03 07:20:48'),
            ],
            [
                'slug' => 'projects',
                'title' => 'Projects',
                'hero_title' => 'Projects',
                'hero_image' => 'storage/pictures/pages/Drxt1PcJDIrBnPtdBuySrpNy7S16XkrV3FDDfwSg.jpeg',
                'hero_description' => null,
                'is_active' => 1,
                'created_at' => Carbon::parse('2024-10-03 07:20:27'),
                'updated_at' => Carbon::parse('2024-10-03 07:20:27'),
            ],
            [
                'slug' => 'contact',
                'title' => 'Contact',
                'hero_title' => 'Contact',
                'hero_image' => 'storage/pictures/pages/sr5Div2iNQzW5HfXApSFXoTs0D8Mj8fQUX4nucB4.jpg',
                'hero_description' => 'Services from us are trusted, reliable and professional. Please fill out the form completely, and we will get back to you as soon as possible',
                'is_active' => 1,
                'created_at' => Carbon::parse('2024-10-03 07:24:15'),
                'updated_at' => Carbon::parse('2024-10-03 07:38:30'),
            ],
            [
                'slug' => 'about',
                'title' => 'About Us',
                'hero_title' => 'About Us',
                'hero_image' => 'storage/pictures/pages/iXficC5jMhBwnl3M1L0BWygwnlW501fJV9aP9e8Q.jpg',
                'hero_description' => null,
                'is_active' => 1,
                'created_at' => Carbon::parse('2024-10-03 07:27:50'),
                'updated_at' => Carbon::parse('2024-10-03 07:27:50'),
            ],
        ]);
    }
}
