<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Blog;



class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Blog::create([
            'title' => 'First Blog Post',
            'subtitle' => 'Introduction to our company',
            'content' => 'This is the content of the first blog post.',
            'image' => 'storage/pictures/blog/28.png',
        ]);

        Blog::create([
            'title' => 'Second Blog Post',
            'subtitle' => 'New services available',
            'content' => 'This is the content of the second blog post.',
            'image' => 'storage/pictures/blog/29.png',
        ]);
    }
}
