@extends('layouts.app')

@section('content')
<div class="col-md-12">
    <div class="row justify-content-center">
        <div class="col-md-8">
          <main>
            @include('_newScommessa', ['verifiche' => $verifiche])
          </main>
        </div>
        <div class="col-md-4">
          <main>

            {{-- @include('_topWin', ['weekWin' => $weekWin, 'mouthWin' => $mouthWin]) --}}
          </main>
        </div>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('js/_topWin.js') }}"></script>
<script src="{{ asset('js/scommessa.js') }}"></script>
<script>
  var scommessa = new Scommessa();
</script>
@endsection

@section('css')
<link href="{{ asset('css/_topWin.css') }}" rel="stylesheet">
@endsection
