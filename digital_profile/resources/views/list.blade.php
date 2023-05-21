@extends('layout')

@section('title')Список студентов @endsection

@section('main_content')
    <div class="container" align="center">
         <h2>Список студентов {{ $group }} </h2>
        <br>
        <div class="container" >
        @foreach($student as $fio)
            <a href="/id?n={{$fio->id}}" class="list-group-item">{{$fio->fio}}</a>
        @endforeach


@endsection
