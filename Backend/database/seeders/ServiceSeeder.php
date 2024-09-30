<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Service;


class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Service::create([
            'title' => 'Service One',
            'description' => 'This is the first service description.',
            'subtitle' => 'Most Popular Service',
            'text-title' => 'Text title 1',
            'src' => 'storage/pictures/services/av.jpg',
        ]);

        Service::create([
            'title' => 'Service Two',
            'description' => 'This is the second service description.',
            'subtitle' => 'Most Popular Service',
            'text-title' => 'Text title 1',
            'src' => 'storage/pictures/services/em.jpg',
        ]);
    }
}
