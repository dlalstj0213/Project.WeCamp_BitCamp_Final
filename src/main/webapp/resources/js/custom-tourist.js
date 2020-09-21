/**
 * 
 */

function getTourist(){
	/*	var x = parseFloat($("#x").val());
	var y = parseFloat($("#y").val());
	console.log(">>>x : "+x+", type : "+typeof x);
	console.log(">>>y : "+y+", type : "+typeof y);

	if(x!=null){
		var form = document.location;
		alert("성공");
		alert("예에~ : "+form.x.value);
		alert("예에~ : "+form.y.value);
		form.submit();
	alert("성공2");

	}else{
		alert("실패");
	}*/

	//document.getElementById("test1").innerText = "HELLO";
	$.ajax({ //
		url: './tourist',              //ajax로 ajax_xml.xml파일을 불러온다.
		type: 'post',
		async: false,
		data: {
			x:x,
			y:y
		},
		dataType: "HTML",             //서버로부터 받을 것으로 예상되는 데이터 타입.
		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
		success: function(data){
			 //let html= "";
			//alert("data : "+data);
			$(".tour").append(data);
			//alert("data.tourist.length : "+data.tourist.length);
			//alert("data.tour.length : "+data.tour.length);
			/*for(let i=0; i<data.tourist.length; i++){
				console.log(data.tourist[i]);
				console.log("1>>>"+$("#test3").val());
				html += "<b>"+data.tourist[i].title+"</b>";
				$("#test").append(data.tourist[i].title+"왜");
				
				//$("#test3").val(data.tourist[0].title);
				console.log("2>>>"+$("#test3").val());
			}*/
			/*$(data).find('item').each(function(){
                 var title = $('#test', this).text();
                 alert("data : "+data);
                 alert("title : "+title);*/
			// var txt = "<li>" + title + ", " + author + ", " + price + "</li><hr>";
			// $('body').append(txt);
		},
		error: function(data){
			alert("error");
		}
	});
}	

//"http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList?serviceKey=3j%2BhlmvnPUKLVUJXQdnYESMvwbC3dBLT6MM3Ws2Yx0zA0C0%2FKjD2TY49oVvmHuotxnzUipHNsXUmCkEnUFR22Q%3D%3D&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=Wecamp&arrange=A&contentTypeId=12&mapX="+x+"&mapY="+y+"&radius=10000&listYN=Y";