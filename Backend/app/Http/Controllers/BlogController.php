<?php
namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{
    // Method to get all blogs with pagination and optional search query
    public function index(Request $request)
    {
        $query = Blog::query();

        // Check if there's a search query
        if ($request->has('search')) {
            $search = $request->input('search');
            $query->where('title', 'LIKE', "%{$search}%")
                ->orWhere('subtitle', 'LIKE', "%{$search}%")
                ->orWhere('content', 'LIKE', "%{$search}%");
        }

        // Paginate the results (10 per page)
        $blogs = $query->paginate(10);

        // Ensure image URLs are returned with the full path
        foreach ($blogs as $blog) {
            $blog->image = generateFullImageUrl($blog->image);
            $blog->title = translate($blog->title);
            $blog->subtitle = translate($blog->subtitle);
            $blog->content = translate($blog->content);
        }

        return response()->json($blogs);
    }

    // Method to get a single blog by ID
    public function show($id)
    {
        $blog = Blog::findOrFail($id);

        // Return the full image URL
        $blog->image = generateFullImageUrl($blog->image);
        $blog->title = translate($blog->title);
        $blog->subtitle = translate($blog->subtitle);
        $blog->content = translate($blog->content);
        return response()->json($blog);
    }

    // Method to create a new blog with image upload (POST)
    public function store(Request $request)
    {
        // Validate the incoming data
        $request->validate([
            'title' => 'required|string|max:255',
            'subtitle' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Ensure image is uploaded
        ]);

        // Handle image upload first
        if ($request->hasFile('image')) {
            $image = $request->file('image');

            // Generate a unique image name
            $imageName = 'blog_' . time() . '.' . $image->getClientOriginalExtension();  // Name image with timestamp to avoid conflicts
            $imagePath = 'pictures/blogs/' . $imageName;  // Store image in 'pictures/blogs' folder

            // Store the image in the 'public' disk
            $image->storeAs('public/' . $imagePath);

            // Full image URL (adjust to your environment)
            $imageUrl = 'storage/' . $imagePath;
        }

        // Now that the image has been uploaded, create the blog entry with the image URL
        $blog = Blog::create([
            'title' => $request->input('title'),
            'subtitle' => $request->input('subtitle'),
            'content' => $request->input('content'),
            'image' => $imageUrl,  // Assign the image URL from the uploaded file
        ]);

        // Ensure the full URL is returned
        $blog->image = generateFullImageUrl($blog->image);

        // Return the created blog entry with HTTP 201 status
        return response()->json($blog, 201);
    }





    public function update(Request $request, $id)
    {
        Log::info($request->all()); // Log incoming request data

        $blog = Blog::findOrFail($id);
        Log::info($request->method());


        // Validate incoming request
        $request->validate([
            'title' => 'sometimes|string|max:255',
            'subtitle' => 'sometimes|string|max:255',
            'content' => 'sometimes|string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);



        Log::info($request->all());


        // Log the values that will be updated
        Log::info('Updating blog with values:', $request->except('image'));




        // Update blog excluding the image
        $blog->update($request->except('image'));

        // Handle image update
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = 'blog_' . $blog->id . '.' . $image->getClientOriginalExtension();
            $imagePath = 'pictures/blogs/' . $imageName;

            // Delete old image if it exists
            if (Storage::exists('public/' . $blog->image)) {
                Storage::delete('public/' . $blog->image);
            }

            // Store new image
            $image->storeAs('public/' . $imagePath);

            // Update image path
            $blog->update(['image' => 'storage/' . $imagePath]);
        }

        // Reload blog to get the updated values from the database
        $blog->refresh();

        // Log updated blog details
        Log::info('Updated blog:', $blog->toArray());

        // Return the full image URL
        $blog->image = generateFullImageUrl($blog->image);

        return response()->json($blog, 200);
    }




    // Method to delete an existing blog and its image (DELETE)
    public function destroy($id)
    {
        $blog = Blog::findOrFail($id);

        // Delete the image from storage if it exists
        if (Storage::exists('public/' . $blog->image)) {
            Storage::delete('public/' . $blog->image);
        }

        // Delete the Blog record
        $blog->delete();

        return response()->json(null, 204);  // HTTP 204 No Content
    }





}
