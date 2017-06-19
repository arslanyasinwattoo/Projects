
<header id="header-top">
	<div class="container clearfix">
		<div class="row">
			<div class="col-md-6">
				<div class="phone-email" hidden>
					<i class="fa fa-phone"></i>${cms.contactNo}
				</div>
				<div class="phone-email phone-email-2" hidden>
					<i class="fa fa-envelope"></i>${cms.emailId}
				</div>
			</div>
			<div class="col-md-6">
				<div class="social-ul">
					<ul>
						<li class="social-facebook"><a href="${cms.socialLabel1}"><i
								class="fa fa-facebook"></i></a></li>
						<li class="social-twitter"><a href="${cms.socialLabel2}"><i
								class="fa fa-twitter"></i></a></li>
						<li class="social-google"><a href="${cms.socialLabel3}"><i
								class="fa fa-google-plus"></i></a></li>
						<li class="social-pinterest"><a href="${cms.socialLabel4}"><i
								class="fa fa-pinterest"></i></a></li>
						<li class="social-vimeo"><a href="${cms.socialLabel5}"><i
								class="fa fa-vimeo-square"></i></a></li>
						<li class="social-linkedin"><a href="${cms.socialLabel6}"><i
								class="fa fa-linkedin"></i></a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End container -->
</header>
<!-- End header -->
<header id="header">
	<div class="container clearfix">
		<div class="logo">
			<a href="/"><img alt=""
				src="${pageContext.request.contextPath}/resources/template/images/logo-dark-freefay.png"></a><span
				style="height: 32px;">${cms.slogan}</span>
		</div>
		<div class="header-search">
			<div class="header-search-a">
				<i class="fa fa-search"></i>
			</div>
			<div class="header-search-form">
				<form method="post">
					<input type="text" placeholder="Search Words Here">
				</form>
			</div>
		</div>