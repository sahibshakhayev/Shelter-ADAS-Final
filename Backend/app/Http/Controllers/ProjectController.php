<?php
namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProjectController extends Controller
{

    public function show($id)
    {
        $project = Project::findOrFail($id);

        $project->src = generateFullImageUrl($project->src);
        $project->article_image = $project->article_image ? generateFullImageUrl($project->article_image) : null;

        return response()->json($project);
    }



    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'text' => 'required',
            'date' => 'required|date',
            'client' => 'required|string',
            'location' => 'required|string',
            'category' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'article_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $image = $request->file('image');
        $imageUrl = uploadImage($image, 'projects');

        // Handle article image upload
        $articleImageUrl = null;
        if ($request->hasFile('article_image')) {
            $articleImage = $request->file('article_image');
            $articleImageUrl = uploadImage($articleImage, 'projects/articles');
        }

        // Create a new project
        $project = Project::create([
            'title' => $request->input('title'),
            'text' => $request->input('text'),
            'date' => $request->input('date'),
            'client' => $request->input('client'),
            'location' => $request->input('location'),
            'category' => $request->input('category'),
            'src' => $imageUrl,
            'article_image' => $articleImageUrl,
        ]);

        $project->src = generateFullImageUrl($project->src);
        $project->article_image = $articleImageUrl ? generateFullImageUrl($project->article_image) : null;

        return response()->json($project, 201);
    }



    public function update(Request $request, $id)
    {
        $project = Project::findOrFail($id);

        $request->validate([
            'title' => 'sometimes|string|max:255',
            'text' => 'sometimes',
            'date' => 'sometimes|date',
            'client' => 'sometimes|string',
            'location' => 'sometimes|string',
            'category' => 'sometimes|string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'article_image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $project->update($request->except(['image', 'article_image']));

        if ($request->hasFile('image')) {
            $image = $request->file('image');

            if (Storage::exists('public/' . $project->src)) {
                Storage::delete('public/' . $project->src);
            }


            $project->update(['src' => uploadImage($image, 'projects')]);
        }

        if ($request->hasFile('article_image')) {
            $articleImage = $request->file('article_image');

            if (Storage::exists('public/' . $project->article_image)) {
                Storage::delete('public/' . $project->article_image);
            }

            $project->update(['article_image' => uploadImage($articleImage, 'projects/articles')]);
        }

        $project->src = generateFullImageUrl($project->src);
        $project->article_image = generateFullImageUrl($project->article_image);

        return response()->json($project, 200);
    }


    // Delete an existing project (DELETE)
    public function destroy($id)
    {
        $project = Project::findOrFail($id);

        // Delete the image from storage if it exists
        if (Storage::exists('public/' . $project->src)) {
            Storage::delete('public/' . $project->src);
        }

        if (Storage::exists('public/' . $project->article_image)) {
            Storage::delete('public/' . $project->article_image);
        }


        $project->delete();

        return response()->json(null, 204);  // HTTP 204 No Content
    }

    // Fetch the first 3 projects for homepage
    public function homePage()
    {
        $projects = Project::take(3)->get();

        // Ensure image URLs are returned with the full path
        foreach ($projects as $project) {
            $project->src = generateFullImageUrl($project->src);
            $project->article_image = generateFullImageUrl($project->article_image);
        }

        return response()->json($projects);
    }


    public function index(Request $request)
    {
        $search = $request->input('search');
        $query = Project::query();


        if ($search) {
            $query->where('title', 'like', "%{$search}%")
                ->orWhere('text', 'like', "%{$search}%");
        }

        $projects = $query->paginate(10);  // Pagination with 10 items per page

        // Ensure image URLs are returned with the full path
        foreach ($projects as $project) {
            $project->src = generateFullImageUrl($project->src);
            $project->article_image = generateFullImageUrl($project->article_image);
            $project->text = translate($project->text);
            $project->title = translate($project->title);
            $project->client = translate($project->client);
            $project->location = translate($project->location);
            $project->category = translate($project->category);
        }

        return response()->json($projects);
    }

    // Helper function to generate the full image URL

}
