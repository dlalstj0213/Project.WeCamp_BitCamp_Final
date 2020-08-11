<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><tiles:getAsString name="title" /></title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="author" content="TechyDevs(remade by JHW, LMS, LSB, HDS)">
    <meta name="description" content="WeCamp -- We provides camping reservation. and We also offer camping information and community">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge, chrome=1">

    <!-- Favicon -->
    <link rel="icon" href="/images/favicon.png" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	
    <!-- Template CSS Files -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/font-awesome.css">
    <link rel="stylesheet" href="/css/line-awesome.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/animated-headline.css">
    <link rel="stylesheet" href="/css/daterangepicker.css">
    <link rel="stylesheet" href="/css/jquery-ui.css">
    <link rel="stylesheet" href="/css/jquery.filer.css">
    <link rel="stylesheet" href="/css/jquery.filer-dragdropbox-theme.css">
    <link rel="stylesheet" href="/css/select2.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="/js/modernizr.js"></script> <!-- Modernizr -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script><!--jquery-->
    
	<script>
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '306095397264311',
	      xfbml      : true,
	      version    : 'v7.0'
	    });
	    FB.AppEvents.logPageView();
	  };
	
	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "https://connect.facebook.net/en_US/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
	</script>
	
</head>
  
<body>
    <header id="header">
        <tiles:insertAttribute name="header" />
    </header>
     
    <section id="body">
        <tiles:insertAttribute name="body" />
    </section>

    <footer id="footer">
        <tiles:insertAttribute name="footer" />
    </footer>
</body>
</html>
