@guest
@else
<div class="card">
  <form class="card-body" method="POST" action="\addScommessa">
    <div class="card mb-2">
      <div class="card-header">
        Multiple:
      </div>
      <ul class="p-0 list-group-flush mb-0" id="multipla">
      </ul>
    </div>
    <center>
      <h5 class="mb-1" style="height: 40px;">
        <div class="row ml-0 mr-0">
          <div class="col-8 text-left">
            Quota finale:
          </div>
          <div class="col-4" id="quota_finale">
            X.XX
          </div>
        </div>
      </h5>
      <h5 class="mb-1" style="height: 40px;">
        <div class="row ml-0 mr-0">
          <div class="col-5 text-left">
            Puntata:
          </div>
          <div class="col-7 row mr-0 ml-0">
            <button class="btn btn-default col-2 pl-0 pr-0" type="button" id="decr">
              <i class="icon-down"></i>
            </button>
            <input class="col-8" id="importo" type="number" min="100" max="10000" value="100">
            <button class="btn btn-default col-2 pl-0 pr-0" type="button" id="aum">
              <i class="icon-up"></i>
            </button>
          </div>
        </div>
      </h5>
      <h5 class="mb-1" style="height: 40px;">
        <div class="row ml-0 mr-0">
          <div class="col-8 text-left">
            Possibile Vincita:
          </div>
          <div class="col-4" id="vincita">
            XXX<i class="icon icon-exacoin"></i>
          </div>
        </div>
      </h5>
      <button type="submit" id="scommetti" class="btn btn-primary mt-2">
        Scommetti
      </button>
    </center>
    @csrf
  </form>
</div>
@endguest
