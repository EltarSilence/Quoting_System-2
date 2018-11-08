@extends('layouts.app')

@section('content')
<div class="col-md-12">
  <div class="row justify-content-center">
    <div class="col-md-4" id="list">
      @for ($i = 0; $i < count($userBets); $i++)
        <div class="card" data-det="{!! $i !!}">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">
              <h6>
                Codice Biglietto #{!! $userBets[$i]['idS'] !!}<br />
                Puntata: {!! $userBets[$i]['coinS'] !!}
                <i class="icon icon-exacoin"></i>
                @if ($userBets[$i]['pagataS'] == 1 && $isWon[$i] > 0)
                  <span class="dot-won"></span>
                @elseif ($userBets[$i]['pagataS'] == 1 && $isWon[$i] == 0)
                    <span class="dot-lost"></span>
                @else
                  <span class="dot-open"></span>
                @endif
              </h6>
            </li>
          </ul>
        </div>
      @endfor
    </div>
    <div class="col-md-8" id="detail">

      @for ($i = 0; $i < count($userBets); $i++)
        <div class="card" data-det="{!! $i !!}">
          <div class="card-header">
            <h5 class="mb-0">
                Biglietto #{!! $userBets[$i]['idS'] !!}
            </h5>
          </div>
          <div class="card-body">
            <?php

              for ($k=0; $k<count($details[$i]); $k++){

                $key = $details[$i][$k]['chiaveM'];
                $category = explode('_', $key)[0];

                switch ($category) {
                  case 'EUO':
                    $materia = explode('_', $key)[1];
                    $data = explode('_', $key)[2];
                    $nome = explode('_', $key)[3];
                    $tipo = $details[$i][$k]['tipoM'];
                    $value = $details[$i][$k]['valueM'];
                    $quota = $details[$i][$k]['quotaM'];
                    $esito = $details[$i][$k]['risultatoR'];

                    echo "<i>$materia ($data)</i>
                    <h6>$nome: <b>$tipo $value</b> ($quota) ";
                    if (!is_null($esito)){
                      switch ($tipo) {
                        case 'ESATTO':
                          if ($value == $esito){
                            echo '<span class="dot-won"></span>';
                          }
                          else {
                            echo '<span class="dot-lost"></span>';
                          }
                          break;
                        case 'UNDER':
                          if ($esito < $value){
                            echo '<span class="dot-won"></span>';
                          }
                          else {
                            echo '<span class="dot-lost"></span>';
                          }
                          break;
                        case 'OVER':
                          if ($esito > $value){
                            echo '<span class="dot-won"></span>';
                          }
                          else {
                            echo '<span class="dot-lost"></span>';
                          }
                          break;
                        default:

                          break;
                      }
                    }
                    else {
                      echo '<span class="dot-open"></span>';
                    }


                    if (!is_null($esito))
                      echo "</h6>
                      <i>Terminato con esito $esito</i>
                      <br /><br />";
                    else
                      echo "</h6>
                      <i>Aperto</i>
                      <br /><br />";
                    break;
                  default:
                    break;
                }

              }
            ?>
          </div>
        </div>
      @endfor
    </div>
  </div>
</div>
@endsection

@section('js')
<script src="{{ asset('js/my-bet.js') }}"></script>
@endsection

@section('css')
<link href="{{ asset('css/my-bet.css') }}" rel="stylesheet">
@endsection
