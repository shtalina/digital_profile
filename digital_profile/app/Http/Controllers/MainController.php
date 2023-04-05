<?php

namespace App\Http\Controllers;

use App\Models\Faculties;
use App\Models\Group;
use Illuminate\Support\Facades\DB;

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
        return view('faculties', ['data' => Faculties::with('groups')->get()]);


    }

}
