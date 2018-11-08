@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">

          @for($i=0; $i<count($userBets); $i++)
          {!! $userBets[$i] !!}

            <div class="card" style="width: 25rem;">
              <div class="card-header">

              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">
                  Biglietto n. {!! $userBets[$i]['idS'] !!}
                  <h6>
                    Puntata: {!! $userBets[$i]['coinS'] !!} exacoins
                    @if ( $userBets[$i]['pagataS'] == 1)
                      @if ($isWon[$i]>0)
                        <span class="badge badge-success">VINCENTE</span>
                      @elseif ($isWon[$i] == 0)
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
