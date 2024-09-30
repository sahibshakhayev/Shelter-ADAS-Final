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

// Update the image field to include the full URL
$service->src = request()->getSchemeAndHttpHost() . '/' . $service->src;
    $service->subtitle = translate($service->subtitle);
    $service->title = translate($service->title);
    $service->content = translate($service->content);

return response()->json($service);
}

// Create a new service with image upload (POST)
public function store(Request $request)
{
// Validate data and image
$request->validate([
'title' => 'required|string|max:255',
'subtitle' => 'required|string|max:255',
'text-title' => 'required|string',
    'description' => 'required|string',
'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Validate image file
]);

// Create a new Service entry (without the 'image' at first)


// Handle image upload

$image = $request->file('image');
$imageName = 'service_' . time() . '.' . $image->getClientOriginalExtension();
$imagePath = 'pictures/services/' . $imageName;

// Store the image in the public disk
$image->storeAs('public/' . $imagePath);

// Update the Service entry with the full image URL


    $imageUrl = 'storage/' . $imagePath;


    $service = Service::Create([


        'title' => $request->input('title'),
        'subtitle' => $request->input('subtitle'),
        'text-title' => $request->input('text-title'),
        'description' => $request->input('description'),
        'src' => $imageUrl
        ]);

$service->src = request()->getSchemeAndHttpHost() . '/' . $service->src;


return response()->json($service, 201);
}


public function update(Request $request, $id)
{
$service = Service::findOrFail($id);


$request->validate([
'title' => 'sometimes|string|max:255',
'subtitle' => 'sometimes|string|max:255',
'text-title' => 'sometimes|string',
    'description' => 'sometimes|string',
'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Optional image file
]);

// Update the Service fields (excluding image)
$service->update($request->except('image'));


if ($request->hasFile('image')) {
$image = $request->file('image');
$imageName = 'service_' . $service->id . '.' . $image->getClientOriginalExtension();
$imagePath = 'pictures/services/' . $imageName;


if (Storage::exists('public/' . $service->image)) {
Storage::delete('public/' . $service->image);
}


$image->storeAs('public/' . $imagePath);


$service->update([
'image' => 'storage/' . $imagePath,
]);
}


$service->src = request()->getSchemeAndHttpHost() . '/' . $service->src;

return response()->json($service, 200);
}



public function homePage()
{
$services = Service::take(3)->get();


foreach ($services as $service) {
$service->src = request()->getSchemeAndHttpHost() . '/' . $service->src;
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
$service->src = request()->getSchemeAndHttpHost() . '/' . $service->src;
}

return response()->json($services);
}



public function destroy($id)
{
    $service = Service::findOrFail($id);

    // Delete the image from storage if it exists
    if (Storage::exists('public/' . $service->src)) {
        Storage::delete('public/' . $service->src);
    }

    $service->delete();

    return response()->json(null, 204);  // HTTP 204 No Content
}


}

