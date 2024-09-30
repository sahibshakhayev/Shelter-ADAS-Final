<?php

namespace App\Http\Controllers;

use App\Models\Contacting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ContactingController extends Controller
{
    // Method to return data for the Home page (only the 'src')
    public function home()
    {
        $contactings = Contacting::all(['src']);  // Return only the image source

        // Ensure src URLs are returned with the full path
        foreach ($contactings as $contact) {
            $contact->src = generateFullImageUrl($contact->src);

        }

        return response()->json($contactings);
    }

    // Method to return data for the Contact page (src, name, mail)
    public function contact()
    {
        $contactings = Contacting::all(['id', 'src', 'name', 'mail']);  // Return src, name, and mail

        // Ensure src URLs are returned with the full path
        foreach ($contactings as $contact) {
            $contact->src = generateFullImageUrl($contact->src);
            $contact->name = translate($contact->name);
        }

        return response()->json($contactings);
    }

    // Create a new contact with image upload (POST)
    public function store(Request $request)
    {
        // Validate data and image
        $request->validate([
            'name' => 'required|string|max:255',
            'mail' => 'required|email',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',  // Validate image file
        ]);

        // Create a new Contacting entry (without the 'src' at first)

        // Handle image upload

            $image = $request->file('image');
            $imageName = 'contact_' . time() . '.' . $image->getClientOriginalExtension();  // Name as 'contact_id.extension'
            $imagePath = 'pictures/contactings/' . $imageName;  // Store image in a subfolder

            // Store the image in the public disk
            $image->storeAs('public/' . $imagePath);

            // Update the Contacting entry with the image path

            $imageUrl = 'storage/' . $imagePath;

        $contact =  Contacting::Create([
            'name' => $request->input('name'),
            'mail' =>$request->input('mail'),
            'src' => $imageUrl
        ]);


        // Return the full src URL
        $contact->src = generateFullImageUrl($contact->src);

        return response()->json($contact, 201);  // HTTP 201 Created
    }

    // Update an existing contact with image handling (PUT)
    public function update(Request $request, $id)
    {
        $contact = Contacting::findOrFail($id);

        // Validate data and optional image
        $request->validate([
            'name' => 'sometimes|string|max:255',
            'mail' => 'sometimes|email',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg',  // Optional image file
        ]);

        // Update contact fields (excluding image)
        $contact->update($request->except('image'));

        // Handle new image upload (if provided)
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = 'contact_' . $contact->id . '.' . $image->getClientOriginalExtension();
            $imagePath = 'pictures/contactings/' . $imageName;

            // Delete the old image if it exists
            if (Storage::exists('public/' . $contact->src)) {
                Storage::delete('public/' . $contact->src);
            }

            // Store the new image
            $image->storeAs('public/' . $imagePath);

            // Update the Contacting entry with the new image path
            $contact->update([
                'src' => 'storage/' . $imagePath,
            ]);
        }

        // Return the full src URL
        $contact->src = generateFullImageUrl($contact->src);

        return response()->json($contact, 200);
    }


    public function destroy($id)
    {
        $contact = Contacting::findOrFail($id);

        // Delete the image from storage if it exists
        if (Storage::exists('public/' . $contact->src)) {
            Storage::delete('public/' . $contact->src);
        }


        $contact->delete();

        return response()->json(null, 204);  // HTTP 204 No Content
    }



}

