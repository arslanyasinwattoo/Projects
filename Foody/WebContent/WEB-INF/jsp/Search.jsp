<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<div class="open-daily yo-anim yo-anim-fade"
		data-animation-delay="1000">
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
					<div class="row">
						<div class="col-xs-12 menu-category sticky-header">
							<h2>Search</h2>
						</div>
					</div>
					<div class="content-1">


						<div class="row">
							<c:forEach items="${foodType}" var="foodType">
								<div class="menu-item">
									<a
										href="${pageContext.request.contextPath}/resources/foodTypeImages/${foodType.foodTypeName}-RID-${foodType.resturantId}.jpg"
										class="hidden-xs  open-overlay">
										<figure>
											<img
												src="${pageContext.request.contextPath}/resources/foodTypeImages/${foodType.foodTypeName}-RID-${foodType.resturantId}.jpg"
												alt="Menu item" class="lazyloaded">
											<div class="actions">
												<i class="icon-magnifier-add"></i>
											</div>
										</figure>
									</a>

									<div class="item-description">
										<div class="">
											<div class="">
												<h6>
													<a
														href="FoodItem.bnu?foodTypeId=${foodType.foodTypeId}&amp;check=1">${foodType.resturantName}</a>
												</h6>
												<h5>
													<a
														href="FoodItem.bnu?foodTypeId=${foodType.foodTypeId}&amp;check=1">${foodType.foodTypeName}</a>
												</h5>
												<p>click for more info</p>

											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>

					</div>
				</div>

				<div class="content-2-1">
					<div class="row">
						<c:forEach items="${foodItem}" var="foodItem">
							<div class="menu-item">
								<a
									href="${pageContext.request.contextPath}/resources/foodItemImages/${foodItem.foodItemsName}-RID-${foodItem.resturantId}-FID-${foodItem.foodTypeId}.jpg"
									class="hidden-xs  open-overlay">
									<figure>
										<img
											src="${pageContext.request.contextPath}/resources/foodItemImages/${foodItem.foodItemsName}-RID-${foodItem.resturantId}-FID-${foodItem.foodTypeId}.jpg"
											alt="Menu item" class="lazyloaded">
										<div class="actions">
											<i class="icon-magnifier-add"></i>
										</div>
									</figure>
								</a>
								<div class="item-description">
									<div class="">
										<div class="">
											<h6>
												<a
													href="FoodReview.bnu?foodItemId=${foodItem.foodItemsId}&amp;check=1">${foodItem.resturantName}</a>
											</h6>
											<h5>
												<a
													href="FoodReview.bnu?foodItemId=${foodItem.foodItemsId}&amp;check=1">${foodItem.foodTypeName}</a>
											</h5>
											<h4>
												<a
													href="FoodReview.bnu?foodItemId=${foodItem.foodItemsId}&amp;check=1">${foodItem.foodItemsName}</a>
											</h4>
											<p>click for more info</p>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="content-2-2">
					<div class="row">
						<c:forEach items="${resturant}" var="resturants">
							<div class="menu-item">
								<a
									href="${pageContext.request.contextPath}/resources/resturantImages/${resturants.resturantName}.jpg"
									class="hidden-xs  open-overlay">
									<figure>
										<img
											src="${pageContext.request.contextPath}/resources/resturantImages/${resturants.resturantName}.jpg"
											alt="Menu item" class="lazyloaded">
										<div class="actions">
											<i class="icon-magnifier-add"></i>
										</div>
									</figure>
								</a>
								<div class="item-description">
									<div class="">
										<div class="">
											<h6>
												<a
													href="FoodType.bnu?resturantId=${resturants.resturantId}&amp;check=1">${resturants.resturantName}</a>
											</h6>
											<p>click for more info</p>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="content-2-2">
					<div class="row">
						<c:forEach items="${foodReview}" var="foodItem">
							<div class="menu-item">
								<a
									href="${pageContext.request.contextPath}/resources/foodItemImages/${foodItem.foodItemName}-RID-${foodItem.resturantId}-FID-${foodItem.foodTypeId}.jpg"
									class="hidden-xs  open-overlay">
									<figure>
										<img
											src="${pageContext.request.contextPath}/resources/foodItemImages/${foodItem.foodItemName}-RID-${foodItem.resturantId}-FID-${foodItem.foodTypeId}.jpg"
											alt="Menu item" class="lazyloaded">
										<div class="actions">
											<i class="icon-magnifier-add"></i>
										</div>
									</figure>
								</a>
								<div class="item-description">
									<div class="">
										<div class="">
											<h3>${foodItem.resturantName}</h3>
											<h4>${foodItem.foodTypeName}</h4>
											<h3>${foodItem.foodItemName}</h3>
											<h3>
												<ul
													class="rating
															${foodItem.foodItemsReviewRating}">
													<li class="one" id="1 Star">1</li>
													<li class="two" id="2 Stars">2</li>
													<li class="three" id="3 Stars">3</li>
													<li class="four" id="4 Stars">4</li>
													<li class="five" id="5 Stars">5</li>
												</ul>
											</h3>
											<h5>${foodItem.foodItemsReviewDescription}</h5>
											<p>Other Details will be available soon</p>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>


			</div>
		</section>
	</div>
</t:template>
