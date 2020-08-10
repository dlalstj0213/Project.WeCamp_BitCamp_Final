/**
 * 
 */

/*$(document).ready(function(){
	// 숫자 타입에서 쓸 수 있도록 format() 함수 추가
		Number.prototype.format = function(){
		    if(this==0) return 0;

		    var reg = /(^[+-]?\d+)(\d{3})/;
		    var n = (this + '');

		    while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');

		    return n;
		};

		// 문자열 타입에서 쓸 수 있도록 format() 함수 추가
		String.prototype.format = function(){
		    var num = parseFloat(this);
		    if( isNaN(num) ) return "0";

		    return num.format();
		};
		
		$(".price").text(function() {//1000단위 컴마처리
		    $(this).text(
		        $(this).text().format()
		    );
		});
		
});*/

var campName;
var imgs;
var campZone;
var maxPeople;
var category;
var campPrice;
function selectSite(index){
	imgs = document.getElementById('img'+index).getAttribute('src');
	campName = document.getElementById('campName').value;
	campZone =  document.getElementById('campZone'+index).innerHTML;
	maxPeople = document.getElementById('maxPeople'+index).innerHTML;
	category = document.getElementById('category'+index).value;
	campPrice = document.getElementById('price'+index).innerHTML;
	
	var imgs_html = "";
	imgs_html += "<img id='imgTest' src="+imgs+" alt='blog image'>";
	$("#selectedImg").html(imgs_html);
	
	var selectedBody_html = "";
	selectedBody_html += "<h4 class='recent__link'>"
		+ campName+"("+category+") : "
    	+ "<br/><em>"+campZone+"</em></h4>"
    	+ "<p class='recent__meta'><span class='color-text font-weight-bold'>"+campPrice+" 원</span>"
    	+	"<br>최대인원 - "+maxPeople+"</p>";
	var checkBox_html = "";	
	checkBox_html += "<div class='custom-checkbox'>"
		+ "<input type='checkbox' id='chb1'>"
		+ "<label for='chb1'>바베큐 : 10000원<span>+</span></label>"
		+ "</div>";
	
		$("#selectedBody").html(selectedBody_html);
		$(".customize-checkbox").html(checkBox_html);
	
	//document.getElementsByClassName('peopleNum').setAttribute('max', maxPeople);
		
	window.location.href="#focusHere";
}




/*$('.card-body').on('click', function(event) {
    alert('You clicked the Bootstrap Card');
});*/