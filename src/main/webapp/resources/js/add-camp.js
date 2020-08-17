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
	console.log(conv);
	console.log(sec_conv);
	console.log(etc_conv);
	var params = {
		'camp_name': document.getElementById('camp-name').value,
		'address': document.getElementById('sample5_address').value,
		'camp_tel': document.getElementById('phoneNum').value,
		'site_num': '',
		'full_num': '',
		'parking': document.getElementById('parking').value,
		'conv': conv,
		'sec_conv': sec_conv,
		'etc_conv': etc_conv,
		'agency_tel': '',
		'agency_name': '',
		'total_booking': '',
		'intro': ''
	};
	var method = "post";
	var form = document.createElement("form");
	form.setAttribute("method", method);
	form.setAttribute("action", "upload_camp.wcc");
	for(var key in params){
		var hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", key);
		hiddenField.setAttribute("value", params[key]);
		form.appendChild(hiddenField);
	}
	document.body.appendChild(form);
//	form.submit();
}
