<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
					<div class="toast-message">Sent</div>
				</div>
			</div>

		</c:when>
	</c:choose>
	<script>
		function updateShouts() {
			// Assuming we have #shoutbox
			var url = "${pageContext.request.contextPath}/user/chatBox.io";
			//	alert(url);
			$.get(url, function(data) {
				document.getElementById("chatbox").innerHTML = data;

			});
		}
		setInterval("updateShouts()", 1000);
	</script>
	<section>
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
			<div class="l-row">
				<div class="l-box">
					<div class="l-box-header">
						<h2 class="l-box-title">
							<span>Orders</span>
						</h2>
						<ul class="l-box-options">
							<li><a href="#"><i class="fa fa-cogs"></i></a></li>
							<li><a href="#" data-ason-type="fullscreen"
								data-ason-target=".l-box" data-ason-content="true"
								class="ason-widget"></a></li>
							<li><a
								href="${pageContext.request.contextPath}/admin/ListOfCategory.io"
								data-ason-type="refresh" data-ason-target=".l-box"
								data-ason-duration="1000" class="ason-widget"><i
									class="fa fa-rotate-right"></i></a></li>
							<li><a href="#" data-ason-type="toggle"
								data-ason-find=".l-box" data-ason-target=".l-box-body"
								data-ason-content="true" data-ason-duration="200"
								class="ason-widget"></a></li>
							<li><a href="#" data-ason-type="delete"
								data-ason-target=".l-box" data-ason-content="true"
								data-ason-animation="fadeOut" class="ason-widget"></a></li>
						</ul>
					</div>
					<div class="l-box-body">
						<div class="l-spaced">
							<form role="form" class="form-inline">
								<div class="form-group mr-20">
									<label for="filter" class="mr-5">Search</label> <input
										id="filter" type="text" class="form-control">
								</div>
								<div class="form-group mr-20">
									<label for="status" class="mr-5">Status</label> <select
										id="status" class="form-control filter-status">
										<option></option>
										<option value="active">Active</option>
										<option value="disabled">Disabled</option>
									</select>
								</div>
								<a href="#clear" title="clear filter"
									class="btn btn-dark clear-filter mr-20">Clear</a><span
									class="row-count"></span>
							</form>
						</div>
						<table id="fooTableId" data-filter="#filter" data-page-size="5"
							class="table table-hover label-container">
							<thead>
								<tr class="active">
									<th data-toggle="true">servicesId</th>
									<th data-toggle="true">Subject</th>
									<th data-toggle="true">UserName</th>
									<th data-hide="phone">Date</th>
									<th data-hide="phone">Time</th>
									<th>Read</th>
									<th>Status</th>
								</tr>
							</thead>

							<tbody id="chatbox">

							</tbody>
							<tfoot class="hide-if-no-paging">
								<tr>
									<td colspan="5" class="tac">
										<ul class="pagination"></ul>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

</t:template>