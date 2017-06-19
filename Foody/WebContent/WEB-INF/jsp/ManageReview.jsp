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
				function getFoodID(id) {
					var url = "${pageContext.request.contextPath}/AjaxFoodItem.bnu?foodTypeId="
							+ id;
					$
							.get(
									url,
									function(data) {
										document
												.getElementById("foodItemOptions").innerHTML = data;
									});
				}
				function ratingClick(theButton) {
					if (theButton == "1") {
						document.getElementById("ratingUl").className = 'rating onestar';
						document.getElementById('rating').value = 1;
					} else if (theButton == "2") {
						document.getElementById("ratingUl").className = 'rating twostar';
						document.getElementById('rating').value = 2;
					} else if (theButton == "3") {
						document.getElementById("ratingUl").className = 'rating threestar';
						document.getElementById('rating').value = 3;
					} else if (theButton == "4") {
						document.getElementById("ratingUl").className = 'rating fourstar';
						document.getElementById('rating').value = 4;
					} else if (theButton == "5") {
						document.getElementById("ratingUl").className = 'rating fivestar';
						document.getElementById('rating').value = 5;
					}

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
							<c:choose>
								<c:when test="${(checking=='Add')}">
									<div class="row">
										<div class="col-xs-12 menu-category sticky-header">
											<h2>Review</h2>
										</div>
										<div class="contact-content container section-padding">
											<div class="row">
												<h1></h1>

												<form id="f1"
													action="${pageContext.request.contextPath}/AddReview.bnu"
													method="POST">
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


														<div id="foodItemOptions"></div>

														<ul class="rating onestar" id="ratingUl">
															<li class="one" onclick="ratingClick('1')" id="1 Star">1</li>
															<li class="two" onclick="ratingClick('2')" id="2 Stars">2</li>
															<li class="three" onclick="ratingClick('3')" id="3 Stars">3</li>
															<li class="four" onclick="ratingClick('4')" id="4 Stars">4</li>
															<li class="five" onclick="ratingClick('5')" id="5 Stars">5</li>
														</ul>
														<input type="hidden" name="rating" id="rating" value="" />
														<div class="form-group">
															<input name="review" type="text"
																class="form-control contact-form " placeholder="Reviews" />
														</div>
														<%-- 								<spring:input path="foodTypeId" type="hidden" --%>
														<%-- 									class="form-control contact-form " name="id" /> --%>
														<!-- 							</div> -->
														<div class="col-md-6">
															<div
																class="form-group text-right button-submit btn-submit">
																<button type="submit" class="btn btn-dark button-send">ADD
																	Review</button>
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
																<h2>Pending Reviews</h2>
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
																			<th>Food Description</th>
																			<th>rating</th>
																			<th>Action</th>
																		</tr>
																	</thead>
																	<tbody>
																		<c:forEach items="${FoodItemReview}"
																			var="pending_FoodItem">
																			<tr>
																				<td>${pending_FoodItem.foodItemsReviewId}</td>
																				<td>${pending_FoodItem.resturantName}</td>
																				<td>${pending_FoodItem.foodTypeName}</td>
																				<td>${pending_FoodItem.foodItemName}</td>
																				<td>${pending_FoodItem.foodItemsReviewDescription}</td>
																				<td>
																					<ul
																						class="rating
															${pending_FoodItem.foodItemsReviewRating}">
																						<li class="one" id="1 Star">1</li>
																						<li class="two" id="2 Stars">2</li>
																						<li class="three" id="3 Stars">3</li>
																						<li class="four" id="4 Stars">4</li>
																						<li class="five" id="5 Stars">5</li>
																					</ul>
																				</td>
																				<td><a class="icon-thumbs-up"
																					href="${pageContext.request.contextPath}/updateReview.bnu?reviewId=${pending_FoodItem.foodItemsReviewId}&amp;pending=0&amp;block=${pending_FoodItem.foodItemsReviewBlocked}&amp;check=2&amp;checking=Pending"><i></i></a></td>
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
															<h2>Blocked Reviews</h2>
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
																		<th>Food Description</th>
																		<th>rating</th>
																		<th>Action</th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${FoodItemReview}"
																		var="block_FoodItem">
																		<tr>
																			<td>${block_FoodItem.foodItemsReviewId}</td>
																			<td>${block_FoodItem.resturantName}</td>
																			<td>${block_FoodItem.foodTypeName}</td>
																			<td>${block_FoodItem.foodItemName}</td>
																			<td>${block_FoodItem.foodItemsReviewDescription}</td>
																			<td>
																				<ul
																					class="rating
															${block_FoodItem.foodItemsReviewRating}">
																					<li class="one" id="1 Star">1</li>
																					<li class="two" id="2 Stars">2</li>
																					<li class="three" id="3 Stars">3</li>
																					<li class="four" id="4 Stars">4</li>
																					<li class="five" id="5 Stars">5</li>
																				</ul>
																			</td>
																			<td><a class="icon-thumbs-up"
																				href="${pageContext.request.contextPath}/updateReview.bnu?reviewId=${block_FoodItem.foodItemsReviewId}&amp;block=0&amp;pending=${block_FoodItem.foodItemsReviewPending}&amp;check=2&amp;checking=blocked"><i></i></a></td>


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
													<h2>All Reviews</h2>
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
																<th>Food Description</th>
																<th>rating</th>
																<th>Pending</th>
																<th>Blocked</th>
																<th>Action</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${FoodItemReview}" var="foodItem">
																<tr>
																	<td>${foodItem.foodItemsReviewId}</td>
																	<td>${foodItem.resturantName}</td>
																	<td>${foodItem.foodTypeName}</td>
																	<td>${foodItem.foodItemName}</td>
																	<td>${foodItem.foodItemsReviewDescription}</td>
																	<td>
																		<ul
																			class="rating
															${foodItem.foodItemsReviewRating}">
																			<li class="one" id="1 Star">1</li>
																			<li class="two" id="2 Stars">2</li>
																			<li class="three" id="3 Stars">3</li>
																			<li class="four" id="4 Stars">4</li>
																			<li class="five" id="5 Stars">5</li>
																		</ul>
																	</td>
																	<c:choose>
																		<c:when test="${(foodItem.foodItemsReviewPending==1)}">
																			<td>Pending</td>
																		</c:when>
																	</c:choose>

																	<c:choose>
																		<c:when
																			test="${((foodItem.foodItemsReviewPending==0))}">
																			<td>Approved</td>
																		</c:when>
																	</c:choose>
																	<c:choose>
																		<c:when test="${(foodItem.foodItemsReviewBlocked==0)}">
																			<td>Approved</td>
																		</c:when>
																	</c:choose>

																	<c:choose>
																		<c:when
																			test="${((foodItem.foodItemsReviewBlocked==1))}">
																			<td>Blocked</td>
																		</c:when>
																	</c:choose>
																	<c:choose>
																		<c:when test="${(role=='Admin')}">

																			<td><a class="icon-thumbs-down"
																				href="${pageContext.request.contextPath}/updateReview.bnu?reviewId=${foodItem.foodItemsReviewId}&amp;block=1&amp;pending=${foodItem.foodItemsReviewPending}&amp;check=2&amp;checking=view"><i></i></a><a
																				class="icon-thumbs-up"
																				href="${pageContext.request.contextPath}/updateReview.bnu?reviewId=${foodItem.foodItemsReviewId}&amp;block=0&amp;pending=${foodItem.foodItemsReviewPending}&amp;check=2&amp;checking=view"><i></i></a></td>
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
					</div>
			</section>
	</div>
</t:template>


