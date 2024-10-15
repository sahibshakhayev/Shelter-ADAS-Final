<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class StaticTextsSeeder extends Seeder
{
    public function run()
    {
        DB::table('static_texts')->insert([
            [
                'key' => 'search',
                'text' => 'Search',
                'created_at' => Carbon::parse('2024-09-27 06:12:27'),
                'updated_at' => Carbon::parse('2024-09-27 09:12:06'),
            ],
            [
                'key' => 'shelter',
                'text' => 'Shelter',
                'created_at' => Carbon::parse('2024-10-03 07:29:31'),
                'updated_at' => Carbon::parse('2024-10-03 07:29:31'),
            ],
            [
                'key' => 'back-to-home',
                'text' => 'Back to home',
                'created_at' => Carbon::parse('2024-10-03 07:31:54'),
                'updated_at' => Carbon::parse('2024-10-03 07:31:54'),
            ],
            [
                'key' => '404-subtitle',
                'text' => 'Page Not Found',
                'created_at' => Carbon::parse('2024-10-03 07:32:29'),
                'updated_at' => Carbon::parse('2024-10-03 07:32:29'),
            ],
            [
                'key' => '404-desc',
                'text' => 'Sorry, we couldn’t find the page you’re looking for',
                'created_at' => Carbon::parse('2024-10-03 07:32:59'),
                'updated_at' => Carbon::parse('2024-10-03 07:32:59'),
            ],
            [
                'key' => 'follow-us',
                'text' => 'Follow Us',
                'created_at' => Carbon::parse('2024-10-03 07:35:13'),
                'updated_at' => Carbon::parse('2024-10-03 07:35:13'),
            ],
            [
                'key' => 'bt-make-an-enquiry',
                'text' => 'Make An Enquiry',
                'created_at' => Carbon::parse('2024-10-03 07:36:44'),
                'updated_at' => Carbon::parse('2024-10-03 07:36:44'),
            ],
            [
                'key' => 'meet-team',
                'text' => 'MEET OUR BEST TEAM',
                'created_at' => Carbon::parse('2024-10-03 07:38:59'),
                'updated_at' => Carbon::parse('2024-10-03 07:38:59'),
            ],
            [
                'key' => 'our-partner',
                'text' => 'Our Partner',
                'created_at' => Carbon::parse('2024-10-03 07:39:48'),
                'updated_at' => Carbon::parse('2024-10-03 07:39:48'),
            ],
            [
                'key' => 'bt-shedule-a-service',
                'text' => 'Schedule a Service',
                'created_at' => Carbon::parse('2024-10-03 07:40:37'),
                'updated_at' => Carbon::parse('2024-10-03 07:40:37'),
            ],
            [
                'key' => 'home-banner-text',
                'text' => 'You will be satisfy with our work contact us today & help is on the way',
                'created_at' => Carbon::parse('2024-10-03 07:41:07'),
                'updated_at' => Carbon::parse('2024-10-03 07:41:07'),
            ],
            [
                'key' => 'bt-book-now',
                'text' => 'Book Now',
                'created_at' => Carbon::parse('2024-10-03 07:42:00'),
                'updated_at' => Carbon::parse('2024-10-03 07:42:00'),
            ],
            [
                'key' => 'link-view-all-blogs',
                'text' => 'View All Blogs',
                'created_at' => Carbon::parse('2024-10-03 07:43:30'),
                'updated_at' => Carbon::parse('2024-10-03 07:43:30'),
            ],
            [
                'key' => 'bn-blog',
                'text' => 'Blog',
                'created_at' => Carbon::parse('2024-10-03 07:44:00'),
                'updated_at' => Carbon::parse('2024-10-03 07:44:00'),
            ],
            [
                'key' => 'link-see-more',
                'text' => 'See More',
                'created_at' => Carbon::parse('2024-10-03 07:44:40'),
                'updated_at' => Carbon::parse('2024-10-03 07:44:40'),
            ],
            [
                'key' => 'link-view-all-projects',
                'text' => 'View All Projects',
                'created_at' => Carbon::parse('2024-10-03 07:46:44'),
                'updated_at' => Carbon::parse('2024-10-03 07:46:44'),
            ],
            [
                'key' => 'help',
                'text' => 'Need Help?',
                'created_at' => Carbon::parse('2024-10-03 07:47:21'),
                'updated_at' => Carbon::parse('2024-10-03 07:47:21'),
            ],
            [
                'key' => 'link-view-all-services',
                'text' => 'View All Services',
                'created_at' => Carbon::parse('2024-10-03 07:50:01'),
                'updated_at' => Carbon::parse('2024-10-03 07:50:01'),
            ],
            [
                'key' => 'client',
                'text' => 'Client',
                'created_at' => Carbon::parse('2024-10-03 07:50:53'),
                'updated_at' => Carbon::parse('2024-10-03 07:50:53'),
            ],
            [
                'key' => 'category',
                'text' => 'Category',
                'created_at' => Carbon::parse('2024-10-03 07:51:14'),
                'updated_at' => Carbon::parse('2024-10-03 07:51:14'),
            ],
            [
                'key' => 'location',
                'text' => 'Location',
                'created_at' => Carbon::parse('2024-10-03 07:51:43'),
                'updated_at' => Carbon::parse('2024-10-03 07:51:43'),
            ],
            [
                'key' => 'date',
                'text' => 'Date',
                'created_at' => Carbon::parse('2024-10-03 07:52:33'),
                'updated_at' => Carbon::parse('2024-10-03 07:52:33'),
            ],
        ]);
    }
}
