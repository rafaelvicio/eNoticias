<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>

	<link rel="shortcut icon" href="assets/images/soccer/favicons/favicon.ico">
	<link rel="apple-touch-icon" sizes="120x120" href="assets/images/soccer/favicons/favicon-120.png">
	<link rel="apple-touch-icon" sizes="152x152" href="assets/images/soccer/favicons/favicon-152.png">

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">

	<!-- Google Web Fonts
    ================================================== -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CSource+Sans+Pro:400,700" rel="stylesheet">

	<!-- Preloader CSS -->
	<spring:url value="/resources/assets/css/preloader.css" var="preloaderCSS"></spring:url>

	<!-- Vendor CSS -->
	<spring:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" var="bootstrapCSS"></spring:url>
	<spring:url value="/resources/assets/fonts/font-awesome/css/font-awesome.min.css" var="fontawesomeCSS"></spring:url>
	<spring:url value="/resources/assets/fonts/simple-line-icons/css/simple-line-icons.css" var="simplelineiconsCSS"></spring:url>
	<spring:url value="/resources/assets/vendor/magnific-popup/dist/magnific-popup.css" var="magnificpopupCSS"></spring:url>
	<spring:url value="/resources/assets/vendor/slick/slick.css" var="slickCSS"></spring:url>

	<!-- Template CSS -->
	<spring:url value="/resources/assets/css/content.css" var="contentCSS"></spring:url>
	<spring:url value="/resources/assets/css/components.css" var="componentsCSS"></spring:url>
	<spring:url value="/resources/assets/css/style.css" var="styleCSS"></spring:url>

	<!-- Custom CSS -->
	<spring:url value="/resources/assets/css/custom.css" var="customCSS"></spring:url>

	<!-- Core CSS -->
	<link href="${preloaderCSS}" rel="stylesheet" />

	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${fontawesomeCSS}" rel="stylesheet" />
	<link href="${simplelineiconsCSS}" rel="stylesheet" />
	<link href="${magnificpopupCSS}" rel="stylesheet" />
	<link href="${slickCSS}" rel="stylesheet" />

	<link href="${contentCSS}" rel="stylesheet" />
	<link href="${componentsCSS}" rel="stylesheet" />
	<link href="${styleCSS}" rel="stylesheet" />

	<link href="${customCSS}" rel="stylesheet" />

	<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>

	<script>tinymce.init({ selector:'textarea' });</script>

</head>

<body class="template-soccer">

<div class="site-wrapper clearfix">
	<div class="site-overlay"></div>

	<div>
		<tiles:insertAttribute name="header" ignore="false"></tiles:insertAttribute>
	</div>
	<div>
		<tiles:insertAttribute name="body" ignore="false"></tiles:insertAttribute>
	</div>
	<div>
		<tiles:insertAttribute name="footer" ignore="false"></tiles:insertAttribute>
	</div>

</div>

	<spring:url value="/resources/assets/vendor/jquery/jquery.min.js" var="jqueryJS"></spring:url>
	<spring:url value="/resources/assets/js/core-min.js" var="coreminJS"></spring:url>

	<spring:url value="/resources/assets/vendor/twitter/jquery.twitter.js" var="jquerytwitterJS"></spring:url>

	<spring:url value="/resources/assets/js/init.js" var="initJS"></spring:url>
	<spring:url value="/resources/assets/js/custom.js" var="customJS"></spring:url>

	<spring:url value="/resources/tinymce/tinymce.min.js" var="tinymceJS"></spring:url>

	<script type="text/javascript" src="${jqueryJS}"></script>
	<script type="text/javascript" src="${coreminJS}"></script>
	<script type="text/javascript" src="${jquerytwitterJS}"></script>
	<script type="text/javascript" src="${initJS}"></script>
	<script type="text/javascript" src="${customJS}"></script>
	<script type="text/javascript" src="${tinymceJS}"></script>

</body>
</html>