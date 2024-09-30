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
        $project->text = translate($project->text);
        $project->title = translate($project->title);
        $project->client = translate($project->client);
        $project->location = translate($project->location);
        $project->category = translate($project->category);

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
        ]);






            $image = $request->file('image');
            $imageName = 'project_' . time() . '.' . $image->getClientOriginalExtension();
            $imagePath = 'pictures/projects/' . $imageName;


            $image->storeAs('public/' . $imagePath);


            $imageUrl = 'storage/' . $imagePath;


            $project = Project::Create([


                'title' => $request->input('title'),
                'text' => $request->input('text'),
                'date' => $request->input('date'),
                'client' => $request->input('client'),
                'location' => $request->input('location'),
                'category' => $request->input('category'),
                'src' => $imageUrl



            ]);



            $project->src = generateFullImageUrl($project->src);


        return response()->json($project, 201);
    }


    public function update(Request $request, $id)
    {
        $project = Project::findOrFail($id);


        $request->validate([
            'title' => 'string|max:255',
            'text' => 'string',
            'date' => 'date',
            'client' => 'string',
            'location' => 'string',
            'category' => 'string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);


        $project->update($request->except('src'));


        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = 'project_' . $project->id . '.' . $image->getClientOriginalExtension();
            $imagePath = 'pictures/projects/' . $imageName;


            if (Storage::exists('public/' . $project->src)) {
                Storage::delete('public/' . $project->src);
            }


            $image->storeAs('public/' . $imagePath);


            $project->update([
                'src' => 'storage/' . $imagePath,
            ]);
        }

        // Return the full image URL
        $project->src = generateFullImageUrl($project->src);

        return response()->json($project, 200);  // HTTP 200 OK
    }

    // Delete an existing project (DELETE)
    public function destroy($id)
    {
        $project = Project::findOrFail($id);

        // Delete the image from storage if it exists
        if (Storage::exists('public/' . $project->src)) {
            Storage::delete('public/' . $project->src);
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
