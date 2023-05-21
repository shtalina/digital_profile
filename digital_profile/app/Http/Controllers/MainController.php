<?php

namespace App\Http\Controllers;

use App\Models\Faculties;
use App\Models\Group;
use Illuminate\Support\Facades\DB;
use App\Models\Students;

use Illuminate\Http\Request;

class MainController extends Controller
{
    public function profile_pr(){
        return view('profile');
    }
    public function main(){
        return view('main');
    }


    public function view_faculties(){
        return view('faculties', ['faculty' => Faculties::with('groups')->get()]);


    }
    public function number_group () {
        $post = $_GET;

        $group_n = isset($post['n']) && !empty($post['n']) ? $post['n'] : null;
        if (is_null($group_n)) {
            return abort(404);
        }
        $group = Group::where('gruppa', $group_n)->value('gruppa');
        $student = Students::all();

        return view('list',compact(['group', 'student']));
        }


}
