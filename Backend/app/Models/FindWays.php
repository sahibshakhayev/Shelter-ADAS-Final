<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FindWays extends Model
{
    use HasFactory;
    protected $fillable = ['key', 'value'];
}
