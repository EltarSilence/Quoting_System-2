@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
          <main>
            @include('_topWin')
          </main>
        </div>
        <div class="col-md-4">
          <main>
            @include('_topWin')
          </main>
        </div>
    </div>
</div>
@endsection
