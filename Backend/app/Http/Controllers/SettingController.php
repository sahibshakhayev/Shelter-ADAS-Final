<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function index()
    {
        $settings = Setting::all();

        // Convert the key-value pairs to an array of objects
         foreach ($settings as $setting) {

           $setting->value = translate($setting->value);


         }

        // Return the data in the format React Admin expects
        return response()->json([
            'data' => $settings, // Return as an array of objects
            'total' => count($settings) // Return the total count of settings
        ]);
    }

    // Create a new setting (POST)
    public function store(Request $request)
    {
        $request->validate([
            'key' => 'required|string|unique:settings',
            'value' => 'required|string',
        ]);

        $setting = Setting::create($request->all());

        return response()->json($setting, 201); // HTTP 201 Created
    }

    // Update an existing setting (PUT)
    public function update(Request $request, $id)
    {
        $setting = Setting::findOrFail($id);

        $request->validate([
            'key' => 'string|unique:settings,key,' . $setting->id, // Ensure uniqueness except for the current setting
            'value' => 'string',
        ]);

        $setting->update($request->all());

        return response()->json($setting, 200); // HTTP 200 OK
    }

    // Delete an existing setting (DELETE)
    public function destroy($id)
    {
        $setting = Setting::findOrFail($id);
        $setting->delete();

        return response()->json(null, 204); // HTTP 204 No Content
    }


}