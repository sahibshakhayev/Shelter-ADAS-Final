<?php
namespace App\Http\Controllers;


use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ServiceController extends Controller
{
// Fetch a specific service by ID
    public function show($id)
    {
        $service = Service::findOrFail($id);

        // Return full URLs for both image and article_image
        $service->src =generateFullImageUrl($service->src);
        $service->article_image = $service->article_image ? generateFullImageUrl($service->article_image) : null;

        // Translate fields
        $service->subtitle = translate($service->subtitle);
        $service->title = translate($service->title);
        $service->content = translate($service->content);

        return response()->json($service);
    }


// Create a new service with image upload (POST)
    public function store(Request $request)
    {
        // Validate input data, including article_image
        $request->validate([
            'title' => 'required|string|max:255',
            'subtitle' => 'required|string|max:255',
            'text-title' => 'required|string',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'article_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Optional article image
        ]);

        // Handle image upload
        $image = $request->file('image');

        $imageUrl = uploadImage($image,'services');

        // Handle optional article image upload
        $articleImageUrl = null;
        if ($request->hasFile('article_image')) {
            $articleImage = $request->file('article_image');
            $articleImageUrl = uploadImage($articleImage,'services/articles');
        }

        // Create the service entry
        $service = Service::create([
            'title' => $request->input('title'),
            'subtitle' => $request->input('subtitle'),
            'text-title' => $request->input('text-title'),
            'description' => $request->input('description'),
            'src' => $imageUrl,
            'article_image' => $articleImageUrl,  // Add article image URL
        ]);

        // Return the full URLs for both image and article_image
        $service->src =generateFullImageUrl($service->src);
        $service->article_image = $service->article_image ? generateFullImageUrl($service->article_image) : null;

        return response()->json($service, 201);
    }



    public function update(Request $request, $id)
    {
        $service = Service::findOrFail($id);

        // Validate input data, including article_image
        $request->validate([
            'title' => 'sometimes|string|max:255',
            'subtitle' => 'sometimes|string|max:255',
            'text-title' => 'sometimes|string',
            'description' => 'sometimes|string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'article_image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Optional article image
        ]);

        // Update the service fields excluding the images
        $service->update($request->except(['image', 'article_image']));

        // Handle image update
        if ($request->hasFile('image')) {
            $image = $request->file('image');

            $imageUrl = uploadImage($image,'services');

            // Delete old image if exists
            if (Storage::exists('public/' . $service->src)) {
                Storage::delete('public/' . $service->src);
            }

            // Store new image

            $service->update(['src' => $imageUrl]);
        }

        // Handle article_image update
        if ($request->hasFile('article_image')) {
            $articleImage = $request->file('article_image');
            $articleImageUrl = uploadImage($articleImage,'services/articles');

            // Delete old article image if exists
            if (Storage::exists('public/' . $service->article_image)) {
                Storage::delete('public/' . $service->article_image);
            }


            $service->update(['article_image' => $articleImageUrl]);
        }

        $service->src =generateFullImageUrl($service->src);
        $service->article_image = $service->article_image ? generateFullImageUrl($service->article_image) : null;

        return response()->json($service, 200);
    }




    public function homePage()
    {
        $services = Service::take(3)->get();

        foreach ($services as $service) {
            $service->src =generateFullImageUrl($service->src);
            $service->article_image = $service->article_image ? generateFullImageUrl($service->article_image) : null;
            $service->title = translate($service->title);
        }

        return response()->json($services);
    }


    public function index(Request $request)
    {
        $search = $request->input('search');
        $query = Service::query();

        if ($search) {
            $query->where('title', 'like', "%{$search}%")
                ->orWhere('subtitle', 'like', "%{$search}%")
                ->orWhere('description', 'like', "%{$search}%");
        }

        $services = $query->paginate(4);

        foreach ($services as $service) {
            $service->src =generateFullImageUrl($service->src);
            $service->article_image = $service->article_image ? generateFullImageUrl($service->article_image) : null;
            $service->subtitle = translate($service->subtitle);
            $service->title = translate($service->title);
            $service->content = translate($service->content);
        }

        return response()->json($services);
    }




    public function destroy($id)
    {
        $service = Service::findOrFail($id);

        // Delete the image and article image from storage if they exist
        if (Storage::exists('public/' . $service->src)) {
            Storage::delete('public/' . $service->src);
        }

        if (Storage::exists('public/' . $service->article_image)) {
            Storage::delete('public/' . $service->article_image);
        }

        $service->delete();

        return response()->json(null, 204);  // HTTP 204 No Content
    }



}

