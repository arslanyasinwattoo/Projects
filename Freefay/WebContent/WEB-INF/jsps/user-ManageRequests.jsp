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
					<div class="toast-message">Deleted Successfully</div>
				</div>
			</div>

		</c:when>
	</c:choose>


		<div class="l-spaced">
		<div class="l-box l-spaced-bottom">
			<div class="l-box-header">
				<h2 class="l-box-title">
					<span>Manage</span> Requests
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
				<ul role="tablist" class="nav nav-tabs">
					<li class="active"><a href="#home" role="tab"
						data-toggle="tab">Approved</a></li>
					<li><a href="#profile" role="tab" data-toggle="tab">Pending</a></li>
					<li><a href="#messages" role="tab" data-toggle="tab">UnApproved</a></li>
				</ul>
				<!-- Tab panes-->
				<div class="tab-content">
					<div id="home" class="tab-pane active l-spaced-vertical">
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
											<span>Approved</span> Table
										</h2>
										<ul class="l-box-options">
											<li><a href="#"><i class="fa fa-cogs"></i></a></li>
											<li><a href="#" data-ason-type="fullscreen"
												data-ason-target=".l-box" data-ason-content="true"
												class="ason-widget"></a></li>
											<li><a
												href="${pageContext.request.contextPath}/admin/ListOfField.io"
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
												<a href="#clear" title="clear filter"
													class="btn btn-dark clear-filter mr-20">Clear</a><span
													class="row-count"></span>
											</form>
										</div>
										<table id="fooTableId" data-filter="#filter"
											data-page-size="5" class="table table-hover label-container">
											<thead>
												<tr class="active">
													<th data-toggle="true">Name</th>
													<th data-toggle="true">Budget</th>
													<th data-toggle="true">Category</th>
													<th data-toggle="true">SubCategory</th>
													<th data-toggle="true">Field</th>
													<th data-hide="phone">Date</th>
													<th data-hide="phone">Time</th>

													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${approvedRequests}" var="loc">

													<tr>
														<td>${loc.requestName}</td>
														<td>${loc.budget}</td>
														<td>${loc.category.categoryName}</td>
														<td>${loc.subCategory.subCategoryName}</td>
														<td>${loc.fields.fieldName}</td>
														<td>${loc.date}</td>
														<td>${loc.time}</td>

														<td>
															<div class="btn-group">
																<button type="button" data-toggle="dropdown"
																	class="btn btn-drop btn-dark dropdown-toggle"
																	aria-expanded="false">
																	Action<span class="caret"></span>
																</button>
																<ul role="menu" class="dropdown-menu drop-dark">
																	<li><a
																		href="${pageContext.request.contextPath}/user/deleteRequest.io?requestId=${loc.requestsId}">Delete</a></li>

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
					</div>
					<div id="profile" class="tab-pane l-spaced-vertical">
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
											<span>Pending</span> Table
										</h2>
										<ul class="l-box-options">
											<li><a href="#"><i class="fa fa-cogs"></i></a></li>
											<li><a href="#" data-ason-type="fullscreen"
												data-ason-target=".l-box" data-ason-content="true"
												class="ason-widget"></a></li>
											<li><a
												href="${pageContext.request.contextPath}/admin/ListOfField.io"
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
												<a href="#clear" title="clear filter"
													class="btn btn-dark clear-filter mr-20">Clear</a><span
													class="row-count"></span>
											</form>
										</div>
										<table id="fooTableId" data-filter="#filter"
											data-page-size="5" class="table table-hover label-container">
											<thead>
												<tr class="active">
													<th data-toggle="true">Name</th>
													<th data-toggle="true">Budget</th>
													<th data-toggle="true">Category</th>
													<th data-toggle="true">SubCategory</th>
													<th data-toggle="true">Field</th>
													<th data-hide="phone">Date</th>
													<th data-hide="phone">Time</th>

													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${pendingRequests}" var="loc">

													<tr>
														<td>${loc.requestName}</td>
														<td>${loc.budget}</td>
														<td>${loc.category.categoryName}</td>
														<td>${loc.subCategory.subCategoryName}</td>
														<td>${loc.fields.fieldName}</td>
														<td>${loc.date}</td>
														<td>${loc.time}</td>

														<td>
															<div class="btn-group">
																<button type="button" data-toggle="dropdown"
																	class="btn btn-drop btn-dark dropdown-toggle"
																	aria-expanded="false">
																	Action<span class="caret"></span>
																</button>
																<ul role="menu" class="dropdown-menu drop-dark">
																	<li><a
																		href="${pageContext.request.contextPath}/user/deleteRequest.io?requestId=${loc.requestsId}">Delete</a></li>

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
					</div>
					<div id="messages" class="tab-pane l-spaced-vertical">
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
											<span>UnApproved</span> Table
										</h2>
										<ul class="l-box-options">
											<li><a href="#"><i class="fa fa-cogs"></i></a></li>
											<li><a href="#" data-ason-type="fullscreen"
												data-ason-target=".l-box" data-ason-content="true"
												class="ason-widget"></a></li>
											<li><a
												href="${pageContext.request.contextPath}/admin/ListOfField.io"
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
												<a href="#clear" title="clear filter"
													class="btn btn-dark clear-filter mr-20">Clear</a><span
													class="row-count"></span>
											</form>
										</div>
										<table id="fooTableId" data-filter="#filter"
											data-page-size="5" class="table table-hover label-container">
											<thead>
												<tr class="active">
													<th data-toggle="true">Name</th>
													<th data-toggle="true">Budget</th>
													<th data-toggle="true">Category</th>
													<th data-toggle="true">SubCategory</th>
													<th data-toggle="true">Field</th>
													<th data-hide="phone">Date</th>
													<th data-hide="phone">Time</th>

													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${unApprovedRequests}" var="loc">

													<tr>
														<td>${loc.requestName}</td>
														<td>${loc.budget}</td>
														<td>${loc.category.categoryName}</td>
														<td>${loc.subCategory.subCategoryName}</td>
														<td>${loc.fields.fieldName}</td>
														<td>${loc.date}</td>
														<td>${loc.time}</td>

														<td>
															<div class="btn-group">
																<button type="button" data-toggle="dropdown"
																	class="btn btn-drop btn-dark dropdown-toggle"
																	aria-expanded="false">
																	Action<span class="caret"></span>
																</button>
																<ul role="menu" class="dropdown-menu drop-dark">
																	<li><a
																		href="${pageContext.request.contextPath}/user/deleteRequest.io?requestId=${loc.requestsId}">Delete</a></li>

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
					</div>

				</div>
			</div>
		</div>
	</div>
</t:template>
