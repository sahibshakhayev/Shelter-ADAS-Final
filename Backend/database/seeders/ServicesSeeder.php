<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ServicesSeeder extends Seeder
{
    public function run()
    {
        DB::table('services')->insert([
            [
                'title' => 'Electrical and Mechanical',
                'subtitle' => 'Find a Handyman In DC For Your Next Task',
                'text-title' => 'Book Now',
                'description' => 'Lorem ipsum dolor sit amet consectetur...',
                'src' => 'storage/pictures/services/66fe5cce8deb7.jpg',
                'article_image' => 'storage/pictures/services/articles/66fe5cd0128d5.jpg',
                'created_at' => Carbon::parse('2024-10-03 04:58:56'),
                'updated_at' => Carbon::parse('2024-10-03 04:58:56'),
            ],
            [
                'title' => 'Air Conditioning and Ventilation',
                'subtitle' => 'Find a Handyman In DC For Your Next Task',
                'text-title' => 'Book Now',
                'description' => 'Lorem ipsum dolor sit amet consectetur...',
                'src' => 'storage/pictures/services/66fe5cd193d57.jpg',
                'article_image' => 'storage/pictures/services/articles/66fe5cd300ef4.jpg',
                'created_at' => Carbon::parse('2024-10-03 04:58:59'),
                'updated_at' => Carbon::parse('2024-10-03 04:58:59'),
            ],
            [
                'title' => 'Refrigeration',
                'subtitle' => 'Find a Handyman In DC For Your Next Task',
                'text-title' => 'Book Now',
                'description' => 'Lorem ipsum dolor sit amet consectetur...',
                'src' => 'storage/pictures/services/66fe5cd476ba2.jpg',
                'article_image' => 'storage/pictures/services/articles/66fe5cd6098bc.jpg',
                'created_at' => Carbon::parse('2024-10-03 04:59:02'),
                'updated_at' => Carbon::parse('2024-10-03 04:59:02'),
            ],
            [
                'title' => 'F Gas Regulation',
                'subtitle' => 'Find a Handyman In DC For Your Next Task',
                'text-title' => 'Book Now',
                'description' => 'Lorem ipsum dolor sit amet consectetur...',
                'src' => 'storage/pictures/services/66fe5cd91e986.jpg',
                'article_image' => 'storage/pictures/services/articles/66fe5cdb03790.jpg',
                'created_at' => Carbon::parse('2024-10-03 04:59:07'),
                'updated_at' => Carbon::parse('2024-10-03 04:59:07'),
            ],
            [
                'title' => 'Renewable Energy and Heating',
                'subtitle' => 'Find a Handyman In DC For Your Next Task',
                'text-title' => 'Book Now',
                'description' => 'Lorem ipsum dolor sit amet consectetur...',
                'src' => 'storage/pictures/services/66fe5cdccf565.jpg',
                'article_image' => 'storage/pictures/services/articles/66fe5cdd4e38b.jpg',
                'created_at' => Carbon::parse('2024-10-03 04:59:09'),
                'updated_at' => Carbon::parse('2024-10-03 04:59:09'),
            ],
            [
                'title' => 'Electricity and Gas Metering',
                'subtitle' => 'Find a Handyman In DC For Your Next Task',
                'text-title' => 'Book Now',
                'description' => 'Lorem ipsum dolor sit amet consectetur...',
                'src' => 'storage/pictures/services/66fe5cde18842.jpg',
                'article_image' => 'storage/pictures/services/articles/66fe5ce01b097.jpg',
                'created_at' => Carbon::parse('2024-10-03 04:59:12'),
                'updated_at' => Carbon::parse('2024-10-03 04:59:12'),
            ],
            [
                'title' => 'Waste Recycling',
                'subtitle' => 'Find a Handyman In DC For Your Next Task',
                'text-title' => 'Book Now',
                'description' => 'Lorem ipsum dolor sit amet consectetur...',
                'src' => 'storage/pictures/services/66fe5ce0b02ff.jpg',
                'article_image' => 'storage/pictures/services/articles/66fe5ce145b0f.jpg',
                'created_at' => Carbon::parse('2024-10-03 04:59:13'),
                'updated_at' => Carbon::parse('2024-10-03 04:59:13'),
            ],
        ]);
    }
}
