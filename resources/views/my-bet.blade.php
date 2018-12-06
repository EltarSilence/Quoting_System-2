@extends('layouts.app')

@section('content')
<div class="col-md-12">
  <div class="row justify-content-center">
    <div class="col-md-4" id="list">
      @for ($i = 0; $i < count($scommesse); $i++)
        <div class="card" data-det="{!! $i !!}">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">
              <h6>
                N. Biglietto #{!! $scommesse[$i]['id'] !!}<br />
                Puntata: {!! $scommesse[$i]['puntata'] !!}
                <i class="icon icon-exacoin"></i>
                @if ($scommesse[$i]['isWon'] > 0)
                  <span class="dot dot-won" data-toggle="tooltip" title="Vincente" data-placement="left"></span>
                @elseif ($scommesse[$i]['isWon']  == 0)
                    <span class="dot dot-lost" data-toggle="tooltip" title="Perdente" data-placement="left"></span>
                @else
                  <span class="dot dot-open" data-toggle="tooltip" title="Aperta" data-placement="left"></span>
                @endif
              </h6>
            </li>
          </ul>
        </div>
      @endfor
    </div>
    <div class="col-md-8" id="detail">
      @for ($i = 0; $i < count($scommesse); $i++)
        <div class="card" data-det="{!! $i !!}">
          <div class="card-header">
            <h5 class="mb-0">
                N. #{!! $scommesse[$i]['id'] !!}
            </h5>
          </div>

          <div class="card-body">
            @for ($k = 0; $k < count($scommesse[$i]['multiple']); $k++)


              @if (explode('_', $scommesse[$i]['multiple'][$k]['chiave'])[0] == "EUO")

                <i>Cod. palinsesto {!! md5($scommesse[$i]['multiple'][$k]['id']) !!}</i><br>
                <small>{!! explode('|',$scommesse[$i]['multiple'][$k]['descrizione'])[0] !!}</small> -
                {!! explode('|',$scommesse[$i]['multiple'][$k]['descrizione'])[1] !!}
                <h6>{!! explode('_',$scommesse[$i]['multiple'][$k]['chiave'])[2] !!}: <b>
                  {!! $scommesse[$i]['multiple'][$k]['tipo'] !!}
                  {!! $scommesse[$i]['multiple'][$k]['value'] !!}</b> - {!! $scommesse[$i]['multiple'][$k]['quota'] !!}

                  @if($scommesse[$i]['multiple'][$k]['isWon'] > 0)
                    <span class="dot dot-won" data-toggle="tooltip" title="Vincente" data-placement="left"></span>
                  @elseif($scommesse[$i]['multiple'][$k]['isWon'] == 0)
                    <span class="dot dot-lost" data-toggle="tooltip" title="Perdente" data-placement="left"></span>
                  @else
                    <span class="dot dot-open" data-toggle="tooltip" title="Aperta" data-placement="left"></span>
                  @endif

                  @if($scommesse[$i]['multiple'][$k]['isWon'] < 0)
                    <h6>Sconosciuto</h6>
                  @else
                    <h6> Scom. Chiusa con esito {!! $scommesse[$i]['multiple'][$k]['risultato'] !!}</h6>
                  @endif

              @endif

              @if (explode('_', $scommesse[$i]['multiple'][$k]['chiave'])[0] == "SN")

                <i>Cod. palinsesto {!! md5($scommesse[$i]['multiple'][$k]['id']) !!}</i><br>
                {!! $scommesse[$i]['multiple'][$k]['descrizione'] !!}:
                <b>{!! $scommesse[$i]['multiple'][$k]['value'] !!}</b>
                - {!! $scommesse[$i]['multiple'][$k]['quota'] !!}
                @if($scommesse[$i]['multiple'][$k]['isWon'] > 0)
                  <span class="dot dot-won" data-toggle="tooltip" title="Vincente" data-placement="left"></span>
                @elseif($scommesse[$i]['multiple'][$k]['isWon'] == 0)
                  <span class="dot dot-lost" data-toggle="tooltip" title="Perdente" data-placement="left"></span>
                @else
                  <span class="dot dot-open" data-toggle="tooltip" title="Aperta" data-placement="left"></span>
                @endif

              @endif

              @if (explode('_', $scommesse[$i]['multiple'][$k]['chiave'])[0] == "MT")

                <i>Cod. palinsesto {!! md5($scommesse[$i]['multiple'][$k]['id']) !!}</i><br>
                {!! $scommesse[$i]['multiple'][$k]['descrizione'] !!}:
                <b>{!! explode('-', $scommesse[$i]['multiple'][$k]['value'])[1] !!}</b>
                - {!! $scommesse[$i]['multiple'][$k]['quota'] !!}
                @if($scommesse[$i]['multiple'][$k]['isWon'] > 0)
                  <span class="dot dot-won" data-toggle="tooltip" title="Vincente" data-placement="left"></span>
                @elseif($scommesse[$i]['multiple'][$k]['isWon'] == 0)
                  <span class="dot dot-lost" data-toggle="tooltip" title="Perdente" data-placement="left"></span>
                @else
                  <span class="dot dot-open" data-toggle="tooltip" title="Aperta" data-placement="left"></span>
                @endif

              @endif

              <hr>
            @endfor
            <h6>Quota totale: {!! floor($scommesse[$i]['quotaFinale']*100)/100 !!}</h6>
            <h6>Puntata: {!! $scommesse[$i]['puntata'] !!}<i class="icon icon-exacoin"></i></h6>
            <h6>Possibile Vincita: {!! floor($scommesse[$i]['puntata'] * $scommesse[$i]['quotaFinale']) !!} <i class="icon icon-exacoin"></i></h6>
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
