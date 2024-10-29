<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Language extends Model
{
    protected $fillable = ['code', 'name', 'country'];

    public function translations()
    {
        return $this->hasMany(Translation::class);
    }
}
