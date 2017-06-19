
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="open-daily yo-anim yo-anim-fade"
		data-animation-delay="1000">
		<section id="contact" class="section-scroll main-section">
<!-- 			<div class="section-intro section-intro-parallax close-on-click" -->
<!-- 				data-opacity-start="30" data-opacity-end="100"> -->
<!-- 				<div class="bg-section menu-fullscreen" data-ht-parallax="300"></div> -->
<!-- 				<div class="pre-content"> -->
<!-- 					<div class="container"> -->
<!-- 						<div class="row"> -->
<!-- 							<div class="col-xs-12"> -->
<!-- 								<h1 class="yo-anim yo-anim-fade" data-animation-delay="100">Food -->
<!-- 									Reviews&nbsp;à&nbsp;Opiniones de Alimentos</h1> -->
<!-- 								<p class="yo-anim yo-anim-fade" data-animation-delay="500">Foody-Bigger -->
<!-- 									then life.</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<a class="arrow1 arrow-section hidden-xs" href="#"> <i -->
<!-- 					class="fa fa-angle-down"></i> -->
<!-- 				</a> <a class="arrow2 arrow-section hidden-xs" href="#" style=""> <i -->
<!-- 					class="fa fa-angle-up"></i> -->
<!-- 				</a> -->
<!-- 			</div> -->

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
								<h2>Reviews</h2>
							</div>
						</div>
						<div class="row">
							<c:forEach items="${FoodReview}" var="foodItem">
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
		</section>

	</div>
</t:template>