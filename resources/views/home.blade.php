@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
          <main>

          </main>
        </div>
        <div class="col-md-4">
          <main>
            @include('_topWin', ['weekWin' => $weekWin, 'mouthWin' => $mouthWin])
          </main>
        </div>
    </div>
</div>
@endsection
@section('js')
<script src="{{ asset('js/_topWin.js') }}"></script>
@endsection
