<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Contacting;


class ContactingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Contacting::create([
            'src' => 'storage/pictures/contactings/mick.jpg',
            'name' => 'Mick Doe',
            'mail' => 'mick@example.com',
        ]);

        Contacting::create([
            'src' => 'storage/pictures/contactings/mick.jpg',
            'name' => 'Kriss Smith',
            'mail' => 'mick@example.com',
        ]);
    }
}
