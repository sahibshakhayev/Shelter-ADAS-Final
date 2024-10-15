<?php

namespace Database\Seeders;


use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class BlogsSeeder extends Seeder
{
    public function run()
    {
        $blogs = [
            [
                'id' => 6,
                'title' => 'Electrical and Mechanical',
                'subtitle' => 'New York, USA',
                'content' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'image' => 'storage/pictures/blogs/blog_1727787513.jpg',
                'article_image' => 'storage/pictures/blogs/articles/article_1727787513.jpg',
                'created_at' => '2024-10-01 08:58:33',
                'updated_at' => '2024-10-01 09:01:48',
            ],
            [
                'id' => 7,
                'title' => 'Air Conditioning and Ventilation',
                'subtitle' => 'New York, USA',
                'content' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'image' => 'storage/pictures/blogs/blog_1727788077.jpg',
                'article_image' => 'storage/pictures/blogs/articles/article_1727788077.jpg',
                'created_at' => '2024-10-01 09:07:57',
                'updated_at' => '2024-10-01 09:07:57',
            ],
            [
                'id' => 8,
                'title' => 'Refrigeration',
                'subtitle' => 'New York, USA',
                'content' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'image' => 'storage/pictures/blogs/blog_1727801300.jpg',
                'article_image' => 'storage/pictures/blogs/articles/article_1727801301.jpg',
                'created_at' => '2024-10-01 12:48:21',
                'updated_at' => '2024-10-01 12:48:21',
            ],
            [
                'id' => 9,
                'title' => 'F Gas Regulation',
                'subtitle' => 'New York, USA',
                'content' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'image' => 'storage/pictures/blogs/blog_1727801656.jpg',
                'article_image' => 'storage/pictures/blogs/articles/article_1727801656.jpeg',
                'created_at' => '2024-10-01 12:54:16',
                'updated_at' => '2024-10-01 12:54:16',
            ],
            [
                'id' => 10,
                'title' => 'Renewable Energy and Heating',
                'subtitle' => 'New York, USA',
                'content' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'image' => 'storage/pictures/blogs/blog_1727802237.jpg',
                'article_image' => 'storage/pictures/blogs/articles/article_1727802237.jpg',
                'created_at' => '2024-10-01 13:03:57',
                'updated_at' => '2024-10-01 13:03:57',
            ],
            [
                'id' => 11,
                'title' => 'Electricity and Gas Metering',
                'subtitle' => 'New York, USA',
                'content' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'image' => 'storage/pictures/blogs/blog_1727813617.jpg',
                'article_image' => 'storage/pictures/blogs/articles/article_1727813617.jpg',
                'created_at' => '2024-10-01 16:13:37',
                'updated_at' => '2024-10-01 16:13:37',
            ],
            [
                'id' => 12,
                'title' => 'Waste Recycling',
                'subtitle' => 'New York, USA',
                'content' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi voluptatem eaque fugit rerum ea hic facere sit veniam rem voluptatibus, unde quod quia quidem ipsam possimus iusto excepturi atque similique necessitatibus soluta officiis esse? In dolores, incidunt odio minima blanditiis nam sapiente mollitia aspernatur iure illo, nisi quos ab fugit rem dolorem iste aliquid! Blanditiis impedit vitae minima repudiandae vero. Consequuntur, asperiores soluta nam, optio repudiandae tenetur porro facilis excepturi sed quidem aspernatur consectetur inventore non laboriosam rerum, tempore nobis! Rem sapiente excepturi, fuga qui quos incidunt! Suscipit veniam debitis, inventore omnis tempora voluptates at quia, exercitationem vero quod ab.',
                'image' => 'storage/pictures/blogs/blog_1727813783.jpg',
                'article_image' => 'storage/pictures/blogs/articles/article_1727813785.jpg',
                'created_at' => '2024-10-01 16:16:25',
                'updated_at' => '2024-10-01 16:16:25',
            ],
        ];

        DB::table('blogs')->insert($blogs);
    }
}
