@guest
<span>ACCEDI X GICARE</span>
@else
<div class="col-md-12" id="newScommessa" ver="">

  EUO
  <div class="card">
    <div class="card-body">
      <button class="btn btn-primary">
        Back
      </button>
      Titolo se c'è

      <div class="card">
        <div class="btn card-header" data-toggle="collapse" data-target="#collapseOne">
          <h5 class="m-0">
              Gallina
          </h5>
        </div>
        <div id="collapseOne" class="collapse">
          <div class="card-body row pt-0 pb-1">
            <div class="col-sm-4">
              <div class="intestazione">VOTO ESATTO</div>

              <div class="row click">
                <div class="col-6 font-weight-bold">10</div>
                <div class="col-6">1.56</div>
                <input type="radio" name="'.$key.'" data-type="E" data-value="'.$k.'" data-quote="'.round($v, 2).'"/>
              </div>

            </div>
            <div class="col-sm-4">
              <div class="intestazione">UNDER</div>

              <div class="row click">
                <div class="col-6 font-weight-bold">6.25</div>
                <div class="col-6">1.56</div>
                <input type="radio" name="'.$key.'" data-type="E" data-value="'.$k.'" data-quote="'.round($v, 2).'"/>
              </div>

            </div>
            <div class="col-sm-4">
              <div class="intestazione">OVER</div>

              <div class="row click">
                <div class="col-6 font-weight-bold">6.25</div>
                <div class="col-6">1.56</div>
                <input type="radio" name="'.$key.'" data-type="E" data-value="'.$k.'" data-quote="'.round($v, 2).'"/>
              </div>
              
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
@endguest
