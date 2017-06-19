<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
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
	<script>
		function allowEdit() {

			document.getElementById('PortfolioName').disabled = false;
			document.getElementById('Pitch').disabled = false;
			document.getElementById('experiences').disabled = false;
			document.getElementById('Update').disabled = false;

		}
		function disableEdit() {

			document.getElementById('PortfolioName').disabled = true;
			document.getElementById('Pitch').disabled = true;
			document.getElementById('experiences').disabled = true;
			document.getElementById('Update').disabled = true;

		}
	</script>
	<div class="l-page-header">
		<h2 class="l-page-title"></h2>
		<!--BREADCRUMB-->
		<ul class="breadcrumb t-breadcrumb-page">
			<li></li>
			<li></li>
			<li class="active"></li>
		</ul>
	</div>
	<div class="l-spaced">
		<div class="profile-header">
			<div class="profile-img">
				<img
					src="${pageContext.request.contextPath}/resources/profile-images/${portfolio.users.id.username}-profile-image.jpg"
					style="max-width: 280px; max-height: 280px;"onError="this.src='${pageContext.request.contextPath}/resources/profile-images/default-profile.jpg'">
			</div>
			<h2 style="color: #000000;">${portfolio.users.id.username}</h2>
			<h3 style="color: #007ee6;">${portfolio.portfolioPitch}</h3>
			<p style="color: #007ee6;">${portfolio.experienceDescription}</p>
			<ul class="contact-info">
				<li><i class="fa fa-phone"></i>${portfolio.users.contactNo}</li>
				<li><i class="fa fa-envelope"></i><a
					href="mailto:info@smartadmin.com">${portfolio.users.emailId}</a></li>

				<li></li>
			</ul>
			<ul class="social-links">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
				<li><a href="#"><i class="fa fa-google"></i></a></li>
				<li><a href="#"><i class="fa fa-tumblr"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
			</ul>
			<div class="profile-info">
				<ul>
					<li>346 &nbsp;<span>friends</span></li>
					<li>87 &nbsp;<span>followers</span></li>
					<li>52 &nbsp;<span>photos</span></li>
					<li>754 &nbsp;<span>videos</span></li>
					<li>1261 &nbsp;<span>tracks</span></li>
				</ul>
			</div>
		</div>
		<div class="profile-content">
			<!-- Profile Tabs-->
			<div id="profile" class="profile-tabs">
				<ul class="resp-tabs-list">
					<li><div class="l-col-xs-4">
							<a href="${pageContext.request.contextPath}/public/profile.io"><button
									type="button" class="btn btn-dark btn-bordered">
									Profile</button></a>
						</div></li>
					<li><div class="l-col-xs-4">
							<a href="${pageContext.request.contextPath}/public/portfolio.io">
								<button type="button" class="btn btn-dark">Portfolio</button>
							</a>
						</div></li>
				</ul>
				<div class="resp-tabs-container">
					<!--Profile-->
					<div class="profile-details-cont">
						<div class="profile-details">
							<form role="form" class="form-horizontal" id="validateDefault"
								action="${pageContext.request.contextPath}/public/updateUserPortfolio.io"
								method="post" enctype="multipart/form-data">
								<h4 class="sep-bottom">Portfolio</h4>
								<div class="btn-group">
									<button type="button" data-toggle="dropdown"
										class="btn btn-drop btn-dark dropdown-toggle"
										aria-expanded="false">
										Action<span class="caret"></span>
									</button>
									<ul role="menu" class="dropdown-menu drop-dark">

										<li><a href="#" onClick="allowEdit()">Edit</a></li>
										<li><a href="#" onClick="disableEdit()">Disable</a></li>
										<li><a
											href="${pageContext.request.contextPath}/public/changePassword.io">Change
												Password</a></li>

									</ul>
								</div>
								<div class="form-group">
									<label for="username" class="col-sm-3 control-label">Username</label>
									<div class="col-sm-9">
										<input id="username" type="text" placeholder="UserName"
											value="${portfolio.users.id.username}" disabled
											class="form-control">

									</div>
								</div>


								<div class="form-group">
									<label for="firstname" class="col-sm-3 control-label">Portfolio
										Name</label>
									<div class="col-sm-9">
										<input id="PortfolioName" name="PortfolioName" type="text"
											placeholder="Portfolio Name"
											value="${portfolio.portfolioName}" disabled
											class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-3 control-label">Pitch</label>
									<div class="col-sm-9">
										<input id="Pitch" name="Pitch" type="text" placeholder="Pitch"
											value="${portfolio.portfolioPitch}" disabled
											class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="age" class="col-sm-3 control-label">Experiences</label>
									<div class="col-sm-9">
										<textarea id="experiences" name="experiences" rows="3"
											placeholder="Experiences" class="form-control" disabled
											style="resize: none" maxlength="500">${portfolio.experienceDescription}</textarea>

									</div>
								</div>
								<hr>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit" id="Update" name="Update"
											class="btn btn-primary btn-update" disabled>Update</button>

									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script>
		jQuery(function($) {
			$('validateDefault').bind('submit', function() {
				$(this).find(':input').prop('disabled', false);
			});
		});
	</script>
</t:template>
<script
	src="${pageContext.request.contextPath}/resources/js/calls/page.profile.js"></script>
