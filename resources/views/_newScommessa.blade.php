@guest
<span>ACCEDI X GICARE</span>
@else
<div class="col-md-12" id="newScommessa" ver="">

  SN
  <div class="card">
    <div class="card-body">
      <div class="mb-2 ml-0 mr-0 row">
        <button class="btn btn-primary col-2">
          Back
        </button>
      </div>

      <div class="card">
        <div class="btn card-header" data-toggle="collapse" data-target="#SN_2_1">
          <h5 class="m-0">
              Andreoli ammesso agli esami?
          </h5>
        </div>
        <div id="SN_2_1" class="collapse row pl-2 pr-2">
          <div class="card-body col-6 pt-0 pb-1 border-right">
            <div class="intestazione">SI</div>
            <div class="click active">
              <div class="">1.56</div>
              <input type="radio" name="SN_2_1" data-value="SI" data-quote="'.round($v, 2).'"/>
            </div>
          </div>
          <div class="card-body col-6 pt-0 pb-1 border-left">
            <div class="intestazione">NO</div>
            <div class="click">
              <div class="">1.56</div>
              <input type="radio" name="'.$key.'" data-value="NO" data-quote="'.round($v, 2).'"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  MT
  <div class="card">
    <div class="card-body">
      <div class="mb-2 ml-0 mr-0 row">
        <button class="btn btn-primary col-2">
          Back
        </button>
        <div class="col-10 text-justify">
          Insegnate accompagnatore
        </div>
      </div>

      <div class="card row ml-0 mr-0" style="flex-direction: row;">
        <div class="card-header col-6" style="border-right: 1px solid rgba(0,0,0,.125); text-align: center;">
          <h5 class="m-0">Baga</h5>
        </div>
        <div class="card-body col-6 p-0">
          <div class="click active">1.56</div>
          <input type="radio" name="MT_1" data-value="Baga" data-quote="'.round($v, 2).'"/>
        </div>
      </div>
      <div class="card row ml-0 mr-0" style="flex-direction: row;">
        <div class="card-header col-6" style="border-right: 1px solid rgba(0,0,0,.125); text-align: center;">
          <h5 class="m-0">Baga</h5>
        </div>
        <div class="card-body col-6 p-0">
          <div class="click">1.56</div>
          <input type="radio" name="'.$key.'" data-value="'.$k.'" data-quote="'.round($v, 2).'"/>
        </div>
      </div>

    </div>
  </div>


  EUO
  <div class="card">
    <div class="card-body">
      <div class="mb-2 ml-0 mr-0 row">
        <button class="btn btn-primary col-2">
          Back
        </button>
        <div class="col-10 text-justify">
          Titolo se c'è
        </div>
      </div>

      <div class="card">
        <div class="btn card-header" data-toggle="collapse" data-target="#MT_1_Gallina">
          <h5 class="m-0">
              Gallina
          </h5>
        </div>
        <div id="MT_1_Gallina" class="collapse">
          <div class="card-body row pt-0 pb-1">
            <div class="col-sm-4">
              <div class="intestazione">VOTO ESATTO</div>

              <div class="row click active">
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

      <div class="card">
        <div class="btn card-header" data-toggle="collapse" data-target="#MT_1_Gallina">
          <h5 class="m-0">
              Gallina
          </h5>
        </div>
        <div id="MT_1_Gallina" class="collapse">
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
