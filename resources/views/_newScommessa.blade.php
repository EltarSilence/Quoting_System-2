@guest
{{--
<span>ACCEDI X GICARE</span>
@else
--}}
<div class="col-md-12" id="newScommessa" ver="">
  @for($i = 0; $i < count($verifiche); $i++)
  <button class="btn btn-primary verifica" id="{!! $verifiche[$i]['chiave'] !!}">
     {!! date("d/m/Y", strtotime(explode("_", $verifiche[$i]['chiave'])[1])) !!} - Verifica di {!!  explode("_", $verifiche[$i]['chiave'])[0] !!}
 </button>
  @endfor
</div>
@endguest
