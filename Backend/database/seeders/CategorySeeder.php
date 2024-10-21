<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;
use App\Models\Subcategory;

class CategorySeeder extends Seeder
{
    public function run()
    {
        // Create Categories
        $shelterCategory = Category::create(['name' => 'Shelters']);
        $accessoryCategory = Category::create(['name' => 'Equipment and Accessories']);

        // Create Subcategories for Shelters
        $shelterSubcategories = ['Mini Bunker', 'Standard Bomb Shelter', 'Luxury Bunker'];
        foreach ($shelterSubcategories as $subcategory) {
            Subcategory::create(['name' => $subcategory, 'category_id' => $shelterCategory->id]);
        }

        $accessorySubcategories = ['Air Filtration Systems', 'Disinfection Chambers', 'Water Supply Systems'];
        foreach ($accessorySubcategories as $subcategory) {
            Subcategory::create(['name' => $subcategory, 'category_id' => $accessoryCategory->id]);
        }
    }
}

