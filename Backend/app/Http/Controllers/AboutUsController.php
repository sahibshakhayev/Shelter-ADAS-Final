<?php
namespace App\Http\Controllers;

use App\Models\AboutUs;
use App\Models\Subbrand;
use App\Models\BrandValue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AboutUsController extends Controller
{
    // Fetch the data for the home page about us section
    public function homePageAboutUs()
    {
        $aboutUs = AboutUs::with('subbrands')
            ->first();

        // Ensure left_image and subbrand logos return full URLs
        $aboutUs->left_image = generateFullImageUrl($aboutUs->left_image);
        foreach ($aboutUs->subbrands as $subbrand) {
            $subbrand->logo = generateFullImageUrl($subbrand->logo);
        }

        return response()->json([
            'left_image' => $aboutUs->left_image,
            'image_alt' => $aboutUs->image_alt,
            'header_text' => translate($aboutUs->header_text),
            'short_description' => translate($aboutUs->short_description),
            'subbrands' => $aboutUs->subbrands
        ]);
    }

    // Fetch the full about us page data
    public function aboutUsPage()
    {
        $aboutUs = AboutUs::with('subbrands', 'brandValues')->first();

        // Ensure full URLs for images
        $aboutUs->left_image = generateFullImageUrl($aboutUs->left_image);
        foreach ($aboutUs->subbrands as $subbrand) {
            $subbrand->logo = generateFullImageUrl($subbrand->logo);
        }
        foreach ($aboutUs->brandValues as $brandValue) {
            $brandValue->icon = generateFullImageUrl($brandValue->icon);
        }

        $aboutUs->header_text = translate($aboutUs->header_text);
        $aboutUs->short_description = translate($aboutUs->short_description);
        $aboutUs->long_description = translate($aboutUs->long_description);

        return response()->json($aboutUs);
    }

    // Create a new AboutUs entry with image upload (POST)
    public function store(Request $request)
    {
        // Validate request data including images
        $validatedData = $request->validate([
            'header_text' => 'required|string|max:255',
            'short_description' => 'required|string',
            'long_description' => 'nullable|string',
            'left_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'image_alt' => 'nullable|string|max:255',
        ]);

        // Handle the main image upload for AboutUs
        if ($request->hasFile('left_image')) {
            $image = $request->file('left_image');
            $imagePath = uploadImage($image, 'about_us');
            $validatedData['left_image'] = $imagePath;
        }


        $aboutUs = AboutUs::create($validatedData);



        $aboutUs->left_image = generateFullImageUrl($aboutUs->left_image);
        return response()->json($aboutUs, 201);
    }

    // ********** Update AboutUs with Subbrands and Brand Values **********
    public function update(Request $request, $id)
    {
        $aboutUs = AboutUs::findOrFail($id);

        // Validate request data including optional images
        $validatedData = $request->validate([
            'header_text' => 'sometimes|string|max:255',
            'short_description' => 'sometimes|string',
            'long_description' => 'nullable|string',
            'left_image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg',
            'image_alt' => 'nullable|string|max:255',
        ]);

        $aboutUs->update($request->except('left_image'));

        // Handle the image upload if provided
        if ($request->hasFile('left_image')) {
            // Delete the old image if it exists
            if ($aboutUs->left_image) {
                Storage::delete('public/' . $aboutUs->left_image);
            }
            // Upload new image
            $aboutUs->update(['left_image' => uploadImage($request->file('left_image'), 'about_us')]);
        }



        // Update the main AboutUs data


        $aboutUs->left_image = generateFullImageUrl($aboutUs->left_image);


        return response()->json($aboutUs);
    }
    // ********** Delete AboutUs with Subbrands and Brand Values **********
    public function destroy($id)
    {
        $aboutUs = AboutUs::with('subbrands', 'brandValues')->findOrFail($id);

        // Delete associated images for subbrands and brand values
        foreach ($aboutUs->subbrands as $subbrand) {
            if ($subbrand->logo) {
                Storage::delete('public/' . $subbrand->logo);
            }
            $subbrand->delete();
        }

        foreach ($aboutUs->brandValues as $brandValue) {
            if ($brandValue->icon) {
                Storage::delete('public/' . $brandValue->icon);
            }
            $brandValue->delete();
        }

        // Delete main image of AboutUs
        if ($aboutUs->left_image) {
            Storage::delete('public/' . $aboutUs->left_image);
        }

        // Finally, delete the AboutUs record itself
        $aboutUs->delete();

        return response()->json(['message' => 'About Us entry deleted successfully.']);
    }

    // ********** Helper Method to Upload Images **********


    // ********** Subbrands Endpoints **********

    // Create a new subbrand with logo image upload
    public function subbrandStore(Request $request,$aboutUsId)
    {
        $request->validate([
            'logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg', // Validate logo image
            'logo_alt' => 'required|string|max:255',
        ]);

        $aboutUs = AboutUs::findOrFail($aboutUsId);

        // Handle logo image upload
        if ($request->hasFile('logo')) {
            $logo = $request->file('logo');
            $logoPath = uploadImage($logo, 'subbrands');

            // Create the subbrand with the logo path
            $subbrand = $aboutUs->subbrands()->create([
                'logo' => $logoPath,
                'logo_alt' => $request->input('logo_alt'),
            ]);

            // Return the full logo URL
            $subbrand->logo = generateFullImageUrl($subbrand->logo);

            return response()->json($subbrand, 201);
        }

        return response()->json(['message' => 'Logo image is required'], 400);
    }



    public function subbrandUpdate(Request $request,$id)
    {
        $request->validate([
            'logo' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg', // Validate logo image
            'logo_alt' => 'sometimes|string|max:255'
        ]);

        $subbrand = Subbrand::query()->where('id',$id)->first();

        // Handle logo image upload
        if ($request->hasFile('logo')) {
            $logo = $request->file('logo');


                Storage::delete('public/' . $subbrand->logo);



            $logoPath = uploadImage($logo, 'subbrands');

            // Create the subbrand with the logo path
            $subbrand -> update([
                'logo' => $logoPath,
                'logo_alt' => $request->input('logo_alt'),
            ]);

            // Return the full logo URL
            $subbrand->logo = generateFullImageUrl($subbrand->logo);

            return response()->json($subbrand, 201);
        }

        $subbrand->update($request->except('logo'));
        return response()->json($subbrand, 201);
    }


    public function destroySubbrand($id)
    {
        $subbrand = Subbrand::query()->where('id',$id)->first();

        // Delete associated images for subbrands and brand values

            if ($subbrand->logo) {
                Storage::delete('public/' . $subbrand->logo);
            }
            $subbrand->delete();


        return response()->json(null,204);
    }


    public function brandValueStore(Request $request,$aboutUsId)
    {
        $request->validate([
            'icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg', // Validate logo image
            'title' => 'required|string|max:255',
            'description' => 'required|string'
        ]);

        $aboutUs = AboutUs::findOrFail($aboutUsId);

        // Handle logo image upload
        if ($request->hasFile('icon')) {
            $icon = $request->file('icon');
            $iconPath = uploadImage($icon, 'brandvalues');

            // Create the subbrand with the logo path
            $brandvalue = $aboutUs->brandValues()->create([
                'icon' => $iconPath,
                'title' => $request->input('title'),
                'description' => $request->input('description')
            ]);

            // Return the full logo URL
            $brandvalue->icon = generateFullImageUrl($brandvalue->icon);

            return response()->json($brandvalue, 201);
        }

        return response()->json(['message' => 'Logo image is required'], 400);
    }



    public function brandValueUpdate(Request $request,$id)
    {
        $request->validate([
            'icon' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg', // Validate logo image
            'title' => 'sometimes|string|max:255',
            'description' => 'sometimes|string'
        ]);

        $brandValue = BrandValue::query()->where('id',$id)->first();

        $brandValue->update($request->except('icon'));

        // Handle logo image upload
        if ($request->hasFile('icon')) {
            $icon = $request->file('icon');


            Storage::delete('public/' . $brandValue->icon);


            $iconPath = uploadImage($icon, 'brandvalues');

            // Create the subbrand with the logo path


            // Return the full logo URL
            $brandValue->icon = generateFullImageUrl($brandValue->icon);


            $brandValue->update([
                'icon' => $iconPath,
                'title' => $request->input('title'),
                'description' => $request->input('description')
            ]);

        }

            return response()->json($brandValue, 201);


    }


    public function brandValueDestroy($id)
    {
        $brandvalue = BrandValue::query()->where('id',$id)->first();

        // Delete associated images for subbrands and brand values

        if ($brandvalue->icon) {
            Storage::delete('public/' . $brandvalue->icon);
        }

        $brandvalue->delete();


        return response()->json(null,204);
    }



}
