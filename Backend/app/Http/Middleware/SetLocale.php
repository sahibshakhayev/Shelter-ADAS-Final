<?php

namespace App\Http\Middleware;

use App\Models\Language;
use Closure;
use App;
use Illuminate\Http\Request;

class SetLocale
{
    public function handle(Request $request, Closure $next)
    {
        // Fetch all available locale codes from the 'languages' table
        $availableLocales = Language::pluck('code')->toArray();  // ['az', 'en', 'ru', ...]

        // Get the language from the request (could be header, query param, etc.)
        $locale = $request->has('lang') ? $request->get('lang') : 'en';

        // Check if the locale exists in the list of available locales
        if (in_array($locale, $availableLocales)) {
            App::setLocale($locale);
        } else {
            App::setLocale('en');  // Default to English if locale not found
        }

        return $next($request);
    }
}
