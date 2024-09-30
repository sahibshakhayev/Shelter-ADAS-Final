<?php
namespace App\Http\Controllers;

use App\Models\Partner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PartnerController extends Controller
{
    // Fetch all partners and return their details (logo_src, alt_text, website_link)
    public function index()
    {
        $partners = Partner::all();

        // Ensure logo_src URLs are returned with the full path
        foreach ($partners as $partner) {
            $partner->logo_src = generateFullImageUrl($partner->logo_src);
        }

        return response()->json($partners);
    }

    // Create a new partner with logo upload (POST)
    public function store(Request $request)
    {
        // Validate data and image
        $request->validate([
            'alt_text' => 'required|string|max:255',
            'website_link' => 'required|string',
            'logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Validate image file
        ]);

        // Create a new Partner entry (without the 'logo_src' at first)


        // Handle image upload
            $image = $request->file('logo');
            $imageName = 'partner_' . time() . '.' . $image->getClientOriginalExtension();
            $imagePath = 'pictures/partners/' . $imageName;

            // Store the image in the public disk
            $image->storeAs('public/' . $imagePath);

            // Update the Partner entry with the image path

        $imageUrl = 'storage/' . $imagePath;

        $partner =  Partner::Create([
            'alt_text' => $request->input('alt_text'),
            'website_link' =>$request->input('website_link'),
            'logo_src' => $imageUrl
        ]);


            // Return the full logo_src URL
            $partner->logo_src = generateFullImageUrl($partner->logo_src);


        return response()->json($partner, 201);  // HTTP 201 Created
    }

    // Update an existing partner with logo upload (PUT)
    public function update(Request $request, $id)
    {
        $partner = Partner::findOrFail($id);

        // Validate data and optional image
        $request->validate([
            'alt_text' => 'sometimes|string|max:255',
            'website_link' => 'sometimes|string',
            'logo' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Optional image file
        ]);

        // Update the Partner fields (excluding logo)
        $partner->update($request->except('logo'));

        // Handle new logo upload (if provided)
        if ($request->hasFile('logo')) {
            $image = $request->file('logo');
            $imageName = 'partner_' . $partner->id . '.' . $image->getClientOriginalExtension();
            $imagePath = 'pictures/partners/' . $imageName;

            // Delete the old logo image if it exists
            if (Storage::exists('public/' . $partner->logo_src)) {
                Storage::delete('public/' . $partner->logo_src);
            }

            // Store the new image
            $image->storeAs('public/' . $imagePath);

            // Update the Partner entry with the new logo path
            $partner->update([
                'logo_src' => 'storage/' . $imagePath,
            ]);
        }

        // Return the full logo_src URL
        $partner->logo_src = generateFullImageUrl($partner->logo_src);

        return response()->json($partner, 200);  // HTTP 200 OK
    }

    // Delete an existing partner (DELETE)
    public function destroy($id)
    {
        $partner = Partner::findOrFail($id);

        // Delete the logo from storage if it exists
        if (Storage::exists('public/' . $partner->logo_src)) {
            Storage::delete('public/' . $partner->logo_src);
        }

        $partner->delete();

        return response()->json(null, 204);  // HTTP 204 No Content
    }

    // Helper function to generate the full image URL

}
