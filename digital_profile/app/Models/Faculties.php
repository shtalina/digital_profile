<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Faculties extends Model
{
    use HasFactory;
    protected $table = 'faculties';

    public function groups()
    {
        return $this->hasMany(Group::class, 'fak_id', 'fak_id');
    }


}
