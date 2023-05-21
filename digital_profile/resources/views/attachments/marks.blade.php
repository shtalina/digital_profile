@extends('layout')

@section('title')Профиль студента@endsection

@section('main_content')

    <div class="container" align="center">

    </div>
    <br>

    <div class = "container">
        <h2 align="center"><b>Успеваемость</b></h2>

        <hr>
        <br>
        <div class="row mb-3">
        <div class="col-md-2 themed-grid-col">
            <div class="container">
                @foreach($marks as $mark)
                <a href="/id?n={{$mark->stud_id}}" class="btn btn-outline-success">
                    <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
                        <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
                    </svg> Назад в профиль </a>
                    @break
                @endforeach

            </div>
        </div>

            <div class="col-md-7 themed-grid-col">
            <table class="table">
                <thead>
                <tr>

                    <th scope="col">Дисциплина</th>
                    <th scope="col">Оценка</th>
                    <th scope="col">Семестр</th>
                </tr>
                </thead>
                <tbody>
                @foreach($marks as $mark)
                <tr>
                    <th scope="row">{{$mark->DISCIPLINE_NAME}}</th>
                    <td>{{$mark->mark_name}}</td>
                    <td>{{$mark->NUMBER_OF_SEMESTER}}</td>
                    @endforeach
                </tr>

                </tbody>
            </table>
            </div>

                <div class="col-md-3 themed-grid-col">
                <div class="card" style="width: 18rem;">

                        <a href="{{route("attachments.marks", ['id'=>$mark->stud_id])}}" class="btn btn-outline-success btn-lg">Успеваемость</a>

                        <div class="card-body">

                            <h5 class="card-title">Портфолио</h5>
                            <ul class="list-group list-group-flush">
                                <a href="{{route("attachments.study", ['id'=>$mark->stud_id])}}" class="list-group-item d-flex justify-content-between align-items-center" >
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


                    </div>
                </div>
@endsection
