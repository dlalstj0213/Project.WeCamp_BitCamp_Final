<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><tiles:getAsString name="title" /></title>
	<meta name="description" content="Free Bootstrap 4 Admin Theme | Pike Admin">
	<meta name="author" content="Pike Web Development - https://www.pikephp.com">

	<!-- Favicon -->
	<link rel="shortcut icon" href="/admin/images/favicon2.png">

	<!-- Bootstrap CSS -->
	<link href="/admin/css/bootstrap.min.css?ver=<%=System.currentTimeMillis()%>" rel="stylesheet" type="text/css" />
	
	<!-- Font Awesome CSS -->
	<link href="/admin/font-awesome/css/font-awesome.min.css?ver=<%=System.currentTimeMillis()%>" rel="stylesheet" type="text/css" />
	
	<!-- Custom CSS -->
	<link href="/admin/css/style.css?ver=<%=System.currentTimeMillis()%>" rel="stylesheet" type="text/css" />
	
</head>
  
<!-- <body class="adminbody"> -->
<body>
<!--     <div id="main"> -->
    <header id="header">
        <tiles:insertAttribute name="header" />
    </header>
     
     <section id="sidemenu"> 
     	<tiles:insertAttribute name="menu" />
     </section>
     
	<section id="siteContent">
		<tiles:insertAttribute name="body" />
	</section>


    <footer id="footer">
        <tiles:insertAttribute name="footer" />
    </footer>
<!--     </div> -->
    <!-- END main -->
</body>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script src="/admin/js/modernizr.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/admin/js/jquery.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/admin/js/moment.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/admin/js/popper.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/admin/js/bootstrap.min.js?ver=<%=System.currentTimeMillis()%>"></script>

<script src="/admin/js/detect.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/admin/js/fastclick.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/admin/js/jquery.blockUI.js?ver=<%=System.currentTimeMillis()%>"></script>
<script src="/admin/js/jquery.nicescroll.js?ver=<%=System.currentTimeMillis()%>"></script>

<!-- App js -->
<script src="/admin/js/pikeadmin.js?ver=<%=System.currentTimeMillis()%>"></script>

<!-- BEGIN Java Script for this page -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js?ver=<%=System.currentTimeMillis()%>"></script>
<!-- 	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script> -->

	<!-- Counter-Up-->
	<script src="/admin/plugins/waypoints/lib/jquery.waypoints.min.js?ver=<%=System.currentTimeMillis()%>"></script>
	<script src="/admin/plugins/counterup/jquery.counterup.min.js?ver=<%=System.currentTimeMillis()%>"></script>			

	<script>
		$(document).ready(function() {
			// counter-up
			$('.counter').counterUp({
				delay: 10,
				time: 600
			});
		} );		
	</script>
	
	<script>
	var ctx1 = document.getElementById("lineChart").getContext('2d');
	var lineChart = new Chart(ctx1, {
		type: 'bar',
		data: {
			labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
			datasets: [{
					label: 'Dataset 1',
					backgroundColor: '#3EB9DC',
					data: [10, 14, 6, 7, 13, 9, 13, 16, 11, 8, 12, 9] 
				}, {
					label: 'Dataset 2',
					backgroundColor: '#EBEFF3',
					data: [12, 14, 6, 7, 13, 6, 13, 16, 10, 8, 11, 12]
				}]
				
		},
		options: {
						tooltips: {
							mode: 'index',
							intersect: false
						},
						responsive: true,
						scales: {
							xAxes: [{
								stacked: true,
							}],
							yAxes: [{
								stacked: true
							}]
						}
					}
	});


	var ctx2 = document.getElementById("pieChart").getContext('2d');
	var pieChart = new Chart(ctx2, {
		type: 'pie',
		data: {
				datasets: [{
					data: [12, 19, 3, 5, 2, 3],
					backgroundColor: [
						'rgba(255,99,132,1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)',
						'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)',
						'rgba(255, 159, 64, 1)'
					],
					label: 'Dataset 1'
				}],
				labels: [
					"Red",
					"Orange",
					"Yellow",
					"Green",
					"Blue"
				]
			},
			options: {
				responsive: true
			}
	 
	});


	var ctx3 = document.getElementById("doughnutChart").getContext('2d');
	var doughnutChart = new Chart(ctx3, {
		type: 'doughnut',
		data: {
				datasets: [{
					data: [12, 19, 3, 5, 2, 3],
					backgroundColor: [
						'rgba(255,99,132,1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)',
						'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)',
						'rgba(255, 159, 64, 1)'
					],
					label: 'Dataset 1'
				}],
				labels: [
					"Red",
					"Orange",
					"Yellow",
					"Green",
					"Blue"
				]
			},
			options: {
				responsive: true
			}
	 
	});
	</script>
<!-- END Java Script for this page -->	
</html>