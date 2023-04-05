<?php

namespace App\Http\Controllers;

use App\Models\Roles;
use App\Models\Users;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function users(){
        return view('admin.users', ['users'=>Users::all()]);
    }
    public function role(){
        return view('admin.role', ['role'=>Roles::all()]);
    }
}
