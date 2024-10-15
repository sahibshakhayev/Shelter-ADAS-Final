<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ContactingsSeeder extends Seeder
{
    public function run()
    {
        $contactings = [
            [
                'id' => 6,
                'src' => 'storage/pictures/contactings/contact_1727854863.jpg',
                'name' => 'Mick Donkin',
                'mail' => 'sahib.shakhayev@hotmail.com',
                'created_at' => '2024-10-02 03:41:03',
                'updated_at' => '2024-10-02 03:41:03',
            ],
            [
                'id' => 7,
                'src' => 'storage/pictures/contactings/contact_1727855264.jpg',
                'name' => 'Kris Armstrong',
                'mail' => 'parashard641@gmail.com',
                'created_at' => '2024-10-02 03:47:46',
                'updated_at' => '2024-10-02 03:47:46',
            ],
            [
                'id' => 8,
                'src' => 'storage/pictures/contactings/contact_1727855386.jpg',
                'name' => 'Daryl Shepherd',
                'mail' => 'parashard641@gmail.com',
                'created_at' => '2024-10-02 03:49:46',
                'updated_at' => '2024-10-02 03:49:46',
            ],
            [
                'id' => 9,
                'src' => 'storage/pictures/contactings/contact_1727855547.jpg',
                'name' => 'Jahid Huseynli',
                'mail' => 'jony.advpr@gmail.com',
                'created_at' => '2024-10-02 03:52:27',
                'updated_at' => '2024-10-02 03:52:27',
            ],
            [
                'id' => 10,
                'src' => 'storage/pictures/contactings/contact_1727855598.jpg',
                'name' => 'Leo Messi',
                'mail' => 'parashard641@gmail.com',
                'created_at' => '2024-10-02 03:53:18',
                'updated_at' => '2024-10-02 03:53:18',
            ],
            [
                'id' => 11,
                'src' => 'storage/pictures/contactings/contact_1727855655.jpg',
                'name' => 'David Beckham',
                'mail' => 'parashard641@gmail.com',
                'created_at' => '2024-10-02 03:54:17',
                'updated_at' => '2024-10-02 03:54:17',
            ],
        ];

        DB::table('contactings')->insert($contactings);
    }
}
