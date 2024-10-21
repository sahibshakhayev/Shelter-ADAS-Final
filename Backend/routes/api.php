<?php

use App\Http\Controllers\StaticController;
use App\Http\Controllers\TranslationController;
use App\Http\Middleware\IsAdmin;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\ContactingController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\ServiceController;

use App\Http\Controllers\ProductController;

use App\Http\Controllers\PasswordResetController;

Route::get('/storage/{path}', function ($path) {
    // Define the full path including subdirectories
    $fullPath = public_path($path);

    // Check if the file exists
    if (!file_exists($fullPath)) {
        abort(404);
    }

    // Return the file as a response
    return Response::download($fullPath);
})->where('path', '.*');




Route::get('/settings', [SettingController::class, 'index']);
Route::get('/settings/{key}', [SettingController::class, 'settingByIdOrKey']);

// Home Page About Us Section
Route::get('/about-us/home', [AboutUsController::class, 'homePageAboutUs']);

// Full About Us Page
Route::get('/about-us', [AboutUsController::class, 'aboutUsPage']);



Route::get('translations', [TranslationController::class, 'getTranslations']); // Get all translations (with pagination and language filter)
Route::get('translations/{id}', [TranslationController::class, 'getTranslation']); // Get translation by ID


// Languages Routes
Route::get('languages', [TranslationController::class, 'getLanguages']); // Get all languages (with pagination)
Route::get('languages/{id}', [TranslationController::class, 'getLanguage']); // Get language by ID

Route::get('translations', [TranslationController::class, 'getTranslations']); // Get all translations (with pagination and language filter)
Route::get('translations/{id}', [TranslationController::class, 'getTranslation']); // Get translation by ID







// Service routes
Route::get('/services/home', [ServiceController::class, 'homePage']); // First 3 services
Route::get('/services', [ServiceController::class, 'index']); // Paginated service list with search
Route::get('/services/{id}', [ServiceController::class, 'show']); // Fetch service by ID

// Project routes
Route::get('/projects/home', [ProjectController::class, 'homePage']); // First 3 projects
Route::get('/projects', [ProjectController::class, 'index']); // Paginated project list with search
Route::get('/projects/{id}', [ProjectController::class, 'show']); // Fetch project by ID

Route::get('/partners', [PartnerController::class, 'index']);




// Route for the Home page Contacting data (only 'src')
Route::get('/contactings/home', [ContactingController::class, 'home']);

// Route for the Contact page Contacting data (src, name, and mail)
Route::get('/contactings/contact', [ContactingController::class, 'contact']);

Route::get('/blogs', [BlogController::class, 'index']);

// Endpoint to get details of a specific blog by ID
Route::get('/blogs/{id}', [BlogController::class, 'show']);

Route::get('/about-us/{aboutUsId}/subbrands', [AboutUsController::class, 'subbrandsIndex']);
Route::get('/about-us/{aboutUsId}/brand-values', [AboutUsController::class, 'brandValuesIndex']);


Route::get('/static/texts', [StaticController::class, 'index']);
Route::get('/static/text/{key}', [StaticController::class, 'getText']);
Route::get('/static/pages', [StaticController::class, 'pages']);
Route::get('/static/page/{key}', [StaticController::class, 'pageByIdOrSlug']);



Route::get('products', [ProductController::class, 'indexProducts']);
Route::get('categories', [ProductController::class, 'indexCategories']);
Route::get('subcategories', [ProductController::class, 'indexSubcategories']);

// Get by ID
Route::get('products/{id}', [ProductController::class, 'getProductById']);
Route::get('categories/{id}', [ProductController::class, 'getCategoryById']);
Route::get('subcategories/{id}', [ProductController::class, 'getSubcategoryById']);
Route::get('categories/{id}/subcategories', [ProductController::class, 'getSubcategoriesByCategoryId']);
// Create


