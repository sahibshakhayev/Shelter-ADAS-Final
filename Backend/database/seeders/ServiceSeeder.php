<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Service;
use Illuminate\Support\Facades\Storage;


class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

















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












    public function run(): void
    {


        $services = [
            [
                'id' => 1,
                'image' => json_encode([
                    "https://plus.unsplash.com/premium_photo-1682141324963-b7e31790989a?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://plus.unsplash.com/premium_photo-1682432845383-00750294e914?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ]),
                'title' => 'Electrical and Mechanical',
                'button' => 'Book Now',
                'src' => "https://plus.unsplash.com/premium_photo-1682141324963-b7e31790989a?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'article_image' => "https://plus.unsplash.com/premium_photo-1682432845383-00750294e914?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'helpBlock' => json_encode([
                    'id' => 1,
                    'help' => 'Need Help?',
                    'button' => 'Make An Enquiry',
                    'description' => 'Find a Handyman In DC For Your Next Task',
                ]),
                'bannerImage' => 'https://images.unsplash.com/photo-1504609773096-104ff2c73ba4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                'description' => 'Lorem ipsum dolor sit amet consectetur...'
            ],
            [
                'id' => 2,
                'image' => json_encode([
                    "https://plus.unsplash.com/premium_photo-1682433292365-1a4b36c6f8b7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://plus.unsplash.com/premium_photo-1682434190434-9fa293a036bd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ]),
                'title' => 'Air Conditioning and Ventilation',
                'button' => 'Book Now',
                'src' => "https://plus.unsplash.com/premium_photo-1682433292365-1a4b36c6f8b7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'article_image' => "https://plus.unsplash.com/premium_photo-1682434190434-9fa293a036bd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'helpBlock' => json_encode([
                    'id' => 1,
                    'help' => 'Need Help?',
                    'button' => 'Make An Enquiry',
                    'description' => 'Find a Handyman In DC For Your Next Task',
                ]),
                'bannerImage' => 'https://images.unsplash.com/photo-1504609773096-104ff2c73ba4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                'description' => 'Lorem ipsum dolor sit amet consectetur...'
            ],
            [
                'id' => 3,
                'image' => json_encode([
                    "https://plus.unsplash.com/premium_photo-1682432079327-06dd9133bf7a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://plus.unsplash.com/premium_photo-1681823048910-1bd1a631f24f?q=80&w=1896&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ]),
                'title' => 'Refrigeration',
                'button' => 'Book Now',
                'src' => "https://plus.unsplash.com/premium_photo-1682432079327-06dd9133bf7a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'article_image' => "https://plus.unsplash.com/premium_photo-1681823048910-1bd1a631f24f?q=80&w=1896&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'helpBlock' => json_encode([
                    'id' => 1,
                    'help' => 'Need Help?',
                    'button' => 'Make An Enquiry',
                    'description' => 'Find a Handyman In DC For Your Next Task',
                ]),
                'bannerImage' => 'https://images.unsplash.com/photo-1504609773096-104ff2c73ba4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                'description' => 'Lorem ipsum dolor sit amet consectetur...'
            ],
            [
                'id' => 4,
                'image' => json_encode([
                    "https://plus.unsplash.com/premium_photo-1663046072348-ea50eb372224?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://plus.unsplash.com/premium_photo-1661481319039-d3094559b894?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ]),
                'title' => 'F Gas Regulation',
                'button' => 'Book Now',
                'src' => "https://plus.unsplash.com/premium_photo-1663046072348-ea50eb372224?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'article_image' => "https://plus.unsplash.com/premium_photo-1661481319039-d3094559b894?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'helpBlock' => json_encode([
                    'id' => 1,
                    'help' => 'Need Help?',
                    'button' => 'Make An Enquiry',
                    'description' => 'Find a Handyman In DC For Your Next Task',
                ]),
                'bannerImage' => 'https://images.unsplash.com/photo-1504609773096-104ff2c73ba4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                'description' => 'Lorem ipsum dolor sit amet consectetur...'
            ],
            [
                'id' => 5,
                'image' => json_encode([
                    "https://images.unsplash.com/photo-1612831197310-ff5cf7a211b6?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://images.unsplash.com/photo-1531538606174-0f90ff5dce83?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ]),
                'title' => 'Renewable Energy and Heating',
                'button' => 'Book Now',
                'src' => "https://images.unsplash.com/photo-1612831197310-ff5cf7a211b6?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'article_image' => "https://images.unsplash.com/photo-1531538606174-0f90ff5dce83?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'helpBlock' => json_encode([
                    'id' => 1,
                    'help' => 'Need Help?',
                    'button' => 'Make An Enquiry',
                    'description' => 'Find a Handyman In DC For Your Next Task',
                ]),
                'bannerImage' => 'https://images.unsplash.com/photo-1504609773096-104ff2c73ba4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                'description' => 'Lorem ipsum dolor sit amet consectetur...'
            ],
            [
                'id' => 6,
                'image' => json_encode([
                    "https://images.unsplash.com/photo-1516321497487-e288fb19713f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://plus.unsplash.com/premium_photo-1668383778557-d71c562fdb4b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ]),
                'title' => 'Electricity and Gas Metering',
                'button' => 'Book Now',
                'src' => "https://images.unsplash.com/photo-1516321497487-e288fb19713f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'article_image' => "https://plus.unsplash.com/premium_photo-1668383778557-d71c562fdb4b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'helpBlock' => json_encode([
                    'id' => 1,
                    'help' => 'Need Help?',
                    'button' => 'Make An Enquiry',
                    'description' => 'Find a Handyman In DC For Your Next Task',
                ]),
                'bannerImage' => 'https://images.unsplash.com/photo-1504609773096-104ff2c73ba4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                'description' => 'Lorem ipsum dolor sit amet consectetur...'
            ],
            [
                'id' => 7,
                'image' => json_encode([
                    "https://plus.unsplash.com/premium_photo-1663134377392-50c34664d632?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://plus.unsplash.com/premium_photo-1661767467261-4a4bed92a507?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ]),
                'title' => 'Waste Recycling',
                'button' => 'Book Now',
                'src' => "https://plus.unsplash.com/premium_photo-1663134377392-50c34664d632?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'article_image' => "https://plus.unsplash.com/premium_photo-1661767467261-4a4bed92a507?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                'helpBlock' => json_encode([
                    'id' => 1,
                    'help' => 'Need Help?',
                    'button' => 'Make An Enquiry',
                    'description' => 'Find a Handyman In DC For Your Next Task',
                ]),
                'bannerImage' => 'https://images.unsplash.com/photo-1504609773096-104ff2c73ba4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                'description' => 'Lorem ipsum dolor sit amet consectetur...'
            ]
        ];









        foreach ($services as $service) {


            $helpBlock = json_decode($service['helpBlock'], true);
            $images = json_decode($service['image'], true);

            // Extract the src and article image from the images array
            $srcImage = $images[0];           // First image as src
            $articleImage = $images[1];       // Second image as article image



            $srcUrl = $srcImage;
            $srcImageInfo = $this->downloadImage($srcUrl);
            $srcImageName = uniqid() . '.' . $srcImageInfo['extension']; // Generate unique name with correct extension
            $srcImagePath = "public/pictures/services/$srcImageName";
            Storage::put($srcImagePath, $srcImageInfo['data']);

            // Download and save the second image as article_image
            $articleImageUrl = $articleImage;
            $articleImageInfo = $this->downloadImage($articleImageUrl);
            $articleImageName = uniqid() . '.' . $articleImageInfo['extension']; // Generate unique name with correct extension
            $articleImagePath = "public/pictures/services/articles/$articleImageName";
            Storage::put($articleImagePath, $articleImageInfo['data']);



            // Save the service data to the database
            Service::create([
                'title' => $service['title'],
                'subtitle' => $helpBlock['description'], // Example subtitle
                'text-title' => $service['button'], // Example text-title
                'description' => $service['description'],
                'src' => 'storage/pictures/services/'. $srcImageName,         // Save the first image as src
                'article_image' => 'storage/pictures/services/articles/'. $articleImageName,  // Save the second image as article_image
            ]);
        }









    }
}
