<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Files extends Model
{
    use HasFactory;
    protected $table='files';

    public function file (){
        return $this->belongsTo(Students::class, 'stud_id', 'id');
    }
}
