/**
 * 
 */
var campName;
var imgs;
var campZone;
var maxPeople;
var category;
var campPrice;
function selectSite(index){
	//예약 버튼 활성화
	document.getElementById('booking-event').style.pointerEvents = 'auto'; 
	$('#booking-event').empty();
	$('#booking-event').append("예약하기");
	// == $('#booking-event').text("예약하기");

	imgs = document.getElementById('img'+index).getAttribute('src');
	campName = document.getElementById('campName').value;
	campZone =  document.getElementById('campZone'+index).innerHTML;
	maxPeople = document.getElementById('maxPeople'+index).innerHTML;
	category = document.getElementById('category'+index).value;
	campPrice = document.getElementById('price'+index).innerHTML;

	//document.getElementsByClassName("calender-customize")[0].value = "2/2/2020";
	//$('.calender-customize').val("2/2/2020");
	//var length = document.getElementsByClassName("calender-customize").length;
	//for(var i=0; i<length; i++){
	//	document.getElementsByClassName("calender-customize")[i].value = "2/2/2020";
	//}
	
	var imgs_html = "";
	imgs_html += "<img src="+imgs+" alt='blog image'>";
	$("#selectedImg").html(imgs_html);
	
	var selectedBody_html = "";
	selectedBody_html += "<h4 class='recent__link'>"
		+ campName+"("+category+") : "
    	+ "<br/><em>"+campZone+"</em></h4>"
    	+ "<p class='recent__meta'><span class='color-text font-weight-bold'>"+campPrice+" 원</span>"
    	+	"<br>최대인원 - "+maxPeople+"</p>";
	var checkBox_html = "";
	checkBox_html += "<div class='custom-checkbox'>"
		+ "<input type='checkbox' id='chb1' class='check-bbq' value=10000>"
		+ "<label for='chb1'>바베큐 : 10000원<span>+</span></label>"
		+ "</div>";
		
		// peopleNum class 의 속성인 max 를 maxPeople 값으로 변경
		document.getElementById("peopleNum").setAttribute("max", maxPeople);
		//peopleNum class 의 value 값을 0으로 초기화
		document.getElementById("peopleNum").value = 0;
		
		
		$("#selectedBody").html(selectedBody_html);
		$(".customize-checkbox").html(checkBox_html);
	
	//document.getElementsByClassName('peopleNum').setAttribute('max', maxPeople);
		
	window.location.href="#focusHere";
}

/*$('.card-body').on('click', function(event) {
    alert('You clicked the Bootstrap Card');
});*/