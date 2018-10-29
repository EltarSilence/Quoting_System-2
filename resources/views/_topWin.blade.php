<div class="container" id="topWin">
  <div id="vincita1">
    <div>Top Vincite Settimanali</div>
    <center>
      @for($i = 0; $i < count($weekWin); $i++)
      <div class="rank">
				<div class="img"></div>
				<div class="nome">{!! array_keys($weekWin[$i])[0] !!}</div>
				<div class="coin">{!! $weekWin[$i][array_keys($weekWin[$i])[0]] !!}<i class="icon icon-exacoin"></i></div>
			</div>
      @endfor
  </div>
  <div id="vincita2">
    <div>Top Vincite Mensili</div>
      <center>
        @for($i = 0; $i < count($mouthWin); $i++)
        <div class="rank">
  				<div class="img"></div>
  				<div class="nome">{!! array_keys($mouthWin[$i])[0] !!}</div>
  				<div class="coin">{!! $mouthWin[$i][array_keys($mouthWin[$i])[0]] !!}<i class="icon icon-exacoin"></i></div>
  			</div>
        @endfor
    </center>
  </div>
</div>
