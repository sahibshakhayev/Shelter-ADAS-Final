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
        $aboutUs = AboutUs::with('subbrands:id,about_us_id,logo,logo_alt')
            ->select('left_image', 'image_alt', 'header_text', 'short_description')
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
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image_alt' => 'nullable|string|max:255',
            'subbrands' => 'nullable|array',
            'subbrands.*.logo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'subbrands.*.logo_alt' => 'nullable|string|max:255',
            'brand_values' => 'nullable|array',
            'brand_values.*.icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Required icon
            'brand_values.*.title' => 'required|string|max:255',
            'brand_values.*.description' => 'required|string',
        ]);

        // Handle the main image upload for AboutUs
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagePath = $this->uploadImage($image, 'about_us');
            $validatedData['left_image'] = $imagePath;
        }

        // Create the AboutUs entry
        $aboutUs = AboutUs::create($validatedData);

        // Create Subbrands with logo uploads
        if ($request->has('subbrands')) {
            foreach ($request->subbrands as $subbrandData) {
                if (isset($subbrandData['logo'])) {
                    $subbrandData['logo'] = $this->uploadImage($subbrandData['logo'], 'subbrands');
                }
                $aboutUs->subbrands()->create($subbrandData);
            }
        }

        // Create BrandValues with icon uploads
        if ($request->has('brand_values')) {
            foreach ($request->brand_values as $brandValueData) {
                if (isset($brandValueData['icon'])) {
                    $brandValueData['icon'] = $this->uploadImage($brandValueData['icon'], 'brandvalues');
                }
                $aboutUs->brandValues()->create($brandValueData);
            }
        }

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
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'image_alt' => 'nullable|string|max:255',
            'subbrands' => 'nullable|array',
            'subbrands.*.id' => 'sometimes|exists:subbrands,id',
            'subbrands.*.logo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'subbrands.*.logo_alt' => 'nullable|string|max:255',
            'brand_values' => 'nullable|array',
            'brand_values.*.id' => 'sometimes|exists:brand_values,id',
            'brand_values.*.icon' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Optional in update
            'brand_values.*.title' => 'required|string|max:255',
            'brand_values.*.description' => 'required|string',
        ]);

        // Handle the image upload if provided
        if ($request->hasFile('image')) {
            // Delete the old image if it exists
            if ($aboutUs->left_image) {
                Storage::delete('public/' . $aboutUs->left_image);
            }
            // Upload new image
            $validatedData['left_image'] = $this->uploadImage($request->file('image'), 'about_us');
        }

        // Update the main AboutUs data
        $aboutUs->update($validatedData);

        // Update or create Subbrands
        if ($request->has('subbrands')) {
            foreach ($request->subbrands as $subbrandData) {
                if (isset($subbrandData['id'])) {
                    // Existing subbrand - update
                    $subbrand = Subbrand::find($subbrandData['id']);
                    if ($subbrand) {
                        // Handle logo replacement
                        if (isset($subbrandData['logo']) && $request->hasFile('subbrands.' . $subbrandData['id'] . '.logo')) {
                            Storage::delete('public/' . $subbrand->logo);
                            $subbrandData['logo'] = $this->uploadImage($subbrandData['logo'], 'subbrands');
                        }
                        $subbrand->update($subbrandData);
                    }
                } else {
                    // New subbrand - create
                    if (isset($subbrandData['logo'])) {
                        $subbrandData['logo'] = $this->uploadImage($subbrandData['logo'], 'subbrands');
                    }
                    $aboutUs->subbrands()->create($subbrandData);
                }
            }
        }

        // Update or create Brand Values
        if ($request->has('brand_values')) {
            foreach ($request->brand_values as $brandValueData) {
                if (isset($brandValueData['id'])) {
                    // Existing brand value - update
                    $brandValue = BrandValue::find($brandValueData['id']);
                    if ($brandValue) {
                        // Handle icon replacement (optional)
                        if (isset($brandValueData['icon']) && $request->hasFile('brand_values.' . $brandValueData['id'] . '.icon')) {
                            Storage::delete('public/' . $brandValue->icon);
                            $brandValueData['icon'] = $this->uploadImage($brandValueData['icon'], 'brandvalues');
                        }
                        // If no new icon is uploaded, keep the old one
                        $brandValue->update($brandValueData);
                    }
                } else {
                    // New brand value - create
                    if (isset($brandValueData['icon'])) {
                        $brandValueData['icon'] = uploadImage($brandValueData['icon'], 'brandvalues');
                    }
                    $aboutUs->brandValues()->create($brandValueData);
                }
            }
        }

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
    private function uploadImage($image, $folder)
    {
        $imageName = $folder . '_' . time() . '.' . $image->getClientOriginalExtension();
        $image->storeAs('public/pictures/' . $folder, $imageName);
        return 'pictures/' . $folder . '/' . $imageName;
    }

    // ********** Subbrands Endpoints **********

    // Create a new subbrand with logo image upload
    public function subbrandStore(Request $request, $aboutUsId)
    {
        $request->validate([
            'logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Validate logo image
            'logo_alt' => 'required|string|max:255',
        ]);

        $aboutUs = AboutUs::findOrFail($aboutUsId);

        // Handle logo image upload
        if ($request->hasFile('logo')) {
            $logo = $request->file('logo');
            $logoName = 'subbrand_' . $aboutUs->id . '_' . time() . '.' . $logo->getClientOriginalExtension();
            $logoPath = 'pictures/subbrands/' . $logoName;

            // Store the logo image
            $logo->storeAs('public/' . $logoPath);

            // Create the subbrand with the logo path
            $subbrand = $aboutUs->subbrands()->create([
                'logo' => 'storage/' . $logoPath,
                'logo_alt' => $request->input('logo_alt'),
            ]);

            // Return the full logo URL
            $subbrand->logo = generateFullImageUrl($subbrand->logo);

            return response()->json($subbrand, 201);
        }

        return response()->json(['message' => 'Logo image is required'], 400);
    }

    // ********** Brand Values Endpoints **********

    // Create a new brand value with icon image upload
    public function brandValueStore(Request $request, $aboutUsId)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $aboutUs = AboutUs::findOrFail($aboutUsId);

        // Handle icon image upload
        if ($request->hasFile('icon')) {
            $icon = $request->file('icon');
            $iconName = 'brandvalue_' . $aboutUs->id . '_' . time() . '.' . $icon->getClientOriginalExtension();
            $iconPath = 'pictures/brandvalues/' . $iconName;

            // Store the icon image
            $icon->storeAs('public/' . $iconPath);

            // Create the brand value with the icon path
            $brandValue = $aboutUs->brandValues()->create([
                'title' => $request->input('title'),
                'description' => $request->input('description'),
                'icon' => 'storage/' . $iconPath,
            ]);

            // Return the full icon URL
            $brandValue->icon = generateFullImageUrl($brandValue->icon);

            return response()->json($brandValue, 201);
        }

        return response()->json(['message' => 'Icon image is required'], 400);
    }



}
