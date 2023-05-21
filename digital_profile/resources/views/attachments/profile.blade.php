@extends('layout')

@section('title')Профиль студента@endsection

@section('main_content')

    <div class="container" align="center">

    </div>
     <div class = "container">
        @foreach($info as $em)
        <a href="/group?n={{$em->gruppa}}" class="btn btn-outline-success">
            <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
                <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
            </svg> Cписок группы</a>
        @endforeach
        <h2 align="center"><b>Цифровой профиль студента</b></h2>

        <hr>
        <br>
        <div class="row mb-3">
            <div class="col-md-3 themed-grid-col">
                <div class="container">
                    <div class="card" style="width: 18rem;">
                        <img src="https://avatars.mds.yandex.net/i?id=147f7ba5f75c188df3fd307fd0e358575aa3603e-9268554-images-thumbs&n=13" class="card-img-top" alt="...">
                        <div class="card-body">
                            @foreach($info as $em)
                            <p align="center">{{$em->email}}</p>
                            @endforeach
                        </div>
                    </div>
                    <br>
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Компетенции</h5>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Критическое мышление
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Коммуникабельность

                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Многозадачность
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Естественнонаучная картина мира
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Глубокие знания в области информатики
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Основы математической обработки информации
                                </li>
                            </ul>


                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 themed-grid-col">
                @foreach($info as $data)
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <tr >
                            <td><b>ФИО</b></td>
                            <td id="fio">{{$data->fio}}</td>
                        </tr>
                        <tr>
                            <td><b>Факультет</b></td>
                            <td>{{$data->facultet}}</td>
                        </tr>
                        <tr>
                            <td><b>Курс</b></td>
                            <td>{{$data->course}}</td>
                        </tr>
                        <tr>
                        <tr>
                            <td><b>Направление</b></td>
                            <td>{{$data->spec_napravl}}</td>
                        </tr>
                       <tr>
                            <td><b>Кафедра</b></td>
                            <td>Кафедра информатики</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                @endforeach
                <br>
                <h4><b>Трек активности</b></h4>
                <br>
                <div class="card text-center">
                    <div class="card-header">
                        <ul class="nav nav-tabs card-header-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="true" href="#">Профессиональный</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Базовый</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <img style="width: 400px;" src="https://sun9-67.userapi.com/impg/tUYkbe14kY6E0knoRgR7zfTqvzjlBDuV3JY-Eg/R6ZZ5JNuVUM.jpg?size=542x409&quality=96&sign=6e95c297192649852c88ce90878c4032&type=album" alt="...">
                    </div>
                </div>
            </div>
            <div class="col-md-3 themed-grid-col">
                <div class="card" style="width: 18rem;">
                    @foreach($info as $data)
                        <a href="{{route("attachments.marks", ['id'=>$data->id])}}" class="btn btn-outline-success btn-lg">Успеваемость</a>

                        <div class="card-body">

                        <h5 class="card-title">Портфолио</h5>
                        <ul class="list-group list-group-flush">
                            <a href="{{route("attachments.study", ['id'=>$data->id])}}" class="list-group-item d-flex justify-content-between align-items-center" >
                                Учёба
                                <span class="badge bg-primary rounded-pill">98</span>
                            </a>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Общество
                                <span class="badge bg-primary rounded-pill">2</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Наука
                                <span class="badge bg-primary rounded-pill">27</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Культура
                                <span class="badge bg-primary rounded-pill">1</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Проф. опыт
                                <span class="badge bg-primary rounded-pill">1</span>
                            </li>
                        </ul>


                    </div>
                    @endforeach
                </div>

                <br>
                <div class="card text-center">
                    <div class="card-header">
                        <ul class="nav nav-tabs card-header-tabs">
                            <li class="nav-item">
                                <a class="nav-link"  href="#">Увлечения</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="true" href="#">Тех. навыки</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Владение HTML и CSS
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Знание JavaScript

                            </li>

                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Умение составлять SQL-запросы
                            </li>

                        </ul>

                    </div>
                </div>

            </div>
        </div>
    </div>

    </div>










@endsection
