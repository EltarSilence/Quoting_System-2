@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">

          @for($i=0; $i<count($userBets); $i++)
          {!! $userBets[$i] !!}

            <div class="card" style="width: 18rem;">
              <div class="card-header">
                Scommessa n. {!! $userBets[$i]['idS'] !!}
                <h6>
                  Puntata:
                  <span class="badge badge-primary">
                    {!! $userBets[$i]['coinS'] !!} exacoins
                  </span>
                </h6>
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"></li>
              </ul>
            </div>
          @endfor
        </div>
        <div class="col-md-8">
        </div>
    </div>
</div>
@endsection
