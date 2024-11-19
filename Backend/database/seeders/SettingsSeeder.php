<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class SettingsSeeder extends Seeder
{
    public function run()
    {


        DB::table('settings')->insert([
            [
                'key' => 'site_name',
                'value' => 'Shelter',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'email',
                'value' => 'info@shelter.az',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'logo',
                'value' => 'storage/pictures/logo_main.png',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'youtube',
                'value' => 'Youtube',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-30 04:27:57'),
            ],
            [
                'key' => 'linkedin',
                'value' => 'Linkedin',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'phone',
                'value' => '(+994 12) 232 5679',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-24 05:46:48'),
            ],
            [
                'key' => 'fax',
                'value' => '(+994 12) 565 08 95',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'address',
                'value' => 'Azadliq Avenue 14, Baku, Azerbaijan',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-10-02 03:17:14'),
            ],
            [
                'key' => 'facebook',
                'value' => 'Facebook',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'instagram',
                'value' => 'Instagram',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'twitter',
                'value' => 'Twitter',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'telegram',
                'value' => 'Telegra',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'threads',
                'value' => 'Threads',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'map',
                'value' => '40° 24\' 33.3504\'\' N and 49° 52\' 1.5312\'\' E.',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'favicon',
                'value' => 'storage/pictures/logo_main.png',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'title',
                'value' => 'ADAS Shelter',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'description',
                'value' => 'ADAS Shelter Project',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'keywords',
                'value' => 'shelter, azerbaijan, adas',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-09-22 09:09:08'),
            ],
            [
                'key' => 'footer_text',
                'value' => '© Copyright 2024 sığınacaq.az - All Right Reserved. Made by WebCoder',
                'created_at' => Carbon::parse('2024-09-22 09:09:08'),
                'updated_at' => Carbon::parse('2024-10-02 03:21:25'),
            ],
            [
                'key' => 'under',
                'value' => '1',
                'created_at' => Carbon::parse('2024-09-22 14:57:25'),
                'updated_at' => Carbon::parse('2024-09-22 14:57:25'),
            ],
        ]);
    }
}
