<?php


namespace App\Http\Controllers;

use App\Models\Translation;
use App\Models\Language;
use Illuminate\Http\Request;

class TranslationController extends Controller
{
    // ---------------- Translations ------------------

    // Get all translations with pagination and filter by language
    public function getTranslations(Request $request)
    {
        // Optionally filter by language (code)

        $search = $request->input('search', null);
        $languageCode = $request->query('lang_id', null);

        // If a language is selected, filter translations by that language
        if ($languageCode) {
            $translations = Translation::where(function($query) use ($search) {
                $query->where('key', 'LIKE', "%{$search}%")
                    ->orWhere('value', 'LIKE', "%{$search}%");
            })->whereHas('language', function ($query) use ($languageCode) {
                $query->where('id', $languageCode);
            })->paginate(10);

        } else {
            // Return all translations with pagination
            $translations = Translation::Where('key', 'LIKE', "%{$search}%")->OrWhere('value', 'LIKE', "%{$search}%")->paginate(10);
        }

        return response()->json($translations);
    }

    // Get a translation by its ID
    public function getTranslation($id)
    {
        $translation = Translation::find($id);

        if (!$translation) {
            return response()->json(['message' => 'Translation not found'], 404);
        }

        return response()->json($translation);
    }

    // Create a new translation (POST)
    public function createTranslation(Request $request)
    {
        $request->validate([
            'key' => 'required|string',
            'value' => 'required|string',
            'language_id' => 'required|exists:languages,id',
        ]);

        $translation = Translation::create($request->all());

        return response()->json($translation, 201); // Return 201 status for created
    }

    // Update an existing translation (PUT)
    public function updateTranslation(Request $request, $id)
    {
        $translation = Translation::find($id);

        if (!$translation) {
            return response()->json(['message' => 'Translation not found'], 404);
        }

        $request->validate([
            'key' => 'sometimes|required|string',
            'value' => 'sometimes|required|string',
            'language_id' => 'sometimes|required|exists:languages,id',
        ]);

        $translation->update($request->all());

        return response()->json($translation);
    }

    // Delete a translation (DELETE)
    public function deleteTranslation($id)
    {
        $translation = Translation::find($id);

        if (!$translation) {
            return response()->json(['message' => 'Translation not found'], 404);
        }

        $translation->delete();

        return response()->json(['message' => 'Translation deleted successfully']);
    }

    // ---------------- Languages ------------------

    // Get all languages with pagination
    public function getLanguages(Request $request)
    {
        if ($request ->query()) {

            $languages = Language::paginate(10);

        }

        else {

            $languages = Language::all();
        }


         // Pagination with 10 items per page
        return response()->json($languages);
    }

    // Get a language by ID
    public function getLanguage($id)
    {
        $language = Language::find($id);

        if (!$language) {
            return response()->json(['message' => 'Language not found'], 404);
        }

        return response()->json($language);
    }

    // Create a new language (POST)
    public function createLanguage(Request $request)
    {
        $request->validate([
            'code' => 'required|string|max:2|unique:languages,code',
            'name' => 'required|string',
            'country' => 'required|string',
        ]);

        $language = Language::create($request->except('country'));

        $language -> update(['country' => mb_strtoupper($request->input('country'))]);

        return response()->json($language, 201); // Return 201 status for created
    }

    // Update an existing language (PUT)
    public function updateLanguage(Request $request, $id)
    {
        $language = Language::find($id);

        if (!$language) {
            return response()->json(['message' => 'Language not found'], 404);
        }

        $request->validate([
            'code' => 'sometimes|required|string|max:2|unique:languages,code,' . $id,
            'name' => 'sometimes|required|string',
            'country' => 'sometimes|required|string'
        ]);

        $language->update($request->except('country'));

        $language -> update(['country' => mb_strtoupper($request->input('country'))]);

        return response()->json($language);
    }

    // Delete a language (DELETE)
    public function deleteLanguage($id)
    {
        $language = Language::find($id);

        if (!$language) {
            return response()->json(['message' => 'Language not found'], 404);
        }

        $language->delete();

        return response()->json(['message' => 'Language deleted successfully']);
    }
}

