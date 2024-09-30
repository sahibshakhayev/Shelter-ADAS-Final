<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Project;


class ProjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Project::create([
            'title' => 'Project One',
            'text' => 'This is the first project description.',
            'src' => 'storage/pictures/projects/av.jpg',
            'client' => 'Client One',
            'date' => '2024-01-01',
            'location' => 'Location One',
            'category' => 'Category One',
        ]);

        Project::create([
            'title' => 'Project Two',
            'text' => 'This is the second project description.',
            'src' => 'storage/pictures/projects/em.jpg',
            'client' => 'Client Two',
            'date' => '2024-02-01',
            'location' => 'Location Two',
            'category' => 'Category Two',
        ]);
    }
}
