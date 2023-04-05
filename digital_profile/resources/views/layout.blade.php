<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

    <title>@yield('title')</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sticky-footer-navbar/">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbars/">

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
                        <a class="nav-link active">Центр карьеры</a>
                    </li>
                    @auth
                    @if(Auth::user()->hasRole('admin'))
                        <li class="nav-item">
                            <a class="nav-link active" href="{{ route("users") }}">Пользователи</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="{{ route("role") }}">Роли</a>
                        </li>
                    @endif
                @endauth
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
