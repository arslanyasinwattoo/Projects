<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from themes.loxdesign.net/proteus/themes/admin/bootstrap/theme/page-error-404.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 07 Oct 2015 17:27:05 GMT -->
<head>
<title>FreeFrae - Pages - Link Sent- Login</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<!-- ===== FAVICON =====-->
<link rel="shortcut icon" href="favicon.ico">
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

	<c:choose>
		<c:when test="${(status==1)}">
			<script>
				setTimeout(function() {
					$('#toast-container').fadeOut();
				}, 3000);
			</script>


			<div id="toast-container" class="toast-bottom-full-width"
				aria-live="polite" role="alert">
				<div class="toast toast-success">
					<div class="toast-message">Updated Successfully</div>
				</div>
			</div>

		</c:when>
	</c:choose>

	<!--[if lt IE 9]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!--Main Content-->
	<section id="error-bg" class="error-container">
		<div id="error-particle" class="hide"></div>
		<div class="error-404">
			<div class="center-outer">
				<div class="center-inner">
					<div class="center-content error-404-content">
						<i class="error-icon fa fa-exclamation-circle"></i>
						<h1 class="font-light">
							Check <span>your Email</span>
						</h1>
						<h3 class="font-extralight">do check your spam folder</h3>
						<div class="info">
							<p>We,Sent the link to the following email-Id</p>
							<form id="changeForm" role="form"
								action="${pageContext.request.contextPath}/public/changeEmailId.io"
								class="login-form" method="Post">
								<div class="form-group">
									<input id="username" type="text" name="username"
										placeholder="Username" value="${username}"
										class="form-control" readonly>
								</div>
								<div class="form-group">
									<input id="emailId" type="email" name="emailId"
										placeholder="EmailId" value="${email}" class="form-control">
								</div>
								<div class="form-group">
									<input id="oldemailId" type="hidden" name="oldemailId"
										placeholder="EmailId" value="${email}" class="form-control">
								</div>
								<div class="form-group">
									<input id="token" type="hidden" name="token"
										placeholder="token" value="${token}" class="form-control">
								</div>
								<button type="submit" class="btn btn-dark btn-block btn-login">Change</button>
								<div class="login-options"></div>
							</form>
						</div>
						<a
							href="${pageContext.request.contextPath}/reSendToken.io?token=${token}"
							class="btn btn-labeled btn-dark">Resend-Link<span
							class="btn-label btn-label-left"><i
								class="fa fa-dashboard vam"></i></span></a> <a
							href="${pageContext.request.contextPath}/login.io"
							class="btn btn-labeled btn-dark">Login<span
							class="btn-label btn-label-right"><i
								class="fa fa-dashboard vam"></i></span></a>
					</div>
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