Route::middleware([IsAdmin::class])->group(function () {
    // Settings CRUD
    Route::post('/admin/settings', [SettingController::class, 'store']);
    Route::put('/admin/settings/{id}', [SettingController::class, 'update']);
    Route::delete('/admin/settings/{id}', [SettingController::class, 'destroy']);


    Route::post('/admin/about-us', [AboutUsController::class, 'store']);
    Route::put('/admin/about-us/{id}', [AboutUsController::class, 'update']);
    Route::delete('/admin/about-us/{id}', [AboutUsController::class, 'destroy']);


    Route::post('/admin/pages', [StaticController::class, 'createPage']);
    Route::put('/admin/page/{id}', [StaticController::class, 'updatePage']);
    Route::delete('/admin/page/{id}', [StaticController::class, 'deletePage']);



    Route::post('/admin/static', [StaticController::class, 'createStaticText']);
    Route::put('/admin/static/{id}', [StaticController::class, 'updateStaticText']);
    Route::delete('/admin/static/{id}', [StaticController::class, 'deleteStaticText']);

    // Projects CRUD
    Route::post('/admin/projects', [ProjectController::class, 'store']);
    Route::put('/admin/projects/{id}', [ProjectController::class, 'update']);
    Route::delete('/admin/projects/{id}', [ProjectController::class, 'destroy']);


    Route::post('/admin/partners', [PartnerController::class, 'store']);
    Route::put('/admin/partners/{id}', [PartnerController::class, 'update']);
    Route::delete('/admin/partners/{id}', [PartnerController::class, 'destroy']);





    // Services CRUD
    Route::post('/admin/services', [ServiceController::class, 'store']);
    Route::put('/admin/services/{id}', [ServiceController::class, 'update']);
    Route::delete('/admin/services/{id}', [ServiceController::class, 'destroy']);

    // Blogs CRUD
    Route::post('/admin/blogs', [BlogController::class, 'store']);
    Route::put('/admin/blogs/{id}', [BlogController::class, 'update']);
    Route::delete('/admin/blogs/{id}', [BlogController::class, 'destroy']);

    // Contactings CRUD
    Route::post('/admin/contactings', [ContactingController::class, 'store']);
    Route::put('/admin/contactings/{id}', [ContactingController::class, 'update']);
    Route::delete('/admin/contactings/{id}', [ContactingController::class, 'destroy']);


    Route::post('/admin/about-us/{aboutUsId}/subbrands', [AboutUsController::class, 'subbrandStore']);
    Route::put('/admin/about-us/subbrand/{id}', [AboutUsController::class, 'subbrandUpdate']);
    Route::delete('/admin/about-us/subbrand/{id}', [AboutUsController::class, 'destroySubbrand']);


    Route::post('/admin/about-us/{aboutUsId}/brandValues', [AboutUsController::class, 'brandValueStore']);
    Route::put('/admin/about-us/brandValue/{id}', [AboutUsController::class, 'brandValueUpdate']);
    Route::delete('/admin/about-us/brandValue/{id}', [AboutUsController::class, 'brandValueDestroy']);

// Brand values routes
    Route::post('/admin/about-us/{aboutUsId}/brand-values', [AboutUsController::class, 'brandValueStore']);
    Route::put('/admin/about-us/{aboutUsId}/brand-values/{brandValueId}', [AboutUsController::class, 'brandValueUpdate']);
    Route::delete('/admin/about-us/{aboutUsId}/brand-values/{brandValueId}', [AboutUsController::class, 'brandValueDestroy']);

    Route::post('/admin/translations', [TranslationController::class, 'createTranslation']); // Create a new translation
    Route::put('/admin/translations/{id}', [TranslationController::class, 'updateTranslation']); // Update an existing translation
    Route::delete('/admin/translations/{id}', [TranslationController::class, 'deleteTranslation']); // Delete a translation

    Route::post('/admin/languages', [TranslationController::class, 'createLanguage']); // Create a new language
    Route::put('/admin/languages/{id}', [TranslationController::class, 'updateLanguage']); // Update an existing language
    Route::delete('/admin/languages/{id}', [TranslationController::class, 'deleteLanguage']); // Delete a language


    Route::post('/admin/products', [ProductController::class, 'storeProduct']);
    Route::post('/admin/categories', [ProductController::class, 'storeCategory']);
    Route::post('/admin/categories/{categoryId}/subcategories', [ProductController::class, 'storeSubcategory']);


    Route::put('/admin/products/{id}', [ProductController::class, 'updateProduct']);
    Route::put('/admin/categories/{id}', [ProductController::class, 'updateCategory']);
    Route::put('/admin/subcategories/{id}', [ProductController::class, 'updateSubcategory']);


    Route::delete('/admin/products/{id}', [ProductController::class, 'destroyProduct']);
    Route::delete('/admin/categories/{id}', [ProductController::class, 'destroyCategory']);
    Route::delete('/admin/subcategories/{id}', [ProductController::class, 'destroySubcategory']);


    // Update user type
    Route::put('/admin/users/{id}/update-type', [AuthController::class, 'updateUserType']);
});

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);
Route::post('refresh', [AuthController::class, 'refreshToken']);
Route::post('logout', [AuthController::class, 'logout'])->middleware('auth:api');






Route::middleware(['auth:api'])->group(function () {
Route::patch('user/{id}/update-type', [AuthController::class, 'updateUserType']);
});

Route::get('me', [AuthController::class, 'me'])->middleware('auth:api');


Route::post('password/reset-code', [PasswordResetController::class, 'sendResetCode']);
Route::post('password/validate-code', [PasswordResetController::class, 'validateResetCode']);
Route::post('password/reset', [PasswordResetController::class, 'resetPassword']);




