<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Page;
use App\Models\StaticText;
use http\Env\Response;
use Illuminate\Http\Request;

class StaticController extends Controller
{
    public function index(Request $request)
    {
        $data = StaticText::query();


        if ($request->has('search')) {
            $search = $request->input('search');
            $data->where('key', 'LIKE', "%{$search}%")
                ->orWhere('text', 'LIKE', "%{$search}%");

        }

        $data = $data->get();


        foreach ($data as $statictext) {

          $statictext->text = translate($statictext->text);


        }


        return response()->json([
            'data' => $data,
            'total' => $data->count()
        ]);
    }




    public function pages()
    {
        $data = Page::all('id','slug','title','link','is_active');

        foreach ($data as $page) {

            $page->title = translate($page->title);

          if ($page->slug == 'products') {

              $page->has_categories = true;

              $page->categories = Category::all('id','name');


              foreach ($page->categories as $category) {


                  $category->link = '/'.str_replace(" ", "-", mb_strtolower($category->name));
                  $category->name = translate($category->name);

              }



          }

          else {

              $page->has_categories = false;

          }



        }




        return response()->json([
            'status' => 'success',
            'data' => $data
        ]);
    }




    public function pageByIdOrSlug($key)
    {
        if (is_numeric($key)) {

            $page = Page::findOrFail($key);

        }

        else  {


            $page = Page::where('slug', $key)->first();
        }




        if ($page) {

            $page->title = translate($page->title);
            $page->hero_title = translate($page->hero_title);
            $page->hero_description = translate($page->hero_description);
            $page->hero_image = generateFullImageUrl($page->hero_image);
            return response()->json($page);

        }

        else {

            return response("Not Found",404);
        }
    }


    public function getText($key)
    {
        if (is_numeric($key)) {

            $sText = StaticText::findOrFail($key);

        }

        else  {


            $sText = StaticText::where('key', $key)->first();
        }




        if ($sText) {

            $sText->text = translate($sText->text);
            return response()->json($sText);

        }

        else {

            return response("Not Found",404);
        }
    }


    public function createPage(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'slug' => 'required|string|max:255|unique:pages',
            'link' => 'required|string|max:255|unique:pages',
            'hero_title' => 'nullable|string|max:255',
            'hero_description' => 'nullable|string',
            'is_active' => 'boolean',
            'hero_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Validate hero image
        ]);

        // Handle hero image upload using the helper function
        if ($request->hasFile('hero_image')) {
            $heroImagePath = uploadImage($request->file('hero_image'), 'pages');
            $validatedData['hero_image'] = $heroImagePath;
        }

        $page = Page::create($validatedData);

        return response()->json([
            'status' => 'success',
            'data' => $page
        ]);
    }

    // Update an existing Page with optional hero image
    public function updatePage(Request $request, $id)
    {
        $page = Page::findOrFail($id);

        $validatedData = $request->validate([
            'title' => 'sometimes|string|max:255',
            'slug' => 'sometimes|string|max:255|unique:pages,slug,' . $page->id,
            'link' => 'sometimes|string|max:255|unique:pages,link,' . $page->id,
            'hero_title' => 'nullable|string|max:255',
            'hero_description' => 'nullable|string',
            'is_active' => 'boolean',
            'hero_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Validate hero image
        ]);

        // Handle hero image upload using the helper function
        if ($request->hasFile('hero_image')) {
            $heroImagePath = uploadImage($request->file('hero_image'), 'pages');
            $validatedData['hero_image'] = $heroImagePath;
        }

        $page->update($validatedData);

        return response()->json([
            'status' => 'success',
            'data' => $page
        ]);
    }

    // Delete a Page
    public function deletePage($id)
    {
        $page = Page::findOrFail($id);
        $page->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Page deleted successfully'
        ]);
    }

    // Create a new StaticText
    public function createStaticText(Request $request)
    {
        $validatedData = $request->validate([
            'key' => 'required|string|max:255|unique:static_texts',
            'text' => 'required|string',
        ]);

        $staticText = StaticText::create($validatedData);

        return response()->json([
            'status' => 'success',
            'data' => $staticText
        ]);
    }

    // Update an existing StaticText
    public function updateStaticText(Request $request, $id)
    {
        $staticText = StaticText::findOrFail($id);

        $validatedData = $request->validate([
            'text' => 'required|string',
        ]);

        $staticText->update($validatedData);

        return response()->json([
            'status' => 'success',
            'data' => $staticText
        ]);
    }

    // Delete a StaticText
    public function deleteStaticText($id)
    {
        $staticText = StaticText::findOrFail($id);
        $staticText->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Static text deleted successfully'
        ]);
    }

}
