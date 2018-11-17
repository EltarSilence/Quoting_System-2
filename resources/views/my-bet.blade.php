@extends('layouts.app')

@section('content')
<script>
  $(document).ready(function(){
      $('[data-toggle="tooltip"]').tooltip();
  });
</script>
<div class="col-md-12">
  <div class="row justify-content-center">
    <div class="col-md-4" id="list">
      @for ($i = 0; $i < count($userBets); $i++)
        <div class="card" data-det="{!! $i !!}">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">
              <h6>
                N. Biglietto #{!! $userBets[$i]['idS'] !!}<br />
                Puntata: {!! $userBets[$i]['coinS'] !!}
                <i class="icon icon-exacoin"></i>
                @if ($userBets[$i]['pagataS'] == 1 && $isWon[$i] > 0)
                  <span class="dot dot-won" data-toggle="tooltip" title="Vincente"></span>
                @elseif ($userBets[$i]['pagataS'] == 1 && $isWon[$i] == 0)
                    <span class="dot dot-lost" data-toggle="tooltip" title="Perdente"></span>
                @else
                  <span class="dot dot-open" data-toggle="tooltip" title="Aperta"></span>
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
                N. #{!! $userBets[$i]['idS'] !!}
            </h5>
          </div>
          <div class="card-body">
            <?php
            $q_totale = 1;
              for ($k=0; $k<count($details[$i]); $k++){


                $txt = '{ "0" : { "titolo": "COLUCCI E", "quota" : 1.10 }, "1" : { "titolo": "BAGA F", "quota" : 5.50 } }';
                $json = json_decode($txt, true);

                $key = $details[$i][$k]['chiaveM'];
                //var_dump($key);
                $vl = $details[$i][$k]['valueM'];
                $category = explode('_', $key)[0];

                switch ($category) {
                  case 'EUO':
                    $id = explode('_', $key)[1];
                    $nome = explode('_', $key)[2];
                    $tipo = $details[$i][$k]['tipoM'];
                    $value = $details[$i][$k]['valueM'];
                    $desc = $details[$i][$k]['descrizioneD'];
                    $maxdata = explode("|", $desc)[0];
                    $testo_scom = explode("|", $desc)[1];
                    $q_totale *= $details[$i][$k]['quotaM'];
                    //stampa CIFRA,DD
                    $quota = number_format((float)$details[$i][$k]['quotaM'], 2, ',', '');

                    $esito = $details[$i][$k]['risultatoR'];

                    echo "<i>Cod. palinsesto ".md5($id)."</i><br />
                    <small>$maxdata</small> - $testo_scom
                    <h6>$nome: <b>$tipo $value</b> ($quota) ";
                    if (!is_null($esito)){
                      switch ($tipo) {
                        case 'ESATTO':
                          if ($value == $esito){
                            echo '<span class="dot dot-won" data-toggle="tooltip" title="Vincente"></span>';
                          }
                          else {
                            echo '<span class="dot dot-lost" data-toggle="tooltip" title="Perdente"></span>';
                          }
                          break;
                        case 'UNDER':
                          if ($esito < $value){
                            echo '<span class="dot dot-won" data-toggle="tooltip" title="Vincente"></span>';
                          }
                          else {
                            echo '<span class="dot dot-lost" data-toggle="tooltip" title="Perdente"></span>';
                          }
                          break;
                        case 'OVER':
                          if ($esito > $value){
                            echo '<span class="dot dot-won" data-toggle="tooltip" title="Vincente"></span>';
                          }
                          else {
                            echo '<span class="dot dot-lost" data-toggle="tooltip" title="Perdente"></span>';
                          }
                          break;
                        default:

                          break;
                      }
                    }
                    else {
                      echo '<span class="dot dot-open" data-toggle="tooltip" title="Aperta"></span>';
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
                    $q_totale *= $quota;
                    $desc = $details[$i][$k]['descrizioneD'];
                    $esito = $details[$i][$k]['risultatoR'];

                    echo "<h6>$desc SI/NO:<b> $value</b> ($quota) ";
                    if (!is_null($esito)){
                      if ($value == $esito){
                        echo '<span class="dot dot-won" data-toggle="tooltip" title="Vincente"></span>';
                      }
                      else {
                        echo '<span class="dot dot-lost" data-toggle="tooltip" title="Perdente"></span>';
                      }
                    }
                    else {
                      echo '<span class="dot dot-open" data-toggle="tooltip" title="Aperta"></span>';
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
                    $titolo = $json[explode("-", $vl)[0]]['titolo'];
                    $quota = $details[$i][$k]['quotaM'];
                    $q_totale *= $quota;
                    $esito = $details[$i][$k]['risultatoR'];

                    if (is_null($esito)) {
                    //  $vincente = $json[$esito]['titolo'];
                    }
                    else {
                      $vincente = "-";
                    }

                    echo "<i>$desc</i>
                    <h6>Vincente: <b>$titolo</b> ($quota) ";
                    if (!is_null($esito)){

                      if ($esito == $vl){
                        echo '<span class="dot dot-won" data-toggle="tooltip" title="Vincente"></span></h6><br />';
                      }
                      else {
                        echo '<span class="dot dot-lost" data-toggle="tooltip" title="Perdente"></span>
                        </h6><i>Vincente: '.$vincente.'</i>
                        <br /><br />
                        </h6><br /><br />';
                      }
                    }
                    else {
                      echo "</h6>
                      <i>Scommessa aperta</i>
                      <br /><br />";
                    }

                    break;
                }

                echo '<hr>';
              }
              echo "<h6>Quota totale: ".number_format((float)$q_totale, 2, ',', '').'</h6>';
              echo "<h6>Importo versato: ".$userBets[$i]['coinS'].'<i class="icon icon-exacoin"></i></h6>';
              echo '<h6>Pagabile: '.floor($userBets[$i]['coinS'] * $q_totale).' <i class="icon icon-exacoin"></i></h6>';
              echo '<h6>Esito finale della scommessa: ';
              if ($isWon[$i] > 0) {
                echo 'Vincente';
              }
              else {
                if ($isWon[$i] == 0) {
                  echo 'Perdente';
                }
                else {
                  echo 'Aperta';
                }
              }
              echo "</h6>";
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
