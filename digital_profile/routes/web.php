<?php

use App\Http\Controllers\MainController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\URL;
use Illuminate\Http\Request;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', [MainController::class,'main']);
//Route::get('/faculties', [MainController::class,'profile']);
//Route::get('/profile', function () {
//    return view('profile');
//});
Route::get('/', function () {
    return view('main');
});

Route::middleware(['auth'])->group(function () {

    Route::get('/faculties', [MainController::class, 'view_faculties'])->name('faculties');
   // Route::get('/faculties', [MainController::class, 'view_group'])->name('faculties');
    Route::get('/main', [MainController::class, 'main'])->name('main');
    Route::get('/faculties/profile', [MainController::class, 'profile'])->name('profile');
    Route::get('/profile', [MainController::class, 'profile_pr'])->name('profile');
    Route::get('/users', [AdminController::class, 'users'])->name('users');
    Route::get('/role', [AdminController::class, 'role'])->name('role');
    Route::get('/group', [MainController::class, 'number_group'])->name('list');
    Route::get('/id', [ProfileController::class, 'info_students'])->name('attachments.profile');
    Route::get('/marks', [ProfileController::class, 'marks'])->name('attachments.marks');
    Route::get('/files', [ProfileController::class, 'files'])->name('attachments.study');

});

require __DIR__.'/auth.php';
