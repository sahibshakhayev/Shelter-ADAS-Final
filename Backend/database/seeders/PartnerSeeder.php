<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Partner;



class PartnerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Partner::create([
            'logo_src' => 'storage/pictures/partners/midea-logo.png',
            'alt_text' => 'Partner One Logo',
            'website_link' => 'https://partnerone.com',
        ]);

        Partner::create([
            'logo_src' => 'storage/pictures/partners/daikin-logo.png',
            'alt_text' => 'Partner Two Logo',
            'website_link' => 'https://partnertwo.com',
        ]);
    }
}
