@extends('layout')

@section('title')Факультеты@endsection

@section('main_content')
    <div class="container" align="center">
        <h2>Факультеты, институты</h2>
        <br>
        <div class="container">
            <div class="accordion accordion-flush" id="accordionFlushExample">
                @foreach($data as $el)
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingOne">
                        <a id = "{{ $el->fak_id }}" href="{{ route("profile") }}" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                           {{ $el->name }}
                        </a>
                    </h2>

                @endforeach
            </div>
        </div>
    </div>
@endsection

