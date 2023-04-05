@extends('layout')
@section('title')Пользователи@endsection

@section('main_content')
    <div class="container">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">id</th>
            <th scope="col">name</th>
            <th scope="col">email</th>
            <th scope="col">created_at</th>
            <th scope="col">updated_at</th>
            <th scope="col">actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($users as $user)
        <tr>

            <th scope="row">{{$user->id}}</th>
            <td>{{$user->name}}</td>
            <td>{{$user->email}}</td>
            <td>{{$user->created_at}}</td>
            <td>{{$user->updated_at}}</td>
            <td> <div class="btn-group me-2" role="group" aria-label="Second group">
                    <button type="button" class="btn btn-secondary">edit</button>
                    <button type="button" class="btn btn-secondary">delete</button>

                </div></td>
        </tr>
        @endforeach
        </tbody>
    </table>
    </div>


@endsection
