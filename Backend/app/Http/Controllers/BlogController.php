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
            $blog->article_image = generateFullImageUrl($blog->article_image);
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

        $blog->image = generateFullImageUrl($blog->image);
        $blog->article_image = $blog->article_image ? generateFullImageUrl($blog->article_image) : null;

        return response()->json($blog);
    }


    // Method to create a new blog with image upload (POST)
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'subtitle' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'article_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
        ]);

        $image = $request->file('image');
        $imageUrl = uploadImage($image, 'blog');

        $articleImageUrl = null;
        if ($request->hasFile('article_image')) {
            $articleImage = $request->file('article_image');
            $articleImageUrl = uploadImage($articleImage, 'blog_article');

            $blog = Blog::create([
                'title' => $request->input('title'),
                'subtitle' => $request->input('subtitle'),
                'content' => $request->input('content'),
                'image' => $imageUrl,
                'article_image' => $articleImageUrl,
            ]);

            $blog->image = generateFullImageUrl($blog->image);
            $blog->article_image = $articleImageUrl ? generateFullImageUrl($blog -> article_image) : null;

            return response()->json($blog, 201);
        }

    }


        public
        function update(Request $request, $id)
        {
            $blog = Blog::findOrFail($id);

            $request->validate([
                'title' => 'sometimes|string|max:255',
                'subtitle' => 'sometimes|string|max:255',
                'content' => 'sometimes|string',
                'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg',
                'article_image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg',
            ]);

            $blog->update($request->except(['image', 'article_image']));

            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $imageName = uploadImage($image, 'blogs');

                if (Storage::exists('public/' . $blog->image)) {
                    Storage::delete('public/' . $blog->image);
                }

                $blog->update(['image' => $imageName]);
            }

            if ($request->hasFile('article_image')) {
                $articleImage = $request->file('article_image');
                $articleImageName = uploadImage($articleImage, 'blogs/article');


                if (Storage::exists('public/' . $blog->article_image)) {
                    Storage::delete('public/' . $blog->article_image);
                }

                $blog->update(['article_image' => $articleImageName]);
            }

            $blog->image = generateFullImageUrl($blog->image);
            $blog->article_image = $blog->article_image ? generateFullImageUrl($blog->article_image) : null;

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


        if (Storage::exists('public/' . $blog->article_image)) {
            Storage::delete('public/' . $blog->article_image);
        }
        // Delete the Blog record
        $blog->delete();

        return response()->json(null, 204);  // HTTP 204 No Content
    }





}
