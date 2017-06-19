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
				<span>Publish</span>News
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
			<form action="${pageContext.request.contextPath}/admin/SaveNews.io"
				method="Post" role="form" class="form-horizontal">
				<div class="form-group">

					<label for="inputEmail3" class="col-md-3 control-label">News
						Subject</label>
					<div class="col-md-9">
						<input id="subject" name="subject" type="text"
							placeholder="News Subject" class="form-control">
					</div>
				</div>
				<div class="form-group">

					<label for="inputEmail3" class="col-md-3 control-label">News
						Details</label>
					<div class="col-md-9">
						<input id="description" name="description" type="text"
							placeholder="News " class="form-control">
					</div>
				</div>




				<div class="form-group">
					<div class="col-md-offset-3 col-md-9">
						<button type="submit" class="btn btn-default">Publish</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</t:template>