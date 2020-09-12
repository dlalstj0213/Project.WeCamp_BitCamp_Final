/**
 * 
 */
$(function(){
	$("#search").on("keyup", function(){
		console.log($('#search').val());
		document.getElementById('searched-place').value = document.getElementById('search').value;
	});
})

function selectPeopleNum() {
	
	console.log(document.getElementById("optionNo").value);
	document.getElementById("peopleNum").value = document.getElementById("optionNo").value;
}

function submitSearch(){
	document.getElementById('searched-data').submit();
}

window.onload = function(){
    var now = new Date();
    var nowYear = now.getFullYear();
    var nowMonth = now.getMonth() + 1;
    var nowDate = now.getDate();
    var dayOfTheWeek = now.getDay();
    if (nowMonth < 10) {
        nowMonth = "0" + nowMonth;
    }
    if (nowDate < 10) {
        nowDate = "0" + nowDate;
    }
    currentDate = nowYear + "/" + nowMonth + "/" + nowDate;
    nextDate = nowYear + "/" + nowMonth + "/" + (Number(nowDate)+1);
    $('#check-in').val(currentDate);
    $('#check-out').val(nextDate);
    let date = currentDate+" - "+nextDate;
	 document.getElementById('initDate').value = date;
	 
     $('input[name="daterange"]').daterangepicker({
     	autoApply: true,
     	minDate: new Date(),
     	opens: 'center',
     	//applyLabel: '확인',
     	//cancelLabel: '취소',
     	 locale :{
              format: 'YYYY/MM/DD',
              'monthNames': [
             	 '1월',
             	 '2월',
             	 '3월',
             	 '4월',
             	 '5월',
             	 '6월',
             	 '7월',
             	 '8월',
             	 '9월',
             	 '10월',
             	 '11월',
             	 '12월'
              ],
              'daysOfWeek': [
             	 '일',
             	 '월',
             	 '화',
             	 '수',
             	 '목',
             	 '금',
             	 '토'
              ]
          },
     }, function(start, end, label){
     	$('.check-in').val(start.format('YYYY/MM/DD'))
     	$('.check-out').val(end.format('YYYY/MM/DD'))
     });
}