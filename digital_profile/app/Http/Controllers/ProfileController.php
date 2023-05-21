<?php

namespace App\Http\Controllers;

use App\Models\Faculties;
use App\Models\Files;
use App\Models\Group;
use Illuminate\Support\Facades\DB;
use App\Models\Students;
use Illuminate\Http\Request;
use App\Models\Marks;
class ProfileController extends Controller
{
    public function info_students() {
        $post = $_GET;

        $id_n = $post['n'];
        $info = Students::where('id', $id_n)->get();
        //dd($info);
        return view('attachments.profile', ['info'=>$info]);
    }
    public function marks(Marks $marks) {
        $post = $_GET;

        $id_n = $post['id'];
        $marks = Marks::where('stud_id', $id_n)->get();
        //dd($marks);

       return view('attachments.marks', ['marks'=>$marks]);

    }
    public function files (Files $files) {
        $post = $_GET;
        $id_n = $post['id'];
        $files = Files::where('stud_id', $id_n)->get();

        return view('attachments.study', ['files'=>$files]);
    }

}
