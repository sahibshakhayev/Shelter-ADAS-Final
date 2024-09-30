<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StaticText extends Model
{
    protected $fillable = ['key', 'text'];
    use HasFactory;
}
