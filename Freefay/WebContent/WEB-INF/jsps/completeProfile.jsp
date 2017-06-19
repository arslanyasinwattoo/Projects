
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
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
	<div class="l-spaced">
		<div class="l-box l-spaced-bottom">
			<div class="l-box-header">
				<h2 class="l-box-title">
					<span>Vertical</span> Form Wizard
				</h2>
				<ul class="l-box-options">
					<li><a href="#"><i class="fa fa-cogs"></i></a></li>
					<li><a href="#" data-ason-type="fullscreen"
						data-ason-target=".l-box" data-ason-content="true"
						class="ason-widget"></a></li>
					<li><a href="#" data-ason-type="refresh"
						data-ason-target=".l-box" data-ason-duration="1000"
						class="ason-widget"><i class="fa fa-rotate-right"></i></a></li>
					<li><a href="#" data-ason-type="toggle"
						data-ason-find=".l-box" data-ason-target=".l-box-body"
						data-ason-content="true" data-ason-duration="200"
						class="ason-widget"></a></li>
					<li><a href="#" data-ason-type="delete"
						data-ason-target=".l-box" data-ason-content="true"
						data-ason-animation="fadeOut" class="ason-widget"></a></li>
				</ul>
			</div>
			<div class="l-box-body l-spaced">
				<form id="wizardVertical" name="wizardVertical"
					action="${pageContext.request.contextPath}/public/updateUser.io"
					method="Post">
					<div>

						<h3>Profile</h3>
						<section>
							<div class="form-group row">
								<label for="name-v" class="col-sm-3 control-label">First
									name *</label>
								<div class="col-sm-9">
									<input id="name-v" name="name-v" type="text"
										class="form-control required">
								</div>
							</div>
							<div class="form-group row">
								<label for="surname-v" class="col-sm-3 control-label">Last
									name *</label>
								<div class="col-sm-9">
									<input id="surname-v" name="surname-v" type="text"
										class="form-control required">
								</div>
							</div>
							<div class="form-group row">
								<label for="tel-v" class="col-sm-3 control-label">Phone</label>
								<div class="col-sm-9">
									<input id="tel-v" name="tel-v" type="text" class="form-control">
								</div>
							</div>

							<div class="form-group row">
								<label for="dob" class="col-sm-3 control-label">Dob</label>
								<div class="l-box-body l-spaced">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-calendar"></i></span><input type="date" name="dob"
											min="1950-01-01" class="form-control">
									</div>
								</div>
							</div>
							<p>(*) Mandatory</p>
						</section>
						<h3>Address</h3>
						<section>
							<div class="form-group row">
								<label for="country-v" class="col-sm-3 control-label">Country</label>
								<div class="col-sm-9">
									<select name="countryId" id="countryId"
										onchange='getRegions(this.value)'>
										<option label="Select Country" />
										<c:forEach items="${countries}" var="list">
											<option value="${list.code}"
												label="${list.code} - ${list.name}" />
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="province-v" class="col-sm-3 control-label">Province
									/ State</label>
								<div class="col-sm-9">
									<div id="province-v"></div>
								</div>
							</div>
							<div class="form-group row">
								<label for="city-v" class="col-sm-3 control-label">City</label>
								<div class="col-sm-9">
									<div id="cities"></div>
								</div>
							</div>
							<div class="form-group row">
								<label for="address-v" class="col-sm-3 control-label">Address</label>
								<div class="col-sm-9">
									<textarea id="address-v" name="address-v"
										class="form-control required"></textarea>
								</div>
							</div>


							<div class="form-group row">
								<label for="postal-v" class="col-sm-3 control-label">Postal
									/ Zip Code</label>
								<div class="col-sm-9">
									<input id="postal-v" name="postal-v" type="text"
										class="form-control required">
								</div>
							</div>

							<p>(*) Mandatory</p>
						</section>
						<h3>Finish</h3>
						<section>
							<input id="acceptTerms-v" name="acceptTerms-v" type="checkbox"
								class="required"> <label for="acceptTerms-v">I
								agree with the Terms and Conditions.</label>
						</section>
					</div>
				</form>
			</div>
		</div>
	</div>

</t:template>
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
<script src="${pageContext.request.contextPath}/resources/js/general.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/pageprogressbar/pace.min.js"></script>
<!-- Specific-->
<script
	src="${pageContext.request.contextPath}/resources/js/shared/classie.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/shared/jquery.cookie.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/shared/perfect-scrollbar.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/accordions/jquery.collapsible.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/forms/elements/jquery.bootstrap-touchspin.min"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/forms/elements/jquery.checkBo.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/forms/wizard/jquery.steps.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/forms/elements/jquery.switchery.min.82.delaye"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/forms/validation/jquery.validate.min.10e.dela"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/calls/form.wizard.js"></script>
