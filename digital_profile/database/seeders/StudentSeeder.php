<?php

namespace Database\Seeders;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $student = User::create([
            'email' => 'qwe@qwe1',
            'name' => 'student',
            'password' => Hash::make('qwe1'),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        Role::create([
            'name' => 'student',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        $student->assignRole('student');
    }
}
