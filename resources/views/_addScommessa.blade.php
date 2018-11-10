@guest
@else
<div class="card">
  <form class="card-body" method="POST" action="\addScommessa">

    <div class="card">
      <div class="card-header">
        Multiple
      </div>
      <div class="card-body" id="multipla">

        <div class="card">

        </div>

      </div>
    </div>

    <center>
      <h5 class="mb-0">
        <div class="row ml-0 mr-0">
          <div class="col-8 text-left">
            Quota finale:
          </div>
          <div class="col-4" id="quota_finale">
            5.14
          </div>
        </div>
      </h5>

      <div class="row mr-0 ml-0">
        <button class="btn btn-default col-3" id="aum">
          <i class="icon icon-up"></i>
        </button>
        <input class="col-6" id="importo" type="number" min="200" max="10000" value="100">
        <button class="btn btn-default col-3" id="decr">
          <i class="icon icon-down"></i>
        </button>
      </div>


      <h5 class="mb-0">
        <div class="row ml-0 mr-0">
          <div class="col-8 text-left">
            Possibile Vincita:
          </div>
          <div class="col-4" id="vincita">
            1000<i class="icon icon-exacoin"></i>
          </div>
        </div>
      </h5>

      <button id="scommetti" class="btn btn-primary mt-2">
        Scommetti
      </button>


    </center>



  </form>
</div>
@endguest
