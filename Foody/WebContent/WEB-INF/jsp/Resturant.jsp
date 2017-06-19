
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
			<!-- 				data-opacity-start="30" data-opacity-end="100" -->
			<!-- 				style="transform: translateY(0px);"> -->
			<!-- 				<div class="bg-section menu-fullscreen opacity-100" -->
			<!-- 					data-ht-parallax="300"></div> -->
			<!-- 				<div class="pre-content"> -->
			<!-- 					<div class="container"> -->
			<!-- 						<div class="row"> -->
			<!-- 							<div class="col-xs-12"> -->
			<!-- 								<h1 class="yo-anim yo-anim-fade yo-anim-start" -->
			<!-- 									data-animation-delay="100">Resturants&nbsp;à&nbsp;restaurante</h1> -->
			<!-- 								<p class="yo-anim yo-anim-fade yo-anim-start" -->
			<!-- 									data-animation-delay="500">Foody bigger then life .</p> -->
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
			<!-- 				<a class="arrow1 arrow-section hidden-xs" href="#" -->
			<!-- 					style="display: none;"> <i class="fa fa-angle-down"></i> -->
			<!-- 				</a> <a class="arrow2 arrow-section hidden-xs" href="#" -->
			<!-- 					style="display: inline;"> <i class="fa fa-angle-up"></i> -->
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
								<h2>Resturants</h2>
							</div>
						</div>


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
												<h6>${resturants.resturantName}</h6>
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