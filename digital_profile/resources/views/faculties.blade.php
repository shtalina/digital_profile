@extends('layout')

@section('title')Факультеты@endsection

@section('main_content')
    <div class="container" align="center">
        <h2>Факультеты, институты</h2>
        <br>
        <div class="container">
            <div class="accordion mb-2" id="accordionExample">


                <div class="accordion-item">
                    @foreach($data as $el)
                    <h2 class="accordion-header" id="flush-headingOne">

                        <button  class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                 aria-expanded="true" aria-controls="collapseOne">
                           {{ $el->name }}
                        </button>

                    </h2>

                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                         data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            @foreach($el->groups as $groups)
                            <div class="row">
                                <div class="col-sm-2">
                                    <div class="col-sm-12 p-2">{{ $groups->course }}</div>

                                    @foreach($el->groups as $groups)
                        <a class="btn btn-primary" href="#" role="button" id="get-users">{{ $groups->gruppa }}</a><div id="result"></div>
                            @endforeach
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    @endforeach
                    </div>

            </div>
        </div>
    </div>

                </div>

            </div>
        </div>
@endsection

