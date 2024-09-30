<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Setting;
class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Setting::create(['key' => 'site_name', 'value' => 'Shelter']);
        Setting::create(['key' => 'email', 'value' => 'info@shelter.az']);
        Setting::create(['key' => 'logo', 'value' => 'storage/pictures/logo_main.png']);
        Setting::create(['key' => 'under', 'value' => '1']);
        Setting::create(['key' => 'youtube', 'value' => 'Youtube']);
        Setting::create(['key' => 'linkedin', 'value' => 'Linkedin']);
        Setting::create(['key' => 'phone', 'value' => '(+994 12) 565 08 99']);
        Setting::create(['key' => 'fax', 'value' => '(+994 12) 565 08 95']);
        Setting::create(['key' => 'address', 'value' => 'Шоссе Аэропорт-Зых, 14-й км']);
        Setting::create(['key' => 'facebook', 'value' => 'Facebook']);
        Setting::create(['key' => 'instagram', 'value' => 'Instagram']);
        Setting::create(['key' => 'twitter', 'value' => 'Twitter']);
        Setting::create(['key' => 'telegram', 'value' => 'Telegra']);
        Setting::create(['key' => 'threads', 'value' => 'Threads']);
        Setting::create(['key' => 'map', 'value' => "40° 24' 33.3504'' N and 49° 52' 1.5312'' E."]);
        Setting::create(['key' => 'favicon', 'value' => 'storage/pictures/logo_main.png']);
        Setting::create(['key' => 'title', 'value' => 'ADAS Shelter']);
        Setting::create(['key' => 'hero_title', 'value' => 'EMS Contacting']);
        Setting::create(['key' => 'hero_text', 'value' => 'Delivering first-class commercial maintenance nationwide 24/7']);
        Setting::create(['key' => 'hero_bg', 'value' => 'storage/pictures/hero_1.png']);
        Setting::create(['key' => 'description', 'value' => 'ADAS Shelter Project']);
        Setting::create(['key' => 'keywords', 'value' => 'shelter, azerbaijan, adas']);
        Setting::create(['key' => 'footer_text', 'value' => 'Made with &heart by <b>Deepak</b> & <b>Creative Tweaks</b> for a better web']);
    }
}

