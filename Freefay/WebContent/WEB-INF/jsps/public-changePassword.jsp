<!DOCTYPE html>
<html lang="en">

<head>
<title>Freefay- Change Password</title>
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

<!--[if lt IE 9]>
    <script src="js/basic/respond.min.js"></script>
    <script src="js/basic/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body class="login-bg">

	<!--[if lt IE 9]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!--SECTION-->
	<section class="l-main-container">
		<!--Main Content-->
		<div class="login-wrapper">
			<div class="login-container">
				<!--Logo-->
				<h1 class="login-logo">
					<a href="${pageContext.request.contextPath}/public/home.io"><img
						src="${pageContext.request.contextPath}/resources/img/logo.png"
						alt="Freefay"></a>
				</h1>
				<h2>Change password</h2>
				<p>To change your password fill in the fields below and click
					submit.</p>
				<!--Form-->
				<form id="changeForm" role="form"
					action="${pageContext.request.contextPath}/public/updatePassword.io"
					class="login-form">
					<div class="form-group">
						<input id="changePassword" type="password" name="changePassword"
							placeholder="Password" class="form-control">
					</div>
					<div class="form-group">
						<input id="changePasswordRepeat" type="password"
							name="changePasswordRepeat" placeholder="Repeat password"
							class="form-control">
					</div>
					<button type="submit" class="btn btn-dark btn-block btn-login">Change</button>
					<div class="login-options"></div>
				</form>
			</div>
		</div>
	</section>
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

	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/pageprogressbar/pace.min.js"></script>
	<!-- Specific-->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/forms/validation/jquery.validate.min.10e.dela"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/forms/validation/jquery.validate.additional.m"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/calls/page.change.js"></script>

</body>
</html>