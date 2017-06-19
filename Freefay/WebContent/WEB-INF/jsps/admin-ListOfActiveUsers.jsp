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
					<div class="toast-message">Updated Successfully</div>
				</div>
			</div>

		</c:when>
	</c:choose>

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
							<span>InActive Users</span> Table -- ${status}
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
							<div class="doc doc-info doc-border doc-left l-spaced-bottom">Refresh
								to see new entries.</div>
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
									<th data-toggle="true">First Name</th>
									<th data-toggle="true">Last Name</th>
									<th data-toggle="true">Email Id</th>
									<th data-toggle="true">UserName</th>
									<th data-toggle="true">Gender</th>
									<th data-toggle="true">ContactNo</th>
									<th data-toggle="true">Address</th>
									<th data-toggle="true">Verified</th>
									<th data-hide="phone">Date</th>
									<th data-hide="phone">Time</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ListOfActiveUsers}" var="loc">

									<tr>
										<td>${loc.firstName}</td>
										<td>${loc.lastName}</td>
										<td>${loc.emailId}</td>
										<td>${loc.id.username}</td>
										<td>${loc.gender}</td>
										<td>${loc.contactNo}</td>
										<td>${loc.address}</td>
										<c:choose>
											<c:when test="${(loc.verified=='1')}">
												<td data-value="${loc.active}"><span title="Active"
													class="label label-success">Yes</span></td>
											</c:when>
										</c:choose>
										<c:choose>
											<c:when test="${(loc.verified=='0')}">
												<td data-value="${loc.verified+2}"><span
													title="Suspended" class="label label-danger">No</span></td>
											</c:when>
										</c:choose>
										<td>${loc.date}</td>
										<td>${loc.time}</td>
										<c:choose>
											<c:when test="${(loc.active=='1')}">
												<td data-value="${loc.active}"><span title="Active"
													class="label label-success">Active</span></td>
											</c:when>
										</c:choose>
										<c:choose>
											<c:when test="${(loc.active=='0')}">
												<td data-value="${loc.active+2}"><span
													title="Suspended" class="label label-danger">Disabled</span></td>
											</c:when>
										</c:choose>
										<td>
											<div class="btn-group">
												<button type="button" data-toggle="dropdown"
													class="btn btn-drop btn-dark dropdown-toggle"
													aria-expanded="false">
													Action<span class="caret"></span>
												</button>
												<ul role="menu" class="dropdown-menu drop-dark">
													<c:choose>
														<c:when test="${(loc.active=='0')}">
															<li><a
																href="${pageContext.request.contextPath}/admin/updateUsers.io?usersId=${loc.id.username}&amp;active=1&amp;check=ListOfActiveUsers">Activate</a></li>
														</c:when>
													</c:choose>
													<c:choose>
														<c:when test="${(loc.active=='1')}">
															<li><a
																href="${pageContext.request.contextPath}/admin/updateUsers.io?usersId=${loc.id.username}&amp;active=0&amp;check=ListOfActiveUsers">Disable</a></li>
														</c:when>
													</c:choose>
												</ul>
											</div>


										</td>
									</tr>
								</c:forEach>
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