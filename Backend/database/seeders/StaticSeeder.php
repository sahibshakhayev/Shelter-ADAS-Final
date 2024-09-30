<?php

namespace Database\Seeders;

use App\Models\StaticText;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class StaticSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       StaticText::Create([

          'key' => 'search',
           'text' => 'Search'


       ]);


       StaticText::Create([

           'key' => 'see-more',
           'text' => 'See More'




       ]);
    }
}
