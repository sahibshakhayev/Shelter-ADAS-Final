<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            AboutUsSeeder::class, // AboutUs
            UserSeeder::class,  // Admin user
            ProjectSeeder::class,    // Projects
            ServiceSeeder::class,    // Services
            BlogSeeder::class,       // Blogs
            ContactingSeeder::class, // Contactings
            PartnerSeeder::class,    // Partners
            SettingSeeder::class,    // Settings
        ]);
    }
}
