@extends('layout')

@section('title')Факультеты@endsection

@section('main_content')
    <div class="container" align="center">
        <h2>Факультеты, институты</h2>
        <br>
        <div class="container" >
            @foreach($faculty as $el)
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne{{$el->fak_id}}">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne{{$el->fak_id}}" aria-expanded="false" aria-controls="flush-collapseOne{{$el->fak_id}}">
                                {{$el->name}}
                            </button>
                        </h2>
                        <div id="flush-collapseOne{{$el->fak_id}}" class="accordion-collapse collapse" aria-labelledby="flush-headingOne{{$el->fak_id}}" data-bs-parent="#accordionFlushExample">

                            <div class="accordion-body">
                                <div class="row">
                                    @foreach($el->groups->sortBy('course')->groupBy('course') as $key => $item)
                                    <div class="col-sm-2">
                                        <div class="col-sm-12 p-2" >Курс {{$key}}</div>
                                        @foreach($item as $val)
                                        <div class="list-group p-1">
                                            <a href="{{route("list", ['gruppa' => $val->gruppa])}}"  class="list-group-item">{{$val->gruppa}}</a>

                                        </div>
                                        @endforeach
                                    </div>
                                    @endforeach

                                </div>
                            </div>

                        </div>
                    </div>
                    @endforeach

            </div>


            </div>
        </div>
@endsection

