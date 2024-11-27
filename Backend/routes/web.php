<?php

use Illuminate\Support\Facades\Route;

Route::get('/storage/{path}', function ($path) {
    $fullPath = public_path($path);

    
    if (!file_exists($fullPath)) {
        abort(404);
    }

    
    return Response::download($fullPath);
})->where('path', '.*');



Route::domain('admin.' . parse_url(config('app.url'), PHP_URL_HOST))->group(function () {


    Route::get('/{any}', function () {
        return File::get(public_path('admin/index.html'));
    })->where('any', '.*');


    
});

