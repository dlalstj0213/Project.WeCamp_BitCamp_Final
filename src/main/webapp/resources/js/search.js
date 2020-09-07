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

$(document).ready(function(){
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
    $('#check-in').val(currentDate);
    $('#check-out').val(currentDate);
})