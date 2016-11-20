<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<!-- FAVICON -->

<link rel="shortcut icon" href="img/favicon.ico">

	<!-- CORE CSS -->

<spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapCSS"></spring:url>
<spring:url value="/resources/css/theme.min.css" var="themeCSS"></spring:url>
<spring:url value="/resources/css/custom.css" var="customCSS"></spring:url>
<spring:url value="/resources/css/helpers.min.css" var="helpersCSS"></spring:url>
<spring:url value="/resources/font-awesome/css/font-awesome.min.css" var="fontCSS"></spring:url>
<spring:url value="/resources/ionicons/css/ionicons.min.css" var="ioniconsCSS"></spring:url>
<spring:url value="/resources/animate/animate.min.css" var="animateMinCSS"></spring:url>
<spring:url value="/resources/animate/animate.delay.css" var="animateDelayCSS"></spring:url>
<spring:url value="/resources/owl-carousel/owl.carousel.css" var="carouselCSS"></spring:url>

	<spring:url value="/resources/plugins/bootstrap/css/bootstrap.min." var="testeCSS"></spring:url>

<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700' rel='stylesheet' type='text/css'>

	<!-- PLUGINS -->

<spring:url value="/resources/jquery/jquery-1.11.1.min.js" var="jqueryJS"></spring:url>
<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJS"></spring:url>
<spring:url value="/resources/owl-carousel/owl.carousel.min.js" var="carouselJS"></spring:url>
<spring:url value="/resources/core.min.js" var="coreJS"></spring:url>
<spring:url value="/resources/twitter/twitter.js" var="twitterJS"></spring:url>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>

	<!-- CORE CSS -->

<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${themeCSS}" rel="stylesheet" />
<link href="${customCSS}" rel="stylesheet" />
<link href="${helpersCSS}" rel="stylesheet" />
<link href="${fontCSS}" rel="stylesheet" />
<link href="${ioniconsCSS}" rel="stylesheet" />
<link href="${animateMinCSS}" rel="stylesheet" />
<link href="${animateDelayCSS}" rel="stylesheet" />
<link href="${carouselCSS}" rel="stylesheet" />

	<!-- PLUGINS -->

<script type="text/javascript" src="${jqueryJS}"></script>
<script type="text/javascript" src="${bootstrapJS}"></script>
<script type="text/javascript" src="${carouselJS}"></script>
<script type="text/javascript" src="${coreJS}"></script>
<script type="text/javascript" src="${twitterJS}"></script>

</head>
<body>
	<div style="width: 100%">
		<tiles:insertAttribute name="header" ignore="false"></tiles:insertAttribute>
	</div>
	<div style="width: 100%; margin: 2%;">
		<tiles:insertAttribute name="body" ignore="false"></tiles:insertAttribute>
	</div>
	<div style="width: 100%">
		<tiles:insertAttribute name="footer" ignore="false"></tiles:insertAttribute>
	</div>

<script>
	(function($) {
		"use strict";
		var config1 = {
			"id": $('#twitter').data("twitter"),
			"domId": 'twitter',
			"maxTweets": 1,
			"enableLinks": true
		};
		twitterFetcher.fetch(config1);

		$(".owl-carousel").owlCarousel({
			autoPlay: true,
			items : 4, //4 items above 1000px browser width
			itemsDesktop : [1600,3], //3 items between 1000px and 0
			itemsTablet: [940,1], //1 items between 600 and 0
			itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
		});
	})(jQuery);
</script>

</body>
</html>