<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<script>
		function getSubCategory(f) {
			var e = document.getElementById("categoryId");
			var strUser = e.options[e.selectedIndex].value;
			//alert(strUser);
			var url = "${pageContext.request.contextPath}/AjaxSubCategory.io?categoryId="
					+ f + "&check=postRequest";
			//			alert(url);
			$.get(url, function(data) {
				document.getElementById("subCategory").innerHTML = data;

			});
		}
	</script>
	<script>
		function getFields(f) {
			var e = document.getElementById("subCategoryId");
			var strUser = e.options[e.selectedIndex].value;
			//alert(strUser);
			var url = "${pageContext.request.contextPath}/AjaxFields.io?subCategoryId="
					+ f;
			//	alert(url);
			$.get(url, function(data) {
				document.getElementById("fields").innerHTML = data;

			});
		}
	</script>

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

	<div class="l-page-header">
		<h2 class="l-page-title"></h2>
		<!--BREADCRUMB-->
		<ul class="breadcrumb t-breadcrumb-page">
			<li></li>
			<li></li>
			<li class="active"></li>
		</ul>
	</div>
	<div class="l-box">
		<div class="l-box-header">
			<h2 class="l-box-title">
				<span>Post</span>Service
			</h2>
			<ul class="l-box-options">
				<li><a href="#"><i class="fa fa-cogs"></i></a></li>
				<li><a href="#" data-ason-type="fullscreen"
					data-ason-target=".l-box" data-ason-content="true"
					class="ason-widget"></a></li>
				<li><a href="#" data-ason-type="refresh"
					data-ason-target=".l-box" data-ason-duration="1000"
					class="ason-widget"><i class="fa fa-rotate-right"></i></a></li>
				<li><a href="#" data-ason-type="toggle" data-ason-find=".l-box"
					data-ason-target=".l-box-body" data-ason-content="true"
					data-ason-duration="200" class="ason-widget"></a></li>
				<li><a href="#" data-ason-type="delete"
					data-ason-target=".l-box" data-ason-content="true"
					data-ason-animation="fadeOut" class="ason-widget"></a></li>
			</ul>
		</div>
		<div class="l-box-body l-spaced">
			<form action="${pageContext.request.contextPath}/user/SaveService.io"
				method="Post" role="form" class="form-horizontal"
				enctype="multipart/form-data">
				<div class="form-group">

					<label for="inputEmail3" class="col-md-3 control-label">Name</label>
					<div class="col-md-9">
						<input id="name" name="name" type="text"
							placeholder="Service Name" class="form-control">
					</div>
				</div>
				<div class="form-group">

					<label for="inputEmail3" class="col-md-3 control-label">Description</label>
					<div class="col-md-9">
						<textarea maxlength="1000" rows=4 cols=100 id="description"
							name="description"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId" id="categoryId"
							onchange='getSubCategory(this.value)'>
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}"
									label="${list.categoryName}--(
									<c:choose>
											<c:when test="${(list.active=='1')}">
											Active
									</c:when>
								</c:choose>
									<c:choose>
											<c:when test="${(list.active=='0')}">
											Disabled
									</c:when>
								</c:choose>) " />
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">SubCategory</label>
					<div class="col-md-9">
						<div id="subCategory"></div>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">fields</label>
					<div class="col-md-9">
						<div id="fields"></div>
					</div>
				</div>
				<div class="form-group">

					<label for="inputEmail3" class="col-md-3 control-label">Price</label>
					<div class="col-md-9">
						<input id="budget" name="budget" type="number"
							placeholder="Price(min-5) $" class="form-control">
					</div>
				</div>
				<div class="form-group">

					<label for="inputEmail3" class="col-md-3 control-label">Images</label>
					<div class="col-md-9">
						<input id="file" type="file" name="file" multiple="true">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Delivery</label>
					<div class="col-md-9">
						<select name="timeLimit" id="timeLimit">
							<option label="Delivery date" />
							<option value="1-3" label="1-3 day" />
							<option value="3-7" label="3-7 days" />
							<option value="7-14" label="7-14 days" />
							<option value="14-30" label="14-30 days" />
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Tips</label>
					<div class="col-md-9">
						<select name="tips" id="tips">
							<option label="Tipping options" />
							<option value="true" label="I will be happy" />
							<option value="false" label="Naa! not my cup of tea" />
						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-offset-3 col-md-9">
						<button type="submit" class="btn btn-default">Post</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</t:template>