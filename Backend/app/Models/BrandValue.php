<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BrandValue extends Model
{
    protected $table = 'brand_values';

    protected $fillable = ['title', 'description', 'icon'];
    public function aboutUs()
    {
        return $this->belongsTo(AboutUs::class);
    }
}
