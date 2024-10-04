<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Storage;
use App\Models\Project;

class ProjectSeeder extends Seeder
{
    function downloadImage($url)
    {
        // Initialize curl
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // Disable SSL verification
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_HEADER, true); // To include headers in the response
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true); // Follow redirects if necessary

        // Execute curl and get the response
        $response = curl_exec($ch);

        // Get header size
        $headerSize = curl_getinfo($ch, CURLINFO_HEADER_SIZE);

        // Separate header and body
        $header = substr($response, 0, $headerSize);
        $body = substr($response, $headerSize);

        // Extract content type from header
        $contentType = curl_getinfo($ch, CURLINFO_CONTENT_TYPE);

        // Close curl
        curl_close($ch);

        // Get the appropriate file extension based on content type
        $extension = $this->getExtensionFromContentType($contentType);

        // Return both image content and the determined file extension
        return ['data' => $body, 'extension' => $extension];
    }

    function getExtensionFromContentType($contentType)
    {
        // Map of common content types to file extensions
        $map = [
            'image/jpeg' => 'jpg',
            'image/png' => 'png',
            'image/gif' => 'gif',
            'image/webp' => 'webp',
            'image/bmp' => 'bmp',
        ];

        // Return the correct extension or default to 'jpg'
        return isset($map[$contentType]) ? $map[$contentType] : 'jpg';
    }








    public function run()
    {


        // Ensure the directory exists
        Storage::makeDirectory('public/pictures/projects');

        // List of projects and their data
        $projects = [
            [
                'title' => 'Electrical and Mechanical',
                'text' => 'Lorem ipsum dolor sit amet consectetur...',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'images' => [
                    'https://plus.unsplash.com/premium_photo-1661290256778-3b821d52c514?fm=jpg&q=60&w=3000',
                    'https://plus.unsplash.com/premium_photo-1661963571550-8a06ba7ded7d?q=80&w=2070',
                ],
            ],
            [
                'title' => 'Air Conditioning and Ventilation',
                'text' => 'Lorem ipsum dolor sit amet consectetur...',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'images' => [
                    'https://plus.unsplash.com/premium_photo-1661573047005-36f3c40bec8f?fm=jpg&q=60&w=3000',
                    'https://plus.unsplash.com/premium_photo-1661288574208-bb062bdd7e98?q=80&w=2070',
                ],
            ],
            [
                'title' => 'Plumbing and Water Engineering',
                'text' => 'Lorem ipsum dolor sit amet consectetur...',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'images' => [
                    'https://plus.unsplash.com/premium_photo-1661496312684-2bb012f3177e?fm=jpg&q=60&w=3000',
                    'https://plus.unsplash.com/premium_photo-1661573920849-4b80d9cc21cf?q=80&w=2070',
                ],
            ],
            [
                'title' => 'IT and Data Networking',
                'text' => 'Lorem ipsum dolor sit amet consectetur...',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'images' => [
                    'https://plus.unsplash.com/premium_photo-1661292777402-f22c66c7ac07?fm=jpg&q=60&w=3000',
                    'https://plus.unsplash.com/premium_photo-1661963816305-2a93b4a35173?q=80&w=2070',
                ],
            ],
            [
                'title' => 'Fire Fighting',
                'text' => 'Lorem ipsum dolor sit amet consectetur...',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'images' => [
                    'https://plus.unsplash.com/premium_photo-1661574167979-b8c1e62a6692?fm=jpg&q=60&w=3000',
                    'https://plus.unsplash.com/premium_photo-1661964050494-7bc62be96496?q=80&w=2070',
                ],
            ],
            [
                'title' => 'Security and CCTV',
                'text' => 'Lorem ipsum dolor sit amet consectetur...',
                'date' => '2021-09-15',
                'client' => 'Industrial Company',
                'location' => 'New York, USA',
                'category' => 'home protection',
                'images' => [
                    'https://plus.unsplash.com/premium_photo-1661574672254-eaa2b3d30c50?fm=jpg&q=60&w=3000',
                    'https://plus.unsplash.com/premium_photo-1661964258431-d3bb033bd918?q=80&w=2070',
                ],
            ],
        ];



        foreach ($projects as $project) {
            $srcUrl = $project['images'][0];
            $srcImageInfo = $this->downloadImage($srcUrl);
            $srcImageName = uniqid() . '.' . $srcImageInfo['extension']; // Generate unique name with correct extension
            $srcImagePath = "public/pictures/projects/$srcImageName";
            Storage::put($srcImagePath, $srcImageInfo['data']);

            // Download and save the second image as article_image
            $articleImageUrl = $project['images'][1];
            $articleImageInfo = $this->downloadImage($articleImageUrl);
            $articleImageName = uniqid() . '.' . $articleImageInfo['extension']; // Generate unique name with correct extension
            $articleImagePath = "public/pictures/projects/articles/$articleImageName";
            Storage::put($articleImagePath, $articleImageInfo['data']);





            // Insert project into the database
            Project::create([
                'title' => $project['title'],
                'text' => $project['text'],
                'date' => $project['date'],
                'client' => $project['client'],
                'location' => $project['location'],
                'category' => $project['category'],
                'src' => 'storage/pictures/projects/'. $srcImageName,         // Save the first image as src
                'article_image' => 'storage/pictures/projects/articles/'. $articleImagePath,  // Save the second image as article_image
            ]);
        }
    }
}
