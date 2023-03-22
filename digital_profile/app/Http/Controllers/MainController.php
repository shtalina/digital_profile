<?php

namespace App\Http\Controllers;

use App\Models\Faculties;
use App\Models\Groups;
use Illuminate\Http\Request;

class MainController extends Controller
{
    public function profile(){
        return view('profile');
    }
    public function main(){
        return view('main');
    }
    public function view_faculties(){
        return view('faculties', ['data' => Faculties::all()]);

    }
    public function view_group(){


    }
}
