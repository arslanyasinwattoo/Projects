<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<div class="sections section-2">
	<div class="container">
		<div class="sections-title">
			<div class="sections-title-h3">
				<h3>Latest Awesome & Creative Requests</h3>
			</div>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Integer lorem quam, adipiscing condimentum tristique vel, eleifend
				sed turpis. Pellentesque cursus arcu id magna euismod in elementum
				purus molestie.</p>
		</div>
		<!-- End sections-title -->
		<div class="row">
			<div class="portfolio-slide bxslider-slide">
				<ul>
					<li><c:forEach items="${requests}" var="list">
							<div class="col-md-3 portfolio-item">
								<div class="portfolio-one">
									<div class="portfolio-head">
										<div class="portfolio-img">
											<img alt=""
												src="${pageContext.request.contextPath}/resources/profile-images/${list.users.id.username}-profile-image.jpg">
										</div>
										<div class="portfolio-hover">
											<a class="portfolio-link" href="single-portfolio.html"><i
												class="fa fa-link"></i></a> <a
												class="portfolio-zoom prettyPhoto"
												href="${pageContext.request.contextPath}resources/profile-images/${list.users.id.username}-profile-image.jpg"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<!-- End portfolio-head -->
									<div class="portfolio-content">
										<i class="fa fa-leaf"></i>
										<div class="portfolio-meta">
											<div class="portfolio-name">
												<h6>
													<a href="single-portfolio.html">${list.requestName}</a>
												</h6>
											</div>
											<div class="portfolio-cat">
												<a href="#">${list.category.categoryName}</a>
											</div>
											<div class="portfolio-cat">
												<a href="#">${list.subCategory.subCategoryName}</a>
											</div>
											<div class="portfolio-cat">
												<a href="#">${list.fields.fieldName}</a>
											</div>
										</div>
										<!-- End portfolio-meta -->
									</div>
									<!-- End portfolio-content -->
								</div>
								<!-- End portfolio-item -->
							</div>

						</c:forEach></li>

					<li><c:forEach items="${requests}" var="list">
							<div class="col-md-3 portfolio-item">
								<div class="portfolio-one">
									<div class="portfolio-head">
										<div class="portfolio-img">
											<img alt=""
												src="${pageContext.request.contextPath}/resources/profile-images/${list.users.id.username}-profile-image.jpg">
										</div>
										<div class="portfolio-hover">
											<a class="portfolio-link" href="single-portfolio.html"><i
												class="fa fa-link"></i></a> <a
												class="portfolio-zoom prettyPhoto"
												href="${pageContext.request.contextPath}resources/profile-images/${list.users.id.username}-profile-image.jpg"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<!-- End portfolio-head -->
									<div class="portfolio-content">
										<i class="fa fa-leaf"></i>
										<div class="portfolio-meta">
											<div class="portfolio-name">
												<h6>
													<a href="single-portfolio.html">${list.requestName}</a>
												</h6>
											</div>
											<div class="portfolio-cat">
												<a href="#">${list.category.categoryName}</a>
											</div>
											<div class="portfolio-cat">
												<a href="#">${list.subCategory.subCategoryName}</a>
											</div>
											<div class="portfolio-cat">
												<a href="#">${list.fields.fieldName}</a>
											</div>
										</div>
										<!-- End portfolio-meta -->
									</div>
									<!-- End portfolio-content -->
								</div>
								<!-- End portfolio-item -->
							</div>

						</c:forEach></li>


				</ul>

			</div>
			<!-- End portfolio-slide -->
		</div>
		<!-- End row -->

		<div class="load-more-projects">
			<a class="button-1" href="#">Load More Projects</a>
		</div>
		<!-- End container -->
	</div>
</div>

