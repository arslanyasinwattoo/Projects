<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template2>
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h4>${list.staticName}</h4>
					<span>All What You Need To Know About Us</span>
				</div>
				<div class="col-md-6">
					<div class="crumbs">
						You are here: <a href="index-2.html">Home</a><span
							class="crumbs-span">&raquo;</span><span>About Us</span>
					</div>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</div>
	<!-- End breadcrumbs -->
	<div class="sections section-2">
		<div class="container">
			<div class="sections-title">
				<div class="sections-title-h3">
					<h3>FreeFrae</h3>
				</div>
			</div>
			<!-- End sections-title -->
			<div class="row">
				<div class="col-md-4">
					<div class="bxslider-slide about-slide">
						<ul>
							<li><img alt=""
								src="${pageContext.request.contextPath}/resources/template/images/macbookpro.png"></li>
							<li><img alt=""
								src="${pageContext.request.contextPath}/resources/template/images/macbookpro-dark.png"></li>
						</ul>
					</div>
				</div>
				<div class="col-md-8">
					<p>${list.description}</p>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</div>
	<!-- End sections -->

</t:template2>