class Scommessa{
	constructor(){
		this.list = new Array();
	}
	addMultipla(chiave, type, value, quota, descrizione){
		if(chiave != "" && value != "" && quota != "" && quota > 0){
			if(chiave.includes('EUO')){
				this.add(chiave, type, value, quota, descrizione);
			}else if(chiave.includes('SN')){
				this.add(chiave, "", value, quota, descrizione);
			}else if(chiave.includes('MT')){
				this.add(chiave, "", value, quota, descrizione);
			}else{
					//dai l'errore
			}
		}else{
			//dai un errore
		}
	}
	add(chiave, type, value, quota, descrizione){
		var index = -1;
		for(let i = 0; i < this.size(); i++){
			if(this.list[i]['chiave'] == chiave){
				index = i;
			}
		}
		if(index >= 0){
			for(let i = index; i < this.size(); i++){
				this.list[i] = this.list[i + 1]
			}
			this.list.pop();
		}
		var a = new Array();
		a['chiave'] = chiave;
		a['type'] = type;
		a['value'] = value;
		a['quota'] = quota;
		a['descrizione'] = descrizione;
		this.list.push(a);
		this.setTheActive();
	}
	removeMultipla(chiave){
		if(chiave != ""){
			var index = -1;
			for(let i = 0; i < this.size(); i++){
				if(this.list[i]['chiave'] == chiave){
					index = i;
				}
			}
			if(index >= 0){
				for(let i = index; i < this.size(); i++){
					this.list[i] = this.list[i + 1]
				}
				this.list.pop();
				this.setTheActive();
			}else{
				//non esiste non ho nulla da rimuovere
			}
		}else{
			//dai un errore
		}
	}
	scommetti(coin){
		/*
		if(this.size() > 0 && coin != ""){
			var formdata = new FormData();
			formdata.append("coin", coin);
			for(var i = 0; i < this.size(); i++){
				var s = this.list[0]['chiave']+"|"+this.list[0]['type']+"|"+this.list[0]['value'];
				formdata.append("multiple", s);
			}
			$.ajax({
				url: "sendData.php",
				type: 'POST',
				data: formdata,
				processData: false,
				contentType: false,
				beforeSend: function(){
					//show eventuale loader
				},
				success: function (data){
					//hide eventuale loader
					debugger;

					this.list = new Array();
				},
				error: function(er){
					//show errori
					console.log(er);
					debugger;
				}
			});
		}else{
			//dai un errore
		}*/
	}
	size(){
		return this.list.length;
	}
	getMultipla(i){
		return this.list[i];
	}
	getQuotaFinale(){
		var f = 1;
		for(let i = 0; i < this.size(); i++){
			f = f * parseFloat(this.list[i]['quota']);
		}
		return f.toFixed(2);
	}
	setTheActive(){
		$.each($('.click input[type=radio]', $('#newScommessa')), function(k, v){
			v.checked = false;
			$(v).parent().removeClass('active');
		});
		$('#multipla').html('');
		for(var i = 0; i < this.size(); i++){
			var m = this.getMultipla(i);
			var mu = null;
			if(m['chiave'].includes('EUO_')){
				mu = $('.click input[type=radio][name="' + m['chiave'] + '"][data-type="' + m['type'] + '"][data-value="' + m['value'] + '"]', $('#newScommessa'))[0];

			}else{
				mu = $('.click input[type=radio][name="' + m['chiave'] + '"][data-value="' + m['value'] + '"]', $('#newScommessa'))[0];
			}
			$(mu).parent().addClass('active');
			$(mu).checked = true;
			if(m['chiave'].includes('EUO_')){
				$('#multipla').append('<li class="list-group-item">' + m['descrizione'] + '<div class="row"><div class="col-7">' + m['chiave'].split('_')[2] + ' - ' + m['type'] + ' - ' + m['value'] + '</div><div class="col-3"><b>' + m['quota'] + '</b></div><div class="col-2"><i class="icon icon-cancel" data-key="' + m['chiave'] + '"></i></div></div></li>');
			}else if(m['chiave'].includes('SN_')){
				$('#multipla').append('<li class="list-group-item">' + m['descrizione'] + '<div class="row"><div class="col-7">' + m['value'] + '</div><div class="col-3"><b>' + m['quota'] + '</b></div><div class="col-2"><i class="icon icon-cancel" data-key="' + m['chiave'] + '"></i></div></div></li>');
			}else if(m['chiave'].includes('MT_')){
				$('#multipla').append('<li class="list-group-item">' + m['descrizione'] + '<div class="row"><div class="col-7">' + m['value'].split('-')[1] + '</div><div class="col-3"><b>' + m['quota'] + '</b></div><div class="col-2"><i class="icon icon-cancel" data-key="' + m['chiave'] + '"></i></div></div></li>');
			}
		}
		setPossibileVincita();
	}
}
