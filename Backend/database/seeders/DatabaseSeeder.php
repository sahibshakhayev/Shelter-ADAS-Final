<?php
namespace Database\Seeders;

use Database\Seeders\AboutUsSeeder;
use Database\Seeders\BlogsSeeder;
use Database\Seeders\ContactingsSeeder;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            AboutUsSeeder::class,
            BlogsSeeder::class,
            ContactingsSeeder::class,
            LanguagesSeeder::class,
            PagesSeeder::class,
            PartnersSeeder::class,
            ProjectsSeeder::class,
            ServicesSeeder::class,
            SettingsSeeder::class,
            CategorySeeder::class,
            StaticTextsSeeder::class,
            TranslationsSeeder::class,
            UserSeeder::class,
        ]);
    }
}
