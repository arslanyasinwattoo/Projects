<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Freefrae</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<!-- ===== FAVICON =====-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.png">
<!-- ===== CSS =====-->
<!-- General-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/basic.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/theme.css"
	class="style-theme">

<!-- Specific-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addons/fonts/artill-clean-icons.css" />
<!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/resources/js/basic/respond.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/basic/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body class="l-dashboard">
	<!--content-->

	<%@include file="/WEB-INF/mainjsps/header.jsp"%>
	<%@include file="/WEB-INF/mainjsps/navbar.jsp"%>
	<section class="l-container">
		<jsp:doBody />
	</section>
	<div id="footer">
		<%@include file="/WEB-INF/mainjsps/footer.jsp"%>
	</div>

	<!-- ===== JS =====-->
	<!-- jQuery-->
	<script
		src="${pageContext.request.contextPath}/resources/js/basic/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/basic/jquery-migrate.min.js"></script>
	<!-- General-->
	<script
		src="${pageContext.request.contextPath}/resources/js/basic/modernizr.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/basic/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/shared/jquery.asonWidget.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/general.js"></script>
	<!-- Semi general-->
	<script type="text/javascript">
		var paceSemiGeneral = {
			restartOnPushState : false
		};
		if (typeof paceSpecific != 'undefined') {
			var paceOptions = $.extend({}, paceSemiGeneral, paceSpecific);
			paceOptions = paceOptions;
		} else {
			paceOptions = paceSemiGeneral;
		}
	</script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/pageprogressbar/pace.min.js"></script>
	<!-- Specific-->
	<script
		src="${pageContext.request.contextPath}/resources/js/shared/classie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/calls/table.foo.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/shared/jquery.cookie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/shared/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/shared/perfect-scrollbar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/accordions/jquery.collapsible.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/charts/c3/c3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/charts/c3/d3.v3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/charts/other/jquery.easypiechart.min.7d.delay"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/charts/rickshaw/rickshaw.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/datetime/jqClock.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/forms/elements/jquery.bootstrap-touchspin.min"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/forms/elements/jquery.checkBo.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/forms/elements/jquery.switchery.min.82.delaye"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/table/footable.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/tabs/jquery.easyResponsiveTabs.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/textrotator/jquery.simple-text-rotator.min.85"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/tooltip/jquery.tooltipster.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/weather/jquery.simpleWeather.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/calls/dashboard.1.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/calls/part.header.1.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/calls/part.sidebar.2.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/calls/part.theme.setting.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/calls/shared.tooltipster.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/forms/elements/jquery.fancySelect.min.107.del"></script>
	</section>
</body>
</html>