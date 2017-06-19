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
		function getRegions(f) {
			var url = "${pageContext.request.contextPath}/AjaxRegions.io?code="
					+ f;

			$.get(url, function(data) {
				document.getElementById("province-v").innerHTML = data;

			});
		}
		function getCities(f) {
			var e = document.getElementById("countryId");
			var strUser = e.options[e.selectedIndex].value;
			//alert(strUser);
			var url = "${pageContext.request.contextPath}/AjaxCities.io?region="
					+ f + "&countryId=" + strUser;
			//	alert(url);
			$.get(url, function(data) {
				document.getElementById("cities").innerHTML = data;

			});
		}
	</script>
	<script>
		function allowEdit() {

			document.getElementById('firstname').disabled = false;
			document.getElementById('lastname').disabled = false;
			document.getElementById('dob').disabled = false;
			document.getElementById('phone').disabled = false;
			document.getElementById('countryId').disabled = false;
			document.getElementById('region').disabled = false;
			document.getElementById('cities').disabled = false;
			document.getElementById('address').disabled = false;
			document.getElementById('postalCode').disabled = false;
			document.getElementById('Update').disabled = false;

		}
		function disableEdit() {

			document.getElementById('firstname').disabled = true;
			document.getElementById('lastname').disabled = true;
			document.getElementById('dob').disabled = true;
			document.getElementById('phone').disabled = true;
			document.getElementById('countryId').disabled = true;
			document.getElementById('region').disabled = true;
			document.getElementById('cities').disabled = true;
			document.getElementById('address').disabled = true;
			document.getElementById('postalCode').disabled = true;
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
					src="${pageContext.request.contextPath}/resources/profile-images/${user.id.username}-profile-image.jpg" onError="this.src='${pageContext.request.contextPath}/resources/profile-images/default-profile.jpg'"
					style="max-width: 280px; max-height: 280px;">
			</div>
			<h2 style="color: #000000;">${user.id.username}</h2>

			<ul class="contact-info">
				<li><i class="fa fa-phone"></i>${user.contactNo}</li>
				<li><i class="fa fa-envelope"></i><a
					href="mailto:info@smartadmin.com">${user.emailId}</a></li>

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
									type="button" class="btn btn-dark">Profile</button></a>
						</div></li>
					<li><div class="l-col-xs-4">
							<a href="${pageContext.request.contextPath}/public/portfolio.io"><button
									type="button" class="btn btn-dark btn-bordered">
									Portfolio</button></a>
						</div></li>
				</ul>
				<div class="resp-tabs-container">
					<!--Profile-->
					<div class="profile-details-cont">
						<div class="profile-details">
							<form role="form" class="form-horizontal" id="validateDefault"
								action="${pageContext.request.contextPath}/public/updateUserProfile.io"
								method="post" enctype="multipart/form-data">
								<h4 class="sep-bottom">General</h4>
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
											value="${user.id.username}" disabled class="form-control">

									</div>
								</div>


								<div class="form-group">
									<label for="firstname" class="col-sm-3 control-label">First
										name</label>
									<div class="col-sm-9">
										<input id="firstname" name="firstname" type="text"
											placeholder="First name" value="${user.firstName}" disabled
											class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-3 control-label">Last
										name</label>
									<div class="col-sm-9">
										<input id="lastname" name="lastname" type="text"
											placeholder="Last name" value="${user.lastName}" disabled
											class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="age" class="col-sm-3 control-label">DOB</label>
									<div class="col-sm-9">
										<input type="date" id="dob" name="dob" min="1950-01-01"
											class="form-control" disabled value="${user.dob}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Gender</label>
									<div class="col-sm-9">
										<c:choose>
											<c:when test="${user.gender=='Male'}">
												<div class="radio-inline">
													<input id="sex1" type="radio" checked name="sexOptions"
														disabled value="Male" class="checkradios">Male
												</div>
											</c:when>
											<c:when test="${user.gender=='Female'}">
												<div class="radio-inline">
													<input id="sex2" type="radio" name="sexOptions" disabled
														value="Female" class="checkradios" checked>Female
												</div>
											</c:when>
										</c:choose>
									</div>
								</div>


								<h4 class="sep-bottom">Contact</h4>
								<div class="form-group">
									<label for="email" class="col-sm-3 control-label">Email</label>
									<div class="col-sm-9">
										<input id="email" name="email" type="email"
											value="${user.emailId}" placeholder="Email" disabled
											class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label for="phone" class="col-sm-3 control-label">Phone</label>
									<div class="col-sm-9">
										<input id="phone" name="phone" type="text" placeholder="Phone"
											value="${user.contactNo}" disabled class="form-control">
									</div>
								</div>

								<h4 class="sep-bottom">Address</h4>
								<div class="form-group row">
									<label for="country-v" class="col-sm-3 control-label">Country</label>
									<div class="col-sm-9">
										<select name="countryId" id="countryId"
											onchange='getRegions(this.value)' disabled>
											<option label="Select Country" />
											<c:forEach items="${countries}" var="list">
												<option value="${list.code}"
													<c:choose>
													<c:when
														test="${list.countriesId==user.countries.countriesId}">
														selected
															
													</c:when>
												</c:choose>
													label=" ${list.code} - ${list.name}" />

											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="province-v" class="col-sm-3 control-label">Province
										/ State</label>
									<div class="col-sm-9">
										<div id="province-v">
											<input id="region" name="region" type="text"
												placeholder="State/Provice" class="form-control"
												value="${user.regions.name}" disabled> <input
												id="regionsId" name="regionsId" type="hidden"
												placeholder="State/Provice" class="form-control"
												value="${user.regions.id}">
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="city-v" class="col-sm-3 control-label">City</label>
									<div class="col-sm-9">
										<div id="cities">
											<input id="cities" name="cities" type="text"
												placeholder="City" class="form-control"
												value="${user.cities.name}" disabled> <input
												id="citiesId" name="citiesId" type="hidden"
												class="form-control" value="${user.cities.citiesId}">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="phone" class="col-sm-3 control-label">Address</label>
									<div class="col-sm-9">
										<input id="address" name="address" type="text"
											placeholder="Phone" disabled value="${user.address}"
											class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="phone" class="col-sm-3 control-label">Postal
										Code</label>
									<div class="col-sm-9">
										<input id="postalCode" name="postalCode" type="text"
											placeholder="Phone" disabled value="${user.postalCode}"
											class="form-control">
									</div>
								</div>
								<h4 class="sep-bottom">Profile Image</h4>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<div data-provides="fileinput" class="fileinput fileinput-new">
											<div style="width: 120px; height: 120px;"
												class="fileinput-new thumbnail">
												<img
													src="${pageContext.request.contextPath}/resources/profile-images/${user.id.username}-profile-image.jpg" onError="this.src='${pageContext.request.contextPath}/resources/profile-images/default-profile.jpg'">
											</div>
											<div style="max-width: 120px; max-height: 120px;"
												class="fileinput-preview fileinput-exists thumbnail"></div>
											<div>
												<span class="btn btn-dark btn-file"><span
													class="fileinput-new">Select image</span><input id="file"
													type="file" name="file"></span>
											</div>
										</div>
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
