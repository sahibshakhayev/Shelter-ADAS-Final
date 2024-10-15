<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ProjectsSeeder extends Seeder
{
    public function run()
    {
        DB::table('projects')->insert([
            [
                'title' => 'Electrical and Mechanical',
                'text' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'src' => 'storage/pictures/projects/66fe4bfc258c9.jpg',
                'article_image' => 'storage/pictures/projects/articles/article_56.jpg',
                'created_at' => Carbon::parse('2024-10-03 03:47:08'),
                'updated_at' => Carbon::parse('2024-10-03 04:01:17'),
            ],
            [
                'title' => 'Air Conditioning and Ventilation',
                'text' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'src' => 'storage/pictures/projects/66fe4bfd544ae.jpg',
                'article_image' => 'storage/pictures/projects/articles/article_57.jpg',
                'created_at' => Carbon::parse('2024-10-03 03:47:09'),
                'updated_at' => Carbon::parse('2024-10-03 04:01:49'),
            ],
            [
                'title' => 'Plumbing and Water Engineering',
                'text' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'src' => 'storage/pictures/projects/project_58.jpg',
                'article_image' => 'storage/pictures/projects/articles/article_58.jpg',
                'created_at' => Carbon::parse('2024-10-03 03:47:11'),
                'updated_at' => Carbon::parse('2024-10-03 04:02:00'),
            ],
            [
                'title' => 'IT and Data Networking',
                'text' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'src' => 'storage/pictures/projects/project_59.jpg',
                'article_image' => 'storage/pictures/projects/articles/article_59.jpg',
                'created_at' => Carbon::parse('2024-10-03 03:47:13'),
                'updated_at' => Carbon::parse('2024-10-03 04:02:13'),
            ],
            [
                'title' => 'Fire Fighting',
                'text' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'src' => 'storage/pictures/projects/project_60.jpg',
                'article_image' => 'storage/pictures/projects/articles/article_60.jpg',
                'created_at' => Carbon::parse('2024-10-03 03:47:15'),
                'updated_at' => Carbon::parse('2024-10-03 04:02:27'),
            ],
            [
                'title' => 'Security and CCTV',
                'text' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'src' => 'storage/pictures/projects/project_61.jpg',
                'article_image' => 'storage/pictures/projects/articles/article_61.jpg',
                'created_at' => Carbon::parse('2024-10-03 03:47:17'),
                'updated_at' => Carbon::parse('2024-10-03 04:02:39'),
            ],
        ]);
    }
}
