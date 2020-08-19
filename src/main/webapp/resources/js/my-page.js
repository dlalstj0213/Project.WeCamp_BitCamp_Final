/**
 * 
 */
 
 function getUploadTags(){
	let nickName = document.createElement("input");
	nickName.setAttribute("type", "text");
	nickName.setAttribute("name", "nick-name");
	nickName.setAttribute("value", document.getElementById('nick').value);
	nickName.setAttribute("id", "nick-name");
	//var userTag = document.getElementById('user-name');
	//userTage.removeAttribute('readonly');
	$('#user-name').removeAttr('readonly');
	
	input_html = "";
        input_html += "<div class='input-box'>"
            + "<label class='label-text'>닉네임 </label>"
            + "<div class='form-group'>"
            + "<input type='text' value='"+document.getElementById('nick').value+"' class='form-control'>"
            + "</div>"                               
        	+ "</div>";
     $('.update').val("저장");
     $('.update').attr('onclick', 'hello();');
     $('#test').html(input_html);
     
 }
 
function hello(){
	alert("수정 고고씽 ");
}