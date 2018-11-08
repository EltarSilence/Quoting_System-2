$(document).ready(function (){
	$.ajaxSetup({
		headers : {
			'X-CSRF-TOKEN' : $('meta[name="csrf-token"]').attr('content')
		}
	});
	if($('#newScommessa').attr('ver') != null){
		if($('#newScommessa').attr('ver') == ""){
			setEmpty();
		}else{
			setVerifica();
		}
	}
});

function setEmpty(){
	var html = "";
	$.ajax({
		url : "/getDisponibili",
		type : "POST",
		data : {},
		success : function(data){
			for(var i = 0; i < data.length; i++){
				let chiave = data[i]['fileD'];
				html += '<button class="btn btn-primary verifica" id="'+chiave+'"> - Verifica di ... </button>';
			}
			//$('#newScommessa').html(html);
			$(".verifica").on('click', function(){
				$('#newScommessa').attr('ver', $(this).attr('id'));
				setVerifica();
			});
		}
	});
}
function setVerifica(){
	var html = "";
	$.ajax({
		url : "/getScommessa",
		type : "POST",
		data : {'scommessa': "SN_1_1"},
		//data : {'scommessa': $('#newScommessa').attr('ver')},
		success : function(data){
			html = '<div class="card"><div class="card-body"><div class="mb-2 ml-0 mr-0 row"><button class="btn btn-primary col-2 back">Back</button></div>';
			html += getHtml(data);
			html += '</div></div>';
			$('#newScommessa').html(html);
			$(".back").on('click', function(){
				$('#newScommessa').attr('ver', "");
				setEmpty();
			});
		}
	});

	function getHtml(data){
		html = '';
		switch (data['type']) {
			case "EUO":

				break;
			case "SN":
				for(let i = 0; i < data['file'].length; i++){
					html += '<div class="card mt-1"><div class="btn card-header" data-toggle="collapse" data-target="#' + data['filename'] + '_' + i + '"><h5 class="m-0">' + data['file'][i]['descrizione'] + '</h5></div><div id="' + data['filename'] + '_' + i + '" class="collapse row pl-2 pr-2"><div class="card-body col-6 pt-0 pb-1 border-right"><div class="intestazione">SI</div><div class="click"><div>' + data['file'][i]['SI'] + '</div><input type="radio" name="' + data['filename'] + '_' + i + '" data-value="SI" data-quote="' + data['file'][i]['SI'] + '"/></div></div><div class="card-body col-6 pt-0 pb-1 border-left"><div class="intestazione">NO</div><div class="click"><div>' + data['file'][i]['NO'] + '</div><input type="radio" name="' + data['filename'] + '_' + i + '" data-value="NO" data-quote="' + data['file'][i]['NO'] + '"/></div></div></div></div>';
				}
				break;
			case "MT":
				html += '<div class="card"><div class="btn card-header"><h5 class="m-0">' + data['file']['descrizione'] + '</h5></div>';
				for(let i = 0; i < Object.keys(data['file']).length - 1; i++){
					html += '<div class="card-body row ml-0 mr-0 border pt-1 pb-1"><div class="intestazione col-6">' + data['file'][i]['titolo'] + '</div><div class="click col-6"><div>' + data['file'][i]['quota'] + '</div><input type="radio" name="' + data['filename'] + '" data-value="' + i + '" data-quote="' + data['file'][i]['quota'] + '"/></div></div>';
				}
				html += '</div>';
				break;
			default:
				break;
		}
		return html;
	}


}
