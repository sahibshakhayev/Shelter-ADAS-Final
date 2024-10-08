<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contacting extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'mail', 'src'];
}
