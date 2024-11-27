<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FindWaysSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('find_ways')->insert([
            [
                'key' => 'google',
                'value' => 'Google',
            ],
            [
                'key' => 'social-media',
                'value' => 'Social Media',
            ],
            [
                'key' => 'friends',
                'value' => 'Friends or Relativies',
            ],
            [
                'key' => 'news',
                'value' => 'News',
            ],
            [
                'key' => 'ads',
                'value' => 'Ads',
            ],
            [
                'key' => 'other',
                'value' => 'Other',
            ],
            ]);
    }
}
