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
				<span>Menu</span>System
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

		<input id='c1' name="c1" type="hidden" value="${c1.categoryId}">
		<input id='c2' name="c2" type="hidden" value="${c2.categoryId}">
		<input id='c3' name="c3" type="hidden" value="${c3.categoryId}">
		<input id='c4' name="c4" type="hidden" value="${c4.categoryId}">
		<input id='c5' name="c5" type="hidden" value="${c5.categoryId}">
		<input id='c6' name="c6" type="hidden" value="${c6.categoryId}">
		<input id='c7' name="c7" type="hidden" value="${c7.categoryId}">
		<input id='c8' name="c8" type="hidden" value="${c8.categoryId}">


		<div class="l-box-body l-spaced">
			<form action="${pageContext.request.contextPath}/admin/saveMenu.io"
				method="Post" role="form" class="form-horizontal">
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId1" id="categoryId1">
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}" label="${list.categoryName}" />
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId2" id="categoryId2">
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}" label="${list.categoryName}" />
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId3" id="categoryId3">
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}" label="${list.categoryName}" />
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId4" id="categoryId4">
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}" label="${list.categoryName}" />
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId5" id="categoryId5">
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}" label="${list.categoryName}" />
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId6" id="categoryId6">
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}" label="${list.categoryName}" />
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId7" id="categoryId7">
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}" label="${list.categoryName}" />
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-md-3 control-label">Category</label>
					<div class="col-md-9">
						<select name="categoryId8" id="categoryId8">
							<option label="Select Category" />
							<c:forEach items="${category}" var="list">
								<option value="${list.categoryId}" label="${list.categoryName}" />
							</c:forEach>
						</select>
					</div>
				</div>
				<c:choose>
					<c:when test="${(c1.categoryId)!=0}">
						<script>
							myFunction2();
							function myFunction2() {
								document.getElementById('categoryId1').value = document
										.getElementById('c1').value;
								document.getElementById('categoryId2').value = document
										.getElementById('c2').value;
								document.getElementById('categoryId3').value = document
										.getElementById('c3').value;
								document.getElementById('categoryId4').value = document
										.getElementById('c4').value;
								document.getElementById('categoryId5').value = document
										.getElementById('c5').value;
								document.getElementById('categoryId6').value = document
										.getElementById('c6').value;
								document.getElementById('categoryId7').value = document
										.getElementById('c7').value;
								document.getElementById('categoryId8').value = document
										.getElementById('c8').value;
							};
						</script>
					</c:when>
				</c:choose>


				<div class="form-group">
					<div class="col-md-offset-3 col-md-9">
						<button type="submit" class="btn btn-default">Update</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</t:template>