<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    use HasFactory;

    protected $table = 'groups';

    public function faculty()
    {
        return $this->belongsTo(Faculties::class, 'fak_id', 'fak_id');
    }
}
