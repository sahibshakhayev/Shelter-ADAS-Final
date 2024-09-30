<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subbrand extends Model
{
    protected $table = 'subbrands';

    protected $fillable = ['logo', 'logo_alt'];
    public function aboutUs()
    {
        return $this->belongsTo(AboutUs::class);
    }
}

