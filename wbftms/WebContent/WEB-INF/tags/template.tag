<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="css/images/favicon.png.htm">
<!-- Le styles -->
<link href="css/twitter/bootstrap.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">


<link href="css/twitter/responsive.css" rel="stylesheet">
<link href="css/jquery-ui-1.8.23.custom.css" rel="stylesheet">
<script src="js/plugins/modernizr.custom.32549.js"></script>
</head>
<body>

	<div id="header">
		<%@include file="/WEB-INF/mainjsps/header.jsp"%>
	</div>
	<div id="sidnav">
		<%@include file="/WEB-INF/mainjsps/sidenav.jsp"%>
	</div>
	<div id="main">
		<%@include file="/WEB-INF/mainjsps/top_right.jsp"%>
		<div id="mainPage">
			<jsp:doBody />
		</div>
	</div>
	<div id="background">
		<%@include file="/WEB-INF/mainjsps/background.jsp"%>
	</div>

</body>
</html>
