<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Translation extends Model
{
    protected $fillable = ['key', 'value', 'language_id'];

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}
