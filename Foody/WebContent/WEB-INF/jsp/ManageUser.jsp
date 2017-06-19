<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<div class="open-daily yo-anim yo-anim-fade"
		data-animation-delay="1000">
		<section id="contact" class="section-scroll main-section">
			<section id="menu" class="section-scroll main-section menu">
				<div class="container-fluid menu-content mixitup">
					<div class="mix starters" data-myorder="2">
						<div class="row">
							<div class="col-xs-12 menu-category sticky-header">
								<h2></h2>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 menu-category sticky-header">
								<h2></h2>
							</div>
						</div>

						<c:choose>
							<c:when test="${(checking=='pending')}">
								<div class="row-fluid">
									<div class="span6">
										<div class="box paint color_25">
											<div class="row">
												<div class="col-xs-12 menu-category sticky-header">
													<h2>Pending Users</h2>
												</div>
											</div>
											<!-- End .title -->
											<div class="content">
												<table class="table table-striped">
													<thead>
														<tr>
															<th>ID</th>
															<th>Username</th>
															<th>Date</th>
															<th>Action</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${users}" var="pending_user">
															<tr>
																<td>${pending_user.usersId}</td>
																<td>${pending_user.userName}</td>
																<td>${pending_user.createdOnTimestamp}</td>
																<td><a class="icon-thumbs-up"
																	href="${pageContext.request.contextPath}/AdminHome.bnu?userId=${pending_user.usersId}&amp;pending=1&amp;block=${pending_user.usersBlocked}&amp;check=2&amp;checking=pending"><i></i></a></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- End .box .span6 -->
									<!-- End .box .span6 -->
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${(checking=='blocked')}">

								<div class="span6">
									<div class="box paint color_25">
										<div class="row">
											<div class="col-xs-12 menu-category sticky-header">
												<h2>Blocked Users</h2>
											</div>
										</div>
										<!-- End .title -->
										<div class="content">
											<table class="table table-striped">
												<thead>
													<tr>
														<th>ID</th>
														<th>Username</th>
														<th>Date</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${users}" var="block_user">
														<tr>
															<td>${block_user.usersId}</td>
															<td>${block_user.userName}</td>
															<td>${block_user.createdOnTimestamp}</td>

															<td><a class="icon-thumbs-up"
																href="${pageContext.request.contextPath}/AdminHome.bnu?userId=${block_user.usersId}&amp;block=0&amp;pending=${block_user.isConfirmed}&amp;check=2&amp;checking=blocked"><i></i></a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<!-- End .box .span6 -->
					</div>
					</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${(checking=='view')}">
							<div class="span6">
								<div class="box paint color_25">
									<div class="row">
										<div class="col-xs-12 menu-category sticky-header">
											<h2>All Users</h2>
										</div>
									</div>
									<!-- End .title -->
									<div class="content">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>ID</th>
													<th>Username</th>
													<th>Date</th>
													<th>Pending</th>
													<th>Blocked</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${users}" var="block_user">
													<tr>
														<td>${block_user.usersId}</td>
														<td>${block_user.userName}</td>
														<td>${block_user.createdOnTimestamp}</td>
														<c:choose>
															<c:when test="${(block_user.isConfirmed==0)}">
																<td>Pending</td>
															</c:when>
														</c:choose>

														<c:choose>
															<c:when test="${((block_user.isConfirmed==1))}">
																<td>Approved</td>
															</c:when>
														</c:choose>
														<c:choose>
															<c:when test="${(block_user.usersBlocked==0)}">
																<td>Approved</td>
															</c:when>
														</c:choose>

														<c:choose>
															<c:when test="${((block_user.usersBlocked==1))}">
																<td>Blocked</td>
															</c:when>
														</c:choose>
														<td><a class="icon-thumbs-down"
															href="${pageContext.request.contextPath}/AdminHome.bnu?userId=${block_user.usersId}&amp;block=1&amp;pending=${block_user.isConfirmed}&amp;check=2&amp;checking=view"><i></i></a><a
															class="icon-thumbs-up"
															href="${pageContext.request.contextPath}/AdminHome.bnu?userId=${block_user.usersId}&amp;block=0&amp;pending=${block_user.isConfirmed}&amp;check=2&amp;checking=view"><i></i></a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>

						</c:when>
					</c:choose>
				</div>
			</section>

		</section>
	</div>
</t:template>


