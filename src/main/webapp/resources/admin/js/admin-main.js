/**
 * 
 */
function getTotalValues(){
	$.ajax({
		url: "main.json",
		method: "GET",
		data: {},
		dataType: "JSON",
		error: function(){
			clearInterval(playAlert);
		},
		success: function(responseData){
//			console.log("통신 성공");
//			console.log("totalMember : "+responseData.totalMember);
//			console.log("totalCamp : "+responseData.totalCamp);
//			console.log("totalBooking : "+responseData.totalBooking);
//			console.log("totalInquiry : "+responseData.totalInquiry);
//			console.log("totalLMember : "+responseData.totalLMember);
//			console.log("totalCurrentBooking : "+responseData.totalCurrentBooking);
//			console.log("totalUncheckedInquiry : "+responseData.totalUncheckedInquiry);
			
			$('#total-booking').text(responseData.totalBooking);
			//$('#total-booking').text("1,500");
			$('#total-current-booking').text("최근 예약 : "+responseData.totalCurrentBooking);
			$('#total-camp').text(responseData.totalCamp);
			$('#total-member').text(responseData.totalMember);
			$('#total-leave-member').text("탈퇴 : "+responseData.totalLMember);
			$('#total-inquiry').text(responseData.totalInquiry);
			$('#total-unchecked-inquiry').text("미처리 : "+responseData.totalUncheckedInquiry);
			
			// counter-up
			$('.counter').counterUp({
				delay: 10,
				time: 1000,
			   // offset: 70,
			    //beginAt: 500,
//			    formatter: function(n){
//			    	return n.replace(/,/g, '.');
//			    }
			});
			
		}
	});
}

$(document).ready(function(){
	getTotalValues();
	
	repeatFunction = setInterval(function() {
		  getTotalValues();
	}, 3000);
})