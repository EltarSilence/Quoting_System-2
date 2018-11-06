@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
          @for($i=0; $i<count($userBets); $i++)
            <div>
              {!! $userBets[$i] !!}
            </div>
          @endfor
        </div>
        <div class="col-md-8">
        </div>
    </div>
</div>
@endsection
