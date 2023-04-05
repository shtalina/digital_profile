@extends('layout')
@section('title')Роли@endsection

@section('main_content')
    <div class="container">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">name</th>
                <th scope="col">created_at</th>
                <th scope="col">updated_at</th>
            </tr>
            </thead>
            <tbody>
            @foreach($role as $roles)
                <tr>

                    <th scope="row">{{$roles->id}}</th>
                    <td>{{$roles->name}}</td>
                    <td>{{$roles->created_at}}</td>
                    <td>{{$roles->updated_at}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>


@endsection

