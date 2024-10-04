<?php
use App\Models\Translation;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\App;

if (!function_exists('translate')) {
    function translate($key)
    {
        $locale = App::getLocale();
        $translation = Translation::where('key', $key)
            ->whereHas('language', function ($query) use ($locale) {
                $query->where('code', $locale);
            })->first();

        return $translation ? $translation->value : $key;
    }
}

if (!function_exists('generateFullImageUrl')) {
    function generateFullImageUrl($imagePath): ?string
    {
        if ($imagePath) {
            return request()->getSchemeAndHttpHost() . '/' . $imagePath;
        }
        return null;
    }
}


if (!function_exists('uploadImage')) {
    /**
     * Upload an image to the public directory and return the storage path
     *
     * @param UploadedFile $image
     * @param string $resourceName
     * @return string
     */
    function uploadImage(UploadedFile $image, string $resourceName): string
    {
        // Generate a random filename with extension
        $filename = Str::random(40) . '.' . $image->getClientOriginalExtension();

        // Define the path where the image will be stored
        $path = "pictures/{$resourceName}/{$filename}";

        // Move the file to the public directory
        $image->storeAs('public/'.$path);

        // Return the file path excluding 'public/' and adding 'storage/' instead
        return "storage/{$path}";
    }




}

