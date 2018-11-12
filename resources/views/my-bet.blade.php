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

                $txt = '{ "0" : { "titolo": "Prof1", "quota" : 1.56 }, "1" : { "titolo": "Prof2", "quota" : 1.6 } }';
                $json = json_decode($txt, true);

                $key = $details[$i][$k]['chiaveM'];
                var_dump($key);
                $vl = $details[$i][$k]['valueM'];
                $category = explode('_', $key)[0];

                switch ($category) {
                  case 'EUO':
                    $id = explode('_', $key)[1];
                    $nome = explode('_', $key)[2];
                    $tipo = $details[$i][$k]['tipoM'];
                    $value = $details[$i][$k]['valueM'];
                    $quota = $details[$i][$k]['quotaM'];
                    $esito = $details[$i][$k]['risultatoR'];

                    echo "<i>$id</i>
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
                      <i>Verifica riconsegnata - $esito</i>
                      <br /><br />";
                    else
                      echo "</h6>
                      <i>Scommessa aperta</i>
                      <br /><br />";
                    break;
                  case 'SN':
                    $id = explode('_', $key)[1];
                    $subj = explode('_', $key)[2];
                    $value = $details[$i][$k]['valueM'];
                    $quota = $details[$i][$k]['quotaM'];
                    $desc = $json[$id]['descrizione'];
                    $esito = $details[$i][$k]['risultatoR'];

                    echo "<h6>$desc SI/NO:<b> $value</b> ($quota) ";
                    if (!is_null($esito)){
                      if ($value == $esito){
                        echo '<span class="dot-won"></span>';
                      }
                      else {
                        echo '<span class="dot-lost"></span>';
                      }
                    }
                    else {
                      echo '<span class="dot-open"></span>';
                    }
                    if (!is_null($esito))
                      echo "</h6>
                      <i>Evento terminato - $esito</i>
                      <br /><br />";
                    else
                      echo "</h6>
                      <i>Scommessa aperta</i>
                      <br /><br />";
                    break;
                  case 'MT':
                    $id = explode('_', $key)[1];
                    $desc = $details[$i][$k]['descrizioneD'];
                    $titolo = $json[$vl]['titolo'];
                    $quota = $details[$i][$k]['quotaM'];
                    $esito = $details[$i][$k]['risultatoR'];

                    echo "<i>$desc</i>
                    <h6>$titolo: <b></b> ($quota) ";
                    if (!is_null($esito)){
                      if ($esito == $vl){
                        echo '<span class="dot-won"></span>';
                      }
                      else {
                        echo '<span class="dot-lost"></span>';
                      }
                    }
                    else {
                      echo "</h6>
                      <i>Scommessa aperta</i>
                      <br /><br />";
                    }

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
