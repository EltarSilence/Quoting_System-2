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
		data : [],
		success : function(data){
			for(var i = 0; i < data.length; i++){
				let chiave = data[i]['fileD'];
				html += '<button class="btn btn-primary verifica" id="'+chiave+'"> - Verifica di ... </button>';
			}
			$('#newScommessa').html(html);
			$(".verifica").on('click', function(){
				$('#newScommessa').attr('ver', $(this).attr('id'));
				setVerifica();
			});
		}
	});
}
function setVerifica(){
	var html = "";
	var formData = new FormData();
	formData.append('scommessa', $('#newScommessa').attr('ver'));
	$.ajax({
		url : "/getScommessa",
		type : "POST",
		dataType : 'json',
		data : {'scommessa': $('#newScommessa').attr('ver')},
		success : function(data){
			debugger;
			/*
			for(var i = 0; i < data.length; i++){
				let chiave = data[i]['fileD'];
				html += '<button class="btn btn-primary verifica" id="'+chiave+'"> - Verifica di ... </button>';
			}
			$('#newScommessa').html(html);
			$(".verifica").on('click', function(){
				$('#newScommessa').attr('ver', $(this).attr('id'));
				setVerifica();
			});*/
		},
		error : function(e){
			debugger;
		}
	});



}
