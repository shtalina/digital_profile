@extends('layout')

@section('title')Профиль студента@endsection

@section('main_content')

    <div class="container" align="center">

    </div>
    <br>

    <div class = "container">
        <h2 align="center"><b>Цифровой профиль студента</b></h2>

        <hr>
        <br>
        <div class="row mb-3">
            <div class="col-md-3 themed-grid-col">
                <div class="container">
                    <div class="card" style="width: 18rem;">
                        <img src="https://avatars.mds.yandex.net/i?id=147f7ba5f75c188df3fd307fd0e358575aa3603e-9268554-images-thumbs&n=13" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p align="center">shtalina03@gmail.com</p>
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
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <tr >
                            <td><b>ФИО</b></td>
                            <td id="fio">Шталина Екатерина Сергеевна</td>
                        </tr>
                        <tr>
                            <td><b>Факультет</b></td>
                            <td>ФМФ</td>
                        </tr>
                        <tr>
                            <td><b>Курс</b></td>
                            <td>3</td>
                        </tr>
                        <tr>
                        <tr>
                            <td><b>Направление</b></td>
                            <td>09.03.02 Информационные системы и технологии</td>
                        </tr>
                        <td><b>Профиль</b></td>
                        <td>Информационные системы и технологии в образовании</td>
                        </tr>

                        <tr>
                            <td><b>Кафедра</b></td>
                            <td>Кафедра информатики</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
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
                    <div class="card-body">
                        <h5 class="card-title">Достижения</h5>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Учёба
                                <span class="badge bg-primary rounded-pill">98</span>
                            </li>
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
