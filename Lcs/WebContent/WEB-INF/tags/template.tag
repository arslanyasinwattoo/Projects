<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<title>Lcs</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description"
	content="Mint by Grozav is a flat design approach towards Admin Dashboards. Intuitive, cutting-edge, clean and easy to use and customize, as every Application UI should be. ">
<meta name="keywords"
	content="mint, flat, admin, dashboard, app, template, theme, grozav, admin template, admin dashboard, bootstrap, admin bootstrap, awesome" />
<link rel="author" href="http://grozav.com/" />
<!-- Core CSS - Include with every page -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Page-Level Plugin CSS - Dashboard -->
<link href="css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
<link href="css/plugins/timeline/timeline.css" rel="stylesheet">
<!-- Mint Admin CSS - Include with every page -->
<link href="css/mint-admin.css" rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<%@include file="/WEB-INF/mainjsps/header.jsp"%>
		</div>
		<div id="navbar">
			<%@include file="/WEB-INF/mainjsps/navbar.jsp"%>
		</div>
		<div id="page-wrapper">
			<div class="row">
				<div id="body">
					<jsp:doBody />
				</div>
				<div id="footer">
					<%@include file="/WEB-INF/mainjsps/footer.jsp"%>
				</div>
			</div>
			<!-- /.row -->
		</div>
	</div>
</body>
</html>