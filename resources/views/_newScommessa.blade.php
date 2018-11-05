@guest
{{--
<span>ACCEDI X GICARE</span>
@else
--}}
<div class="col-md-12" id="newScommessa" ver="">
  @for($i = 0; $i < count($verifiche); $i++)
  <a href="scommesse.php?verifica= {!!$verifiche[$i]['chiave'] !!}">
  <button class="btn btn-primary" type="button" style="width: 100%;">
     {!! date("d/m/Y", strtotime(explode("_", $verifiche[$i]['chiave'])[1])) !!} - Verifica di {!!  explode("_", $verifiche[$i]['chiave'])[0] !!}</button>
  </a>
  @endfor
</div>
@endguest
