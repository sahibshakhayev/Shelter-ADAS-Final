<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\Subcategory;

class ProductsSeeder extends Seeder
{
    public function run()
    {
        // Assuming Categories and Subcategories are already seeded
        // Let's get some subcategories and associate products with them

        $subcategories = Subcategory::all();

        // Example products data
        $products = [
            [
                'title' => 'Product 1',
                'image' => 'storage/pictures/projects/project_58.jpg',
                'description' => 'This is the description for Product 1.',
                'date' => '2024-01-15',
                'client' => 'Client 1',
                'location' => 'Location 1',
            ],
            [
                'title' => 'Product 2',
                'image' => 'storage/pictures/projects/project_59.jpg',
                'description' => 'This is the description for Product 2.',
                'date' => '2024-02-20',
                'client' => 'Client 2',
                'location' => 'Location 2',
            ],
            // Add more products as needed
        ];

        foreach ($products as $productData) {
            // Randomly assign subcategory to the product
            $subcategory = $subcategories->random();

            Product::create([
                'title' => $productData['title'],
                'image' => $productData['image'],
                'description' => $productData['description'],
                'date' => $productData['date'],
                'client' => $productData['client'],
                'location' => $productData['location'],
                'subcategory_id' => $subcategory->id, // Associate product with a subcategory
            ]);
        }
    }
}
