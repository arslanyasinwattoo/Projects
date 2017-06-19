<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from themes.loxdesign.net/proteus/themes/admin/bootstrap/theme/page-error-404.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 07 Oct 2015 17:27:05 GMT -->
<head>
<title>FreeFrae - Register</title>
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
	href="${pageContext.request.contextPath}/resources/css/addons/theme/jasny-bootstrap.css"
	class="style-theme-addon" />
<!--[if lt IE 9]>
    <script src="js/basic/respond.min.js"></script>
    <script src="js/basic/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>

	<!--[if lt IE 9]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!--Main Content-->
	<section id="error-bg" class="error-container">
		<div id="error-particle" class="hide"></div>
		<div class="error-404">
			<div class="login-wrapper register-wrapper">
				<div class="login-container">
					<!--Logo-->
					<h1 class="login-logo">
						<a href="${pageContext.request.contextPath}/public/index.io"><img
							src="${pageContext.request.contextPath}/resources/img/logo.png"
							alt="Freefay"></a>
					</h1>
					<!--Login Form-->
					<form id="registerForm" role="form"
						action="${pageContext.request.contextPath}/public/saveRUser.io"
						method="post" class="login-form">

						<div class="form-group">
							<input id="emailId" type="email" name="emailId"
								placeholder="Email" class="form-control">
						</div>
						<div class="form-group">
							<input id="username" type="text" name="username"
								placeholder="UserName" class="form-control">
						</div>
						<div class="form-group">
							<input id="password" type="password" name="password"
								placeholder="Password" class="form-control">
						</div>
						<div class="form-group">
							<input id="passwordRepeat" type="password" name="passwordRepeat"
								placeholder="Repeat password" class="form-control">
						</div>

						<div class="checkbox">
							M:<input id="Gender" type="radio" name="Gender" value="Male"
								class="checkradios checkradiosDark-1"> F:<input
								id="Gender" type="radio" name="Gender" value="Female"
								class="checkradios checkradiosDark-1">
						</div>
						<div class="checkbox">
							<input id="registerTerms" type="checkbox" name="registerTerms"
								class="checkradios checkradiosDark-1">By signing up you
							are accepting our <a href="#">Terms and Conditions</a>
						</div>
						<input id="check" type="hidden" name="check" value="1">
						<button type="submit" class="btn btn-dark btn-block btn-login">Sign
							Up</button>
						<div class="login-social">
							<div class="l-span-md-12">
								<div class="or">
									<span>- OR -</span>
								</div>
							</div>
							<div class="l-span-md-12 register-sign-in">
								<a href="${pageContext.request.contextPath}/login.io"
									class="btn btn-primary btn-block btn-login-register">Sign
									In</a>
							</div>

						</div>

					</form>
				</div>
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
		src="${pageContext.request.contextPath}/resources/js/plugins/errors/jquery.particleground.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/calls/page.error.js"></script>

</body>
</html>