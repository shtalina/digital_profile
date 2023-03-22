<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">    <title>Document</title>
</head>

<body>
<main>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Ninth navbar example">
        <div class="container-xl">
            <a class="navbar-brand" href="/">Цифровой профиль</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07XL" aria-controls="navbarsExample07XL" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExample07XL">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="{{route("main")}}">Главная</a>
                    </li>
                    @auth
                        @if(Auth::user()->hasRole('admin'))
                        <li class="nav-item">
                        <a class="nav-link active" href="{{ route("faculties") }}">Факультеты</a>
                    </li>
                        @endif
                    @endauth
                    <li class="nav-item">
                        <a class="nav-link active" href="https://eios.tspu.edu.ru/login/">ЭИОС</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active">Цетр карьеры</a>
                    </li>
                </ul>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    @auth("web")


                        <a href="{{route("profile")}}" class="btn btn-outline-warning">{{Auth::user()->name}}</a>
                        <a href="{{ route("logout") }}" class="btn btn-outline-warning">Выйти</a>

                    @endauth
                    @guest("web")

                            <a href="{{ route("login") }}" class="btn btn-outline-warning">Войти</a>

                        @endguest

                </div>
        </div>
    </nav>
    <br>
    @yield('main_content')


</main>
</body>
</html>
