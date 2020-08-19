<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>jQuery Template</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script>
		/*
			$.getJSON('파일경로',function(data){
				//data로 할일...
			});
		*/
		$.getJSON('https://api.openweathermap.org/data/2.5/forecast?id=1835848&APPID=c7b2a7dae0cdb05aaa0d01e3f0338ef4&units=metric',
				   //http://api.openweathermap.org/data/2.5/weather?id=1835848&APPID=c7b2a7dae0cdb05aaa0d01e3f0338ef4&units=metric -> 현재 날씨
				function(data){
					//data로 할일...
					var $minTemp = data.list[0].main.temp_min;
					var $wicon = data.list[0].weather[0].icon;
					$(".ctemp").append(data.list[0].main.temp);
					$(".clowtemp").append($minTemp);
					$(".chightemp").append(data.list[0].main.temp_max);
					//$(".cicon").append(data.list[0].weather.icon);
					$(".cicon").append("<img src='http://openweathermap.org/img/wn/"+$wicon+"@2x.png'/>");
					//http://openweathermap.org/img/wn/10d@2x.png
					$("h1").prepend(data.list[0].dt_txt);
					$(".city").prepend(data.city.name);//--도시 이름
					//alert(data.list[0].main.temp);
		});	
		</script>
	</head>
	<body style="text-align:center">
		<h1>날씨 예보</h1>
		<div class="city">도시 : </div>
		<div class="ctemp">현재 온도 : </div>
		<div class="clowtemp">최저 온도 : </div>
		<div class="chightemp">최고 온도 : </div>
		<div class="cicon">아이콘 : </div>
	</body>
</html>
	