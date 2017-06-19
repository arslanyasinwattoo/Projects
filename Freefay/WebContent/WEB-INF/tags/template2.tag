<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->

<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>Freefrae</title>
<meta name="description" content="Freefay – Grow big Grow Fast">
<meta name="author" content="Arslan">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/template/css/styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="${pageContext.request.contextPath}/resources/template/js/script.js"></script>
<!-- Main Style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template/style.css">

<!-- Skins -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template/css/skins/skins.css">

<!-- Responsive Style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/template/css/responsive.css">

<!-- Favicons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/template/images/favicon.png">

</head>
<body>
	<div class="loader">
		<div class="loader_html"></div>
	</div>
	<div id="wrap" class="grid_1200">
		<%@include file="/WEB-INF/mainjsps2/header.jsp"%>

		<%@include file="/WEB-INF/mainjsps2/navbar.jsp"%>
		<!-- End navigation -->
	
	<!-- End header -->
	

	<jsp:doBody />
	<%@include file="/WEB-INF/mainjsps2/footer.jsp"%>


	<div class="go-up">
		<i class="fa fa-chevron-up"></i>
	</div>

	<!-- js -->
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/html5.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.isotope.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.nicescroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.appear.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/count-to.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/twitter/jquery.tweet.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.inview.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.prettyPhoto.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.bxslider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.themepunch.plugins.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/template/js/custom.js"></script>
	<!-- End js -->
</body>


</html>