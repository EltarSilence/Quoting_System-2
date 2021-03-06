@extends('layouts.app')

@section('content')
<div class="col-md-12">
    <div class="row justify-content-center">
        <div class="col-md-8">
          <main>
            @include('_newScommessa')
          </main>
        </div>
        <div class="col-md-4">
          <main>
            @include('_addScommessa')
          </main>
        </div>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('js/_newScommessa.js') }}"></script>
<script src="{{ asset('js/_addScommessa.js') }}"></script>
<script src="{{ asset('js/scommessa.js') }}"></script>
<script>
  var scommessa = new Scommessa();
</script>
@endsection

@section('css')
<link href="{{ asset('css/_newScommessa.css') }}" rel="stylesheet">
<link href="{{ asset('css/_addScommessa.css') }}" rel="stylesheet">
@endsection
