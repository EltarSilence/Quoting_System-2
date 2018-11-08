@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">

          @for ($i = 0; $i < count($userBets); $i++)
            <div class="card" style="width: 25rem;">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">
                  <h6>
                    Biglietto n. {!! $userBets[$i]['idS'] !!}
                    Puntata: {!! $userBets[$i]['coinS'] !!}
                    <i class="icon icon-exacoin"></i>
                    @if ($userBets[$i]['pagataS'] == 1)
                      @if ($isWon[$i] > 0)
                        <span class="badge badge-success">VINCENTE</span>
                      @endif
                      @if ($isWon[$i] == 0)
                        <span class="badge badge-danger">PERDENTE</span>
                      @endif
                    @else
                      <span class="badge badge-warning">APERTA</span>
                    @endif
                  </h6>
                </li>
              </ul>
            </div>
          @endfor
        </div>
        <div class="col-md-8">
        </div>
    </div>
</div>
@endsection
