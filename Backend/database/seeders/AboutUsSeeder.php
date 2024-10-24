<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;



class AboutUsSeeder extends Seeder
{
    public function run()
    {
        // Seed About Us
        DB::table('about_us')->insert([
            'id' => 1,
            'left_image' => 'storage/pictures/about_us/YrXt02hs0NABF953m0E47LpFgt7piHalQd63rZPz.jpg',
            'image_alt' => 'About left image',
            'header_text' => 'About Shelter',
            'short_description' => 'Founded by Mick Donkin and Kris Armstrong in 2013. We incorporate 3 divisions: Smart-metering, Renewables and Recycling all from our head office in Sunderland.We employ a team of highly skilled engineers delivering multi-disciplinary projects which operate across the UK, offering a 24/7 service including emergency call out.',
            'long_description' => "Founded by Mick Donkin and Kris Armstrong in 2013. We incorporate 3 divisions: Smart-metering, Renewables and Recycling all from our head office in Sunderland.We employ a team of highly skilled engineers delivering multi-disciplinary projects which operate across the UK, offering a 24/7 service including emergency call out.We have a commitment to quality and a strong safety culture, ensuring that every job we do is completed correctly and safely. We pride oursleves on fostering a working culture that is based on our core values. This ensures the people that make EMS what it is can enjoy the best, most engaging and safe environment possible. It's the people and our values that we believe set us apart in the industry.",
            'created_at' => '2024-10-03 08:26:10',
            'updated_at' => '2024-10-03 08:26:10',
        ]);

        // Seed Brand Values
        $brandValues = [
            [
                'about_us_id' => 1,
                'title' => 'Integrity',
                'description' => "Acting with strong ethics is a priority for everyone representing the organization as well as the company's behaviour as a whole.",
                'icon' => 'storage/pictures/about-us/integrity.png',
                'created_at' => '2024-10-02 03:07:49',
                'updated_at' => '2024-10-02 03:07:49',
            ],
            [
                'about_us_id' => 1,
                'title' => 'Honesty',
                'description' => "It's not just the best policy, it's a core business practice to act in a transparent, trustworthy manner that earns the respect of colleagues, customers and the public.",
                'icon' => 'storage/pictures/about-us/honesty.png',
                'created_at' => '2024-10-02 03:08:28',
                'updated_at' => '2024-10-02 03:08:28',
            ],
            [
                'about_us_id' => 1,
                'title' => 'FAIRNESS',
                'description' => 'Treating everyone with the common decency we all deserve and expect.',
                'icon' => 'storage/pictures/brandvalues/VN2KXmEyQDm7UIr5BMFEdetJadZhrP3krkP96ykv.svg',
                'created_at' => '2024-10-02 03:09:21',
                'updated_at' => '2024-10-02 03:09:21',
            ],
            [
                'about_us_id' => 1,
                'title' => 'ACCOUNTABILITY',
                'description' => 'Accepting responsibility for your actions (and inactions) is the ultimate way to build trust internally and externally.',
                'icon' => 'storage/pictures/brandvalues/HeqRm5sWWuDAquIuw0Kc45FO1wJfa72qkby12jEW.svg',
                'created_at' => '2024-10-02 03:10:34',
                'updated_at' => '2024-10-02 03:10:34',
            ],
            [
                'about_us_id' => 1,
                'title' => 'COMMITMENT TO DELIVER',
                'description' => 'Creating a great customer experience begins with staying true to the words we speak and the bonds we make.',
                'icon' => 'storage/pictures/brandvalues/M0XElnzXiR9dMzd3NvJ2XwZBGotw36s75epMo6gm.svg',
                'created_at' => '2024-10-02 03:11:33',
                'updated_at' => '2024-10-02 03:13:09',
            ],
            [
                'about_us_id' => 1,
                'title' => 'DIVERSITY & INCLUSION',
                'description' => 'Organisations succeed by bringing different lived experiences and a range of backgrounds into a shared environment where everyone has equal opportunity.',
                'icon' => 'storage/pictures/brandvalues/YtHLOoBYgQjQzsSSj6FZIhxcHsTtJAxMeMEaqlUA.svg',
                'created_at' => '2024-10-02 03:14:13',
                'updated_at' => '2024-10-02 03:14:13',
            ],
            [
                'about_us_id' => 1,
                'title' => 'LEARNING',
                'description' => 'No one has all the answers. A culture of humility and continuous learning is a bedrock principle of successful companies.',
                'icon' => 'storage/pictures/brandvalues/qgSojijLv0b3jLz9UWVfJ5wsDUJVtgLhYCSyVT6m.svg',
                'created_at' => '2024-10-02 03:15:13',
                'updated_at' => '2024-10-02 03:15:13',
            ],
            [
                'about_us_id' => 1,
                'title' => 'TEAMWORK',
                'description' => 'When people work together, they can create something greater than themselves as individuals.',
                'icon' => 'storage/pictures/brandvalues/V7jYqZwxxS7rVcW9RfeJFfgtAFW5cbDGaEBs4yoE.svg',
                'created_at' => '2024-10-02 03:16:11',
                'updated_at' => '2024-10-02 03:16:11',
            ],
        ];

        DB::table('brand_values')->insert($brandValues);

        // Seed Subbrands
        $subbrands = [
            [
                'about_us_id' => 1,
                'logo' => 'storage/pictures/about-us/about_us_logo_1.png',
                'logo_alt' => 'Subbrand 1 logo',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'about_us_id' => 1,
                'logo' => 'storage/pictures/about-us/about_us_logo_2.png',
                'logo_alt' => 'Subbrand 2 logo',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'about_us_id' => 1,
                'logo' => 'storage/pictures/subbrands/IlZqD1e05es2nM8N265pf92S0JzzbttCKqgbiY7i.png',
                'logo_alt' => 'Subbrand 3 logo',
                'created_at' => '2024-10-02 02:29:24',
                'updated_at' => '2024-10-02 02:29:24',
            ],
            [
                'about_us_id' => 1,
                'logo' => 'storage/pictures/subbrands/7vMQRVRAulO4L8yV4hGOxso61fsiEraGrvK0ByAj.png',
                'logo_alt' => 'Subbrand 4 logo',
                'created_at' => '2024-10-02 02:29:55',
                'updated_at' => '2024-10-02 02:34:25',
            ],
        ];

        DB::table('subbrands')->insert($subbrands);
    }
}
