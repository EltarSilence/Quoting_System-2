@extends('layouts.app')

@section('content')
<div class="col-md-12">
    <div class="row justify-content-center">
        <div class="col-md-8">
          <main>
          </main>
        </div>
        <div class="col-md-4">
          <main>
            @include('_topVincite', ['weekWin' => $weekWin, 'mouthWin' => $mouthWin])
          </main>
        </div>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('js/_topVincite.js') }}"></script>
@endsection

@section('css')
<link href="{{ asset('css/_topVincite.css') }}" rel="stylesheet">
@endsection
