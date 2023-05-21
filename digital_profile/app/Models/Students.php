<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Students extends Model {
    use HasFactory;
    protected $table = 'students';

    public function students (){
        return $this->hasMany(Files::class, 'id', 'stud_id');

    }
}
