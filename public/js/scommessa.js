class Scommessa{
	constructor(){
		this.list = new Array();
	}
	addMultipla(chiave, type, value, quota){
		if(chiave != "" && value != "" && quota != "" && quota > 0){
			if(!chiave.includes('EUO')){
				this.add(chiave, type, value, quota);
			}else if(type != ""){
				this.add(chiave, type, value, quota);
			}else{
				//errore
			}
		}else{
			//dai un errore
		}
	}
	add(chiave, type, value, quota){
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
	scommetti(coin){/*
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
		for(var i = 0; i < this.size(); i++){
			var m = this.getMultipla(i);
			m = $('.click input[type=radio][name="' + m['chiave'] + '"][data-type="' + m['type'] + '"][data-value="' + m['value'] + '"]', $('#newScommessa'))[0];
			$(m).parent().addClass('active');
			$(m).checked = true;
		}



	}
}
