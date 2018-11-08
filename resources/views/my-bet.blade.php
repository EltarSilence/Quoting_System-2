@extends('layouts.app')

@section('content')

<style>
  .dot-won {
    height: 11px;
    width: 11px;
    background-color: green;
    border-radius: 50%;
    display: inline-block;
  }
  .dot-lost {
    height: 11px;
    width: 11px;
    background-color: red;
    border-radius: 50%;
    display: inline-block;
  }
  .dot-open {
    height: 11px;
    width: 11px;
    background-color: blue;
    border-radius: 50%;
    display: inline-block;
  }
</style>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
          @for ($i = 0; $i < count($userBets); $i++)
            <div class="card" style="width: 25rem;">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">
                  <h6>
                    Codice Biglietto #{!! $userBets[$i]['idS'] !!}<br />
                    Puntata: {!! $userBets[$i]['coinS'] !!}
                    <i class="icon icon-exacoin"></i>
                    @if ($userBets[$i]['pagataS'] == 1)
                      @if ($isWon[$i] > 0)
                        <span class="dot-won"></span>
                      @endif
                      @if ($isWon[$i] == 0)
                        <span class="dot-lost"></span>
                      @endif
                    @else
                      <span class="dot-open"></span>
                    @endif
                  </h6>
                </li>
              </ul>
            </div>
          @endfor
        </div>
        <div class="col-md-8">
          <div id="accordion">
            @for ($i = 0; $i < count($userBets); $i++)
              <div class="card">
                <div class="card-header" id="heading_<?php echo $userBets[$i]['idS']; ?>">
                  <h5 class="mb-0">
                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse_<?php echo $userBets[$i]['idS']; ?>" aria-expanded="false" aria-controls="collapseTwo">
                      Biglietto #{!! $userBets[$i]['idS'] !!}
                    </button>
                  </h5>
                </div>
                <div id="collapse_<?php echo $userBets[$i]['idS']; ?>" class="collapse" aria-labelledby="heading_<?php echo $userBets[$i]['idS']; ?>" data-parent="#accordion">
                  <div class="card-body">
                    <?php
                      for ($k=0; $k<count($details); $k++){
                        $key = $details[$k]['chiaveM'];
                        $category = explode('_', $key)[0];
                        
                        switch ($category) {
                          case 'EUO':
                            $materia = explode('_', $key)[1];
                            $data = explode('_', $key)[2];
                            $nome = explode('_', $key)[3];
                            $tipo = $details[$k]['tipoM'];
                            $value = $details[$k]['valueM'];
                            $quota = $details[$k]['quotaM'];
                            $esito = $details[$k]['risultatoR'];

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
              </div>
            @endfor
          </div>
        </div>
    </div>
</div>
@endsection
