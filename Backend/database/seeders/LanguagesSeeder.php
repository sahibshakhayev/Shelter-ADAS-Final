<?php


namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LanguagesSeeder extends Seeder
{
    public function run()
    {
        DB::table('languages')->insert([
            [
                'id' => 1,
                'code' => 'az',
                'name' => 'Azərbaycanca',
                'country' => 'AZ',
                'created_at' => '2024-09-25 04:11:51',
                'updated_at' => '2024-09-26 04:50:27',
            ],
            [
                'id' => 2,
                'code' => 'en',
                'name' => 'English',
                'country' => 'GB',
                'created_at' => '2024-09-25 04:11:51',
                'updated_at' => '2024-09-25 04:11:51',
            ],
            [
                'id' => 3,
                'code' => 'ru',
                'name' => 'Русский',
                'country' => 'RU',
                'created_at' => '2024-09-25 04:11:51',
                'updated_at' => '2024-09-26 04:50:58',
            ],
        ]);
    }
}
