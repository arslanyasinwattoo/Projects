<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<div class="open-daily yo-anim yo-anim-fade"
		data-animation-delay="1000">
		<section id="contact" class="section-scroll main-section">

			<!-- 	<section id="contact" class="section-scroll main-section"> -->
			<script type="text/javascript">
				// 		function getID(f) {
				// 			window.location
				// 					.assign("${pageContext.request.contextPath}/AjaxFoodType.bnu?foodtypeId="
				// 							+ f);
				// 		}
				function getID(f) {
					var url = "${pageContext.request.contextPath}/AjaxFoodType.bnu?resturantId="
							+ f;
					$
							.get(
									url,
									function(data) {
										document
												.getElementById("foodTypeOptions").innerHTML = data;
									});
				}

				function setfoodTypeId(d) {
					//document.forms['f1'].id.value = d.options[d.options.selectedIndex].value;
					$
					{
						FoodItem.foodTypeId = d.options[d.options.selectedIndex].value
					}
					;
				}
			</script>
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
							<c:when test="${(checking=='Add')}">
								<div class="row">
									<div class="col-xs-12 menu-category sticky-header">
										<h2>Food Item</h2>
									</div>
								</div>
								<div class="contact-content container section-padding">
									<div class="row">
										<div class="col-xs-12 col-md-7">

											<form id="f1"
												action="${pageContext.request.contextPath}/AddFoodItem.bnu"
												method="POST" enctype="multipart/form-data">
												<div class="col-md-6">
													<div class="form-group">
														<select name="resturantId" onchange='getID(this.value)'>
															<option label="Select Resturant" />
															<c:forEach items="${resturant}" var="list">
																<option value="${list.resturantId}"
																	label="${list.resturantName}" />
															</c:forEach>
														</select>
													</div>

													<div id="foodTypeOptions"></div>

													<div class="form-group">
														<input name="foodName" type="text"
															class="form-control contact-form " placeholder="Name" />
													</div>
													<%-- 								<spring:input path="foodTypeId" type="hidden" --%>
													<%-- 									class="form-control contact-form " name="id" /> --%>
													<!-- 							</div> -->

													<div class="form-group">
														<input name="image" type="file"
															class="form-control contact-form " placeholder="" />
													</div>

													<div class="col-md-6">
														<div
															class="form-group text-right button-submit btn-submit">
															<button type="submit" class="btn btn-dark button-send">ADD
																FoodItem</button>
															<div class="message-success alert-success alert hidden">
																<i class="fa fa-check"></i>
															</div>
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
															<h2>Pending Food Items</h2>
														</div>
													</div>
													<!-- End .title -->
													<div class="content">
														<table class="table table-striped">
															<thead>
																<tr>
																	<th>ID</th>
																	<th>ResturantName</th>
																	<th>Food Type</th>
																	<th>Food Item</th>
																	<th>Action</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${FoodItem}" var="pending_FoodItem">
																	<tr>
																		<td>${pending_FoodItem.foodItemsId}</td>
																		<td>${pending_FoodItem.resturantName}</td>
																		<td>${pending_FoodItem.foodTypeName}</td>
																		<td>${pending_FoodItem.foodItemsName}</td>
																		<td><a class="icon-thumbs-up"
																			href="${pageContext.request.contextPath}/updateFoodItem.bnu?foodItemId=${pending_FoodItem.foodItemsId}&amp;pending=0&amp;block=${pending_FoodItem.foodItemsBlocked}&amp;check=2&amp;checking=Pending"><i></i></a></td>
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
														<h2>Blocked Food Items</h2>
													</div>
												</div>
												<!-- End .title -->
												<div class="content">
													<table class="table table-striped">
														<thead>
															<tr>
																<th>ID</th>
																<th>ResturantName</th>
																<th>Food Type</th>
																<th>Food Item</th>
																<th>Action</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${FoodItem}" var="block_FoodItem">
																<tr>
																	<td>${block_FoodItem.foodItemsId}</td>
																	<td>${block_FoodItem.resturantName}</td>
																	<td>${block_FoodItem.foodTypeName}</td>
																	<td>${block_FoodItem.foodItemsName}</td>
																	<td><a class="icon-thumbs-up"
																		href="${pageContext.request.contextPath}/updateFoodItem.bnu?foodItemId=${block_FoodItem.foodItemsId}&amp;block=0&amp;pending=${block_FoodItem.foodItemsPending}&amp;check=2&amp;checking=blocked"><i></i></a></td>


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
											<h2>All Food Items</h2>
										</div>
									</div>
									<!-- End .title -->
									<div class="content">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>ID</th>
													<th>ResturantName</th>
													<th>Food Type</th>
													<th>Food Item</th>
													<th>Pending</th>
													<th>Blocked</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${FoodItem}" var="foodItem">
													<tr>
														<td>${foodItem.foodItemsId}</td>
														<td>${foodItem.resturantName}</td>
														<td>${foodItem.foodTypeName}</td>
														<td>${foodItem.foodItemsName}</td>
														<c:choose>
															<c:when test="${(foodItem.foodItemsPending==1)}">
																<td>Pending</td>
															</c:when>
														</c:choose>

														<c:choose>
															<c:when test="${((foodItem.foodItemsPending==0))}">
																<td>Approved</td>
															</c:when>
														</c:choose>
														<c:choose>
															<c:when test="${(foodItem.foodItemsBlocked==0)}">
																<td>Approved</td>
															</c:when>
														</c:choose>

														<c:choose>
															<c:when test="${((foodItem.foodItemsBlocked==1))}">
																<td>Blocked</td>
															</c:when>
														</c:choose>
														<c:choose>
															<c:when test="${(role=='Admin')}">

																<td><a class="icon-thumbs-down"
																	href="${pageContext.request.contextPath}/updateFoodItem.bnu?foodItemId=${foodItem.foodItemsId}&amp;block=1&amp;pending=${foodItem.foodItemsPending}&amp;check=2&amp;checking=view"><i></i></a><a
																	class="icon-thumbs-up"
																	href="${pageContext.request.contextPath}/updateFoodItem.bnu?foodItemId=${foodItem.foodItemsId}&amp;block=0&amp;pending=${foodItem.foodItemsPending}&amp;check=2&amp;checking=view"><i></i></a></td>
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


