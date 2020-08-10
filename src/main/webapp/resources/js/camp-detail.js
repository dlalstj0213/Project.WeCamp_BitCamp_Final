/**
 * 
 */
function setSessionAndSubmit(){
	var bookingInfo = {
			campName : campName,
			address : document.getElementById('address').value,
			campZone : campZone,
			peopleNum : document.getElementById('peopleNum').value, //진행중
			category : category,
			campPrice :campPrice,
			bbqPrice : 10000, //진행중
			totalPrice : Number(campPrice)+10000,
			startDate : document.getElementById('startDate').value,
			endDate : document.getElementById('endDate').value,
			imgTest : document.getElementById('imgTest').getAttribute("src")
	};
	bookingInfo.XXX
	//session.setAttribute("key", val);
	//javascript -> json(setItem 하기 위해)
	sessionStorage.setItem("bookingInfo", JSON.stringify(bookingInfo)); //세션저장
	//json -> javascript
	var sessionItem = JSON.parse(sessionStorage.getItem("bookingInfo"));
	console.log(
			sessionItem
	);
	location.href = "./booking.com";
}



window.onload = function setCalender(){
	var now = new Date();
	var currentDate = now.getDate()+'/'+(now.getMonth()+1)+'/'+now.getFullYear();
	document.getElementsByClassName("calender-customize").value = currentDate;
	
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
}