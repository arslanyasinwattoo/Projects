
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

						<!-- 	<section id="contact" class="section-scroll main-section"> -->
						<c:choose>
							<c:when test="${(checking=='Add')}">
								<div class="row">
									<div class="col-xs-12 menu-category sticky-header">
										<h2>Resturant</h2>
									</div>
								</div>
								<div class="contact-content container section-padding">
									<div class="row">
										<div class="col-xs-12 col-md-7">

											<form
												action="${pageContext.request.contextPath}/AddResturant.bnu"
												method="POST" enctype="multipart/form-data">
												<div class="col-md-6">
													<div class="form-group">
														<input type="text" name="name"
															class="form-control contact-form " placeholder="Name" />
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<input name="image" type="file"
															class="form-control contact-form " placeholder="" />
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group text-right button-submit btn-submit">
														<button type="submit" class="btn btn-dark button-send">ADD
															Resturant</button>
														<div class="message-success alert-success alert hidden">
															<i class="fa fa-check"></i>
														</div>
													</div>
												</div>

											</form>
										</div>
									</div>
								</div>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${(role=='Admin')}">
								<c:choose>
									<c:when test="${(checking=='pending')}">
										<div class="row-fluid">
											<div class="span6">
												<div class="box paint color_25">
													<div class="row">
														<div class="col-xs-12 menu-category sticky-header">
															<h2>Pending Resturants</h2>
														</div>
													</div>
													<!-- End .title -->
													<div class="content">
														<table class="table table-striped">
															<thead>
																<tr>
																	<th>ID</th>
																	<th>ResturantName</th>
																	<th>Action</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${resturant}" var="pending_resturant">
																	<tr>
																		<td>${pending_resturant.resturantId}</td>
																		<td>${pending_resturant.resturantName}</td>
																		<td><a class="icon-thumbs-up"
																			href="${pageContext.request.contextPath}/updateResturant.bnu?resturantId=${pending_resturant.resturantId}&amp;pending=0&amp;block=${pending_resturant.resturantBlocked}&amp;check=2&amp;checking=Pending"><i></i></a></td>
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
														<h2>Blocked Resturants</h2>
													</div>
												</div>
												<!-- End .title -->
												<div class="content">
													<table class="table table-striped">
														<thead>
															<tr>
																<th>ID</th>
																<th>resturantName</th>
																<th>Action</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${resturant}" var="block_resturant">
																<tr>
																	<td>${block_resturant.resturantId}</td>
																	<td>${block_resturant.resturantName}</td>
																	<td><a class="icon-thumbs-up"
																		href="${pageContext.request.contextPath}/updateResturant.bnu?resturantId=${block_resturant.resturantId}&amp;block=0&amp;pending=${block_resturant.resturantPending}&amp;check=2&amp;checking=blocked"><i></i></a></td>
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
					</c:when>
					</c:choose>

					<c:choose>
						<c:when test="${(checking=='view')}">
							<div class="span6">
								<div class="box paint color_25">
									<div class="row">
										<div class="col-xs-12 menu-category sticky-header">
											<h2>All Resturants</h2>
										</div>
									</div>
									<!-- End .title -->
									<div class="content">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>ID</th>
													<th>resturantName</th>
													<th>Pending</th>
													<th>Blocked</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${resturant}" var="resturants">
													<tr>
														<td>${resturants.resturantId}</td>
														<td>${resturants.resturantName}</td>
														<c:choose>
															<c:when test="${(resturants.resturantPending==1)}">
																<td>Pending</td>
															</c:when>
														</c:choose>

														<c:choose>
															<c:when test="${((resturants.resturantPending==0))}">
																<td>Approved</td>
															</c:when>
														</c:choose>
														<c:choose>
															<c:when test="${(resturants.resturantBlocked==0)}">
																<td>Approved</td>
															</c:when>
														</c:choose>

														<c:choose>
															<c:when test="${((resturants.resturantBlocked==1))}">
																<td>Blocked</td>
															</c:when>
														</c:choose>
														<c:choose>
															<c:when test="${(role=='Admin')}">

																<td><a class="icon-thumbs-down"
																	href="${pageContext.request.contextPath}/updateResturant.bnu?resturantId=${resturants.resturantId}&amp;block=1&amp;pending=${resturants.resturantPending}&amp;check=2&amp;checking=view"><i></i></a><a
																	class="icon-thumbs-up"
																	href="${pageContext.request.contextPath}/updateResturant.bnu?resturantId=${resturants.resturantId}&amp;block=0&amp;pending=${resturants.resturantPending}&amp;check=2&amp;checking=view"><i></i></a></td>
															</c:when>
														</c:choose>
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


