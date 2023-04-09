@extends('layout')

@section('title')Факультеты@endsection

@section('main_content')
    <div class="container" align="center">
        <h2>Факультеты, институты</h2>
        <br>
        <div class="container" >
            @foreach($data as $el)
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
                                    @foreach($el->groups as $groups)
                                    <div class="col-sm-2">
                                        <div class="col-sm-12 p-2" >{{$groups->course}}</div>
                                        <div class="list-group p-1">
                                            @foreach($el->groups as $gr)
                                            <a href="#" class="list-group-item ">{{$gr->gruppa}}</a>
                                            @endforeach
                                        </div>
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

