<?php

namespace App\Http\Middleware;

use Closure;
use App;
use Illuminate\Http\Request;

class SetLocale
{
    public function handle(Request $request, Closure $next)
    {
        // Get the language from the request (could be header, query param, etc.)
        $locale = $request->has('lang') ? $request->get('lang') : 'en';

        // Check if the locale exists, otherwise default to English
        if (in_array($locale, ['az', 'en', 'ru'])) {
            App::setLocale($locale);
        }

        return $next($request);
    }
}
