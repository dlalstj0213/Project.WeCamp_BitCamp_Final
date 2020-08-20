/**
 * 
 */
function uploadCamp(params){
	let conv = "";
	let sec_conv = "";
	let etc_conv = "";
	for(let i=0; i<document.getElementsByName('conv').length; i++){
		if(document.getElementsByName('conv')[i].checked){
			conv += document.getElementsByName('conv')[i].value;
			conv += ",";
		}
		if(i == (document.getElementsByName('conv').length-1)){
			//slice의 두번째 매개변수에 음수를 사용하면 뒤에서부터 잘려나간다 (마지막 ',' 제거)
			conv = conv.slice(0, -1);
		}
	}
	for(let i=0; i<document.getElementsByName('sec-conv').length; i++){
		if(document.getElementsByName('sec-conv')[i].checked){
			sec_conv += document.getElementsByName('sec-conv')[i].value;
			sec_conv += ",";
		}
		if(i == (document.getElementsByName('sec-conv').length-1)){
			//slice의 두번째 매개변수에 음수를 사용하면 뒤에서부터 잘려나간다 (마지막 ',' 제거)
			sec_conv = sec_conv.slice(0, -1);
		}		
	}
	for(let i=0; i<document.getElementsByName('etc-conv').length; i++){
		if(document.getElementsByName('etc-conv')[i].checked){
			etc_conv += document.getElementsByName('etc-conv')[i].value;
			etc_conv += ",";
		}
		if(i == (document.getElementsByName('etc-conv').length-1)){
			//slice의 두번째 매개변수에 음수를 사용하면 뒤에서부터 잘려나간다 (마지막 ',' 제거)
			etc_conv = etc_conv.slice(0, -1);
		}
	}
	var params = {
		'camp_name': document.getElementById('camp-name').value,
		'address': document.getElementById('sample5_address').value,
		'camp_tel': document.getElementById('phoneNum').value,
		'site_num': document.getElementById('site-num').value,
		'full_num': document.getElementById('full-num').value,
		'parking': document.getElementById('parking').value,
		'conv': conv,
		'sec_conv': sec_conv,
		'etc_conv': etc_conv,
		'agency_tel': document.getElementById('agency-tel').value,
		'agency_name': document.getElementById('agency-name').value,
		'intro': ''
	};
	
	let form = document.getElementById("submit-form");
//	form.setAttribute("method", method);
//	form.setAttribute("action", "upload_camp.wcc");
	for(let key in params){
		let hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", key);
		hiddenField.setAttribute("value", params[key]);
		form.appendChild(hiddenField);
	}
	document.body.appendChild(form);
//	form.submit();
}

function add_inputs(){
	console.log("+1");
	
}

var count = 0;
function test(){
	console.log("test");
	count += 1;
	let file_input = document.getElementById('site-img');
	console.log(file_input.name);
	console.log(file_input.value);
	console.log(file_input.multiple);
	console.log(count);
	let hiddenField = document.createElement('input');
	hiddenField.setAttribute('id', file_input.name);
	hiddenField.setAttribute('type', 'file');
	hiddenField.setAttribute('name', file_input.name);
	hiddenField.setAttribute('value', file_input.value);
	hiddenField.setAttribute('multiple', 'multiple');
	document.getElementById("submit-form").appendChild(hiddenField);
	let input_name = document.getElementById('site_img');
	console.log(input_name);
	console.log(input_name.name);
	console.log(input_name.value);
	
	document.getElementById("submit-form").submit();
}


function remove_inputs(){
	console.log("-1");
}

function more_input_html(){
	let more_html = "";
	more_html += "";
}
