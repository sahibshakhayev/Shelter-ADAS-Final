<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class PartnersSeeder extends Seeder
{
    public function run()
    {
        DB::table('partners')->insert([
            [
                'logo_src' => 'storage/pictures/partners/partner_1727856303.png',
                'alt_text' => 'Meta',
                'website_link' => 'https://meta.com',
                'created_at' => Carbon::parse('2024-10-02 04:05:03'),
                'updated_at' => Carbon::parse('2024-10-02 04:05:03'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727856949.png',
                'alt_text' => 'Samsung',
                'website_link' => 'https://samsung.com',
                'created_at' => Carbon::parse('2024-10-02 04:15:49'),
                'updated_at' => Carbon::parse('2024-10-02 04:15:49'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727856975.png',
                'alt_text' => 'Tesla',
                'website_link' => 'https://tesla.com',
                'created_at' => Carbon::parse('2024-10-02 04:16:15'),
                'updated_at' => Carbon::parse('2024-10-02 04:16:15'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727857016.png',
                'alt_text' => 'Microsoft',
                'website_link' => 'https://microsoft.com',
                'created_at' => Carbon::parse('2024-10-02 04:16:56'),
                'updated_at' => Carbon::parse('2024-10-02 04:16:56'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727857066.png',
                'alt_text' => 'Xiaomi',
                'website_link' => 'https://mi.com',
                'created_at' => Carbon::parse('2024-10-02 04:17:46'),
                'updated_at' => Carbon::parse('2024-10-02 04:17:46'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727857097.png',
                'alt_text' => 'Google',
                'website_link' => 'https://google.com',
                'created_at' => Carbon::parse('2024-10-02 04:18:17'),
                'updated_at' => Carbon::parse('2024-10-02 04:18:17'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727857141.png',
                'alt_text' => 'Apple',
                'website_link' => 'https://apple.com',
                'created_at' => Carbon::parse('2024-10-02 04:19:01'),
                'updated_at' => Carbon::parse('2024-10-02 04:19:01'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727857191.png',
                'alt_text' => 'Visa',
                'website_link' => 'https://visa.com',
                'created_at' => Carbon::parse('2024-10-02 04:19:51'),
                'updated_at' => Carbon::parse('2024-10-02 04:19:51'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727857216.png',
                'alt_text' => 'Intel',
                'website_link' => 'https://intel.com',
                'created_at' => Carbon::parse('2024-10-02 04:20:16'),
                'updated_at' => Carbon::parse('2024-10-02 04:20:16'),
            ],
            [
                'logo_src' => 'storage/pictures/partners/partner_1727857243.png',
                'alt_text' => 'Oracle',
                'website_link' => 'https://oracle.com',
                'created_at' => Carbon::parse('2024-10-02 04:20:44'),
                'updated_at' => Carbon::parse('2024-10-02 04:20:44'),
            ],
        ]);
    }
}
