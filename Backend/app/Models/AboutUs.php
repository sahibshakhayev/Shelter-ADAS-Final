<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AboutUs extends Model
{
    protected $table = 'about_us';


    protected $fillable = ['header_text', 'short_description', 'long_description','image_alt', 'left_image'];
    // Relationship with BrandValues
    public function brandValues()
    {
        return $this->hasMany(BrandValue::class);
    }

    // Relationship with Subbrands
    public function subbrands()
    {
        return $this->hasMany(Subbrand::class);
    }
}
