@extends('layout')
@section('title')Авторизация@endsection

@section('main_content')

    <div class="col-lg-4 col-md-4 col-sm-6 col-12 pe-0 mx-auto">
        <h3 align="center">Войти в систему</h3>
        <br>


        <form method="POST" action="{{route("login")}}">
            <div class="mb-3">
                @csrf
                <label for="exampleInputEmail1" class="form-label">Логин</label>
                <input name="email" type="email" class="form-control @error('email') border-red-500 @enderror" id="exampleInputEmail1" aria-describedby="loginHelp">
                @error('email')
                <p class="text-red-500">{{$message}}</p>
                @enderror
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Пароль</label>
                <input name="password" type="password" class="form-control @error('password') border-red-500 @enderror" id="exampleInputPassword1">
                @error('password')
                <p class="text-red-500">{{$message}}</p>
                @enderror
            </div>

            <button type="submit" class="btn btn-primary">Войти</button>
        </form>

    </div>

    </div>



@endsection
