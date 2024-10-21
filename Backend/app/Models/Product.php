<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'title', 'image', 'description', 'date', 'client', 'location', 'subcategory_id'
    ];

    public function subcategory()
    {
        return $this->belongsTo(Subcategory::class);
    }
}
