<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8"/>
		<title>Ajax Test01</title>
		<script type="text/javascript" language="javascript" 
		     src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script type="text/javascript">

		   $(function(){ 
			   $("#click").on("click", function(){
				   alert("성공")
				   $.ajax({
					   url: "getGrid.do", 
					   type: "GET",
					   success: function(responseData){
						  //var jsObj = JSON.parse(responseData); //jQuery 버젼을 올려서 필요 없음
						   alert(responseData)
                          if(!responseData){
							  //alert("존재하지 않는 seq 임");
							  return false;
						  }else{
							  var html= "";
							  for(i=0;i<responseData.data.length;i++){
							 	html+= "<img src="+responseData.data[i].media_url+">";
							  }
							  $("#json").html(html);
						  }
					   }
				   });

			});
		});
			   

		</script>
	</head>
	<body style="text-align:center">
	    <h2>response객체에 JSON문자열 담기</h2>
	    <span id="json">,.,..,</span>
	    <button id="click">버튼</button>

	</body>
</html>