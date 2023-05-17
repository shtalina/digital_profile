<?php

namespace App\Http\Controllers;

use App\Models\Faculties;
use App\Models\Group;
use Illuminate\Support\Facades\DB;
use App\Models\Students;

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
        return view('faculties', ['faculty' => Faculties::with('groups')->get()]);


    }
    public function number_group (Request $request, $gruppa) {
        $group_n =isset($post['=']);
        $group = Group::where('gruppa', $group_n)->value('gruppa');
        $student = Students::all();
        return view('list',compact(['gruppa', 'student']));

    }

}
