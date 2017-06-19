<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template2>
	<c:choose>
		<c:when test="${(check =='service')}">
			<div class="sections section-2">
				<div class="container">
					<div class="row">
						<div class="col-md-9 main-content">
							<div class="sections-title">
								<div class="sections-title-h3">
									<h3>${cms.heading2}</h3>
								</div>
								<p>${cms.h2Label1}</p>
							</div>
							<!-- End sections-title -->
							<div class="row">
								<div class="col-md-12">
									<div
										class="single-portfolio-slide single-portfolio-slide-2 bxslider-slide">
										<ul>
											<c:choose>
												<c:when test="${(count==0)}">
													<li><img alt="" src=""
														onError="this.src='${pageContext.request.contextPath}/resources/services/services-images/default-service.jpg'"
														align="middle"
														style="max-width: 262.5px; max-height: 350px;"></li>

												</c:when>
												<c:when test="${(count !=0)}">
													<c:forEach begin="0" end="${count}" step="3"
														varStatus="loop">
														<li><img alt=""
															src="${pageContext.request.contextPath}/resources/services/services-images/${services.users.id.username}-id-${services.servicesId}-service-image${(loop.count)-1}.jpg"
															onError="this.src='${pageContext.request.contextPath}/resources/services/services-images/default-service.jpg'"
															align="top"
															style="width: 100%; overflow: hidden; position: relative; height: 500px;"></li>


													</c:forEach>

												</c:when>
											</c:choose>

										</ul>
									</div>
									<!-- End single-portfolio-slide -->
								</div>
								<div class="col-md-8">
									<div class="section-title section-title-2">
										<h6>Gig Name :</h6>
									</div>
									<div class="portfolio-description">
										<p>${services.serviceName}</p>
									</div>
									<br>
									<div class="section-title section-title-2">
										<h6>Gig Description :</h6>
									</div>
									<div class="portfolio-description">
										<p>${services.description}</p>
									</div>
									<!-- End portfolio-description -->
								</div>
								<div class="col-md-4">
									<div class="section-title section-title-2">
										<h6>Project Details :</h6>
									</div>
									<div class="portfolio-details">
										<ul>
											<li><span>Date : </span>${services.date}</li>
											<li><span>Category : </span>${services.category.categoryName}</li>
											<li><span>SubCategory : </span>${services.subCategory.subCategoryName}</li>
											<li><span>Field : </span>${services.fields.fieldName}</li>
										</ul>
									</div>
									<!-- End portfolio-details -->

									<
									<!-- End portfolio-social -->
								</div>
								<div class="clearfix gap"></div>
								<div class="col-md-12">
									<div class="head-title">
										<h6>Recent Works</h6>
									</div>
									<div class="row">
										<div
											class="portfolio-slide bxslider-slide bxslider-slide-title">
											<ul>
												<li><c:forEach items="${list}" var="lists">
														<div class="col-md-3 portfolio-item">
															<div class="portfolio-one">
																<div class="portfolio-head">
																	<div class="portfolio-img">
																		<img alt=""
																			src="${pageContext.request.contextPath}/resources/services/services-images/${lists.users.id.username}-id-${lists.servicesId}-service-image0.jpg"
																			onError="this.src='${pageContext.request.contextPath}/resources/services/services-images/default-service.jpg'"
																			style="max-width: 262.5px; max-height: 250px;">
																	</div>
																	<div class="portfolio-hover">
																		<a class="portfolio-link" href="single-portfolio.html"><i
																			class="fa fa-link"></i></a> <a
																			class="portfolio-zoom prettyPhoto"
																			href="${pageContext.request.contextPath}/resources/services/services-images/${lists.users.id.username}-id-${lists.servicesId}-service-image0.jpg"><i
																			class="fa fa-search"
																			style="max-width: 262.5px; max-height: 350px;"></i></a>
																	</div>
																</div>
																<!-- End portfolio-head -->
																<div class="portfolio-content">
																	<i class="fa fa-leaf"></i>
																	<div class="portfolio-meta">
																		<div class="portfolio-name">
																			<h6>
																				<a
																					href="${pageContext.request.contextPath}/public/singlePortfolio.io?id=${lists.servicesId}&amp;check=service">${lists.serviceName}</a>
																			</h6>
																		</div>
																		<div class="portfolio-cat">
																			<a href="#">${lists.category.categoryName}</a>
																		</div>
																		<div class="portfolio-cat">
																			<a href="#">${lists.subCategory.subCategoryName}</a>
																		</div>
																		<div class="portfolio-cat">
																			<a href="">${lists.fields.fieldName}</a>
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
								</div>
							</div>
							<!-- End row -->
						</div>
						<!-- End main-content -->
						<div class="col-md-3 sidebar">
							<div class="widget">
								<div class="widget-title">
									<h6>
										<a
											href="${pageContext.request.contextPath}/user/Orderpage.io?id=${services.servicesId}&amp;check=service"
											style="border: none; background-color: #4CAF50; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 26px; margin: 4px 2px; cursor: pointer;">Order
											Now </a>
									</h6>
								</div>
								<ul>
									<li><a href="#">Branding<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
									<li><a href="#">UI Design<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
									<li><a href="#">Typography<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
									<li><a href="#">Wordpress<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
									<li><a href="#">Development<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
								</ul>
							</div>

							<div class="widget">
								<div class="widget-title">
									<h6 style="color: #007ee6;">Reviews</h6>
								</div>
								<ul>
									<li><a href="#" style="color: #007ee6;">reviews<span>(5)</span></a></li>
									<li><a href="#" style="color: #007ee6;">ratings<span>(14)</span></a></li>
									<li><a href="#" style="color: #007ee6;">Orders in
											queue<span>(22)</span>
									</a></li>

								</ul>
							</div>

							<div class="widget">
								<div class="widget-title">
									<h6>User</h6>
								</div>
								<div class="widget-posts">
									<ul>
										<li>
											<div class="widget-post-img">
												<img alt=""
													src="${pageContext.request.contextPath}/resources/profile-images/${services.users.id.username}-profile-image.jpg"
													onError="this.src='${pageContext.request.contextPath}/resources/services/services-images/default-service.jpg'">
											</div>
											<div class="widget-post-content">
												<h6>
													<a href="#">${services.users.id.username}</a>
												</h6>
												<span>Speaks :English,urdu</span> <br> <span>From
													:${services.users.countries.name}</span><br> <span>Since
													:${services.users.date}</span>
											</div>
										</li>

									</ul>
								</div>
							</div>

							<div class="widget widget-twitter">
								<div class="widget-title">
									<h6>Ads</h6>
								</div>
							</div>
						</div>
						<!-- End sidebar -->
					</div>
					<!-- End row -->
				</div>
				<!-- End container -->
			</div>
			<!-- End sections -->



		</c:when>
		<c:when test="${(check=='request')}">
			<div class="sections section-2">
				<div class="container">
					<div class="row">
						<div class="col-md-9 main-content">
							<div class="sections-title">
								<div class="sections-title-h3">
									<h3>${cms.heading3}</h3>
								</div>
								<p>${cms.h3Label1}</p>
							</div>
							<!-- End sections-title -->
							<div class="row">
								<div class="col-md-12">
									<div
										class="single-portfolio-slide single-portfolio-slide-2 bxslider-slide">
										<ul>

											<li><img alt=""
												src="${pageContext.request.contextPath}/resources/profile-images/${requests.users.id.username}-profile-image.jpg"
												style="max-width: 262.5px; max-height: 350px;"
												onError="this.src='${pageContext.request.contextPath}/resources/profile-images/default-profile.jpg'">
											</li>



										</ul>
									</div>
									<!-- End single-portfolio-slide -->
								</div>
								<div class="col-md-8">
									<div class="section-title section-title-2">
										<h6>Request Name :</h6>
									</div>
									<div class="portfolio-description">
										<p>${requests.requestName}</p>
									</div>
									<br>
									<div class="section-title section-title-2">
										<h6>Request Description :</h6>
									</div>
									<div class="portfolio-description">
										<p>${requests.description}</p>
									</div>
									<!-- End portfolio-description -->
								</div>
								<div class="col-md-4">
									<div class="section-title section-title-2">
										<h6>Project Details :</h6>
									</div>
									<div class="portfolio-details">
										<ul>
											<li><span>Date : </span>${requests.date}</li>
											<li><span>Category : </span>${requests.category.categoryName}</li>
											<li><span>SubCategory : </span>${requests.subCategory.subCategoryName}</li>
											<li><span>Field : </span>${requests.fields.fieldName}</li>
										</ul>
									</div>
									<!-- End portfolio-details -->

									<
									<!-- End portfolio-social -->
								</div>
								<div class="clearfix gap"></div>
								<div class="col-md-12">
									<div class="head-title">
										<h6>Recent Works</h6>
									</div>
									<div class="row">
										<div
											class="portfolio-slide bxslider-slide bxslider-slide-title">
											<ul>
												<li><c:forEach items="${list}" var="lists">
														<div class="col-md-3 portfolio-item">
															<div class="portfolio-one">
																<div class="portfolio-head">
																	<div class="portfolio-img">
																		<img alt=""
																			src="${pageContext.request.contextPath}/resources/profile-images/${lists.users.id.username}-profile-image.jpg"
																			style="max-width: 262.5px; max-height: 350px;"
																			onError="this.src='${pageContext.request.contextPath}/resources/profile-images/default-profile.jpg'">
																	</div>
																	<div class="portfolio-hover">
																		<a class="portfolio-link" href="single-portfolio.html"><i
																			class="fa fa-link"></i></a> <a
																			class="portfolio-zoom prettyPhoto"
																			href="${pageContext.request.contextPath}resources/profile-images/${lists.users.id.username}-profile-image.jpg"><i
																			class="fa fa-search"
																			style="max-width: 262.5px; max-height: 350px;"></i></a>
																	</div>
																</div>
																<!-- End portfolio-head -->
																<div class="portfolio-content">
																	<i class="fa fa-leaf"></i>
																	<div class="portfolio-meta">
																		<div class="portfolio-name">
																			<h6>
																				<a
																					href="${pageContext.request.contextPath}/public/singlePortfolio.io?id=${lists.requestsId}&amp;check=request">${lists.requestName}</a>
																			</h6>
																		</div>
																		<div class="portfolio-cat">
																			<a href="#">${lists.category.categoryName}</a>
																		</div>
																		<div class="portfolio-cat">
																			<a href="#">${lists.subCategory.subCategoryName}</a>
																		</div>
																		<div class="portfolio-cat">
																			<a href="">${lists.fields.fieldName}</a>
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
								</div>
							</div>
							<!-- End row -->
						</div>
						<!-- End main-content -->
						<div class="col-md-3 sidebar">
							<div class="widget">
								<div class="widget-title">
									<h6>
										<a
											href="${pageContext.request.contextPath}/user/Orderpage.io?id=${requests.requestsId}&amp;check=bid"
											style="border: none; background-color: #4CAF50; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 26px; margin: 4px 2px; cursor: pointer;">Bid
											Now</a>
									</h6>
								</div>
								<ul>
									<li><a href="#">Branding<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
									<li><a href="#">UI Design<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
									<li><a href="#">Typography<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
									<li><a href="#">Wordpress<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
									<li><a href="#">Development<span><i
												class="fa fa-arrow-circle-right"></i></span></a></li>
								</ul>
							</div>

							<div class="widget">
								<div class="widget-title">
									<h6 style="color: #007ee6;">Reviews</h6>
								</div>
								<ul>
									<li><a href="#" style="color: #007ee6;">reviews<span>(5)</span></a></li>
									<li><a href="#" style="color: #007ee6;">ratings<span>(14)</span></a></li>
									<li><a href="#" style="color: #007ee6;">Orders in
											Process<span>(22)</span>
									</a></li>

								</ul>
							</div>

							<div class="widget">
								<div class="widget-title">
									<h6>User</h6>
								</div>
								<div class="widget-posts">
									<ul>
										<li>
											<div class="widget-post-img">
												<img alt=""
													src="${pageContext.request.contextPath}/resources/profile-images/${requests.users.id.username}-profile-image.jpg"
													onError="this.src='${pageContext.request.contextPath}/resources/profile-images/default-profile.jpg'">
											</div>
											<div class="widget-post-content">
												<h6>
													<a href="#">${requests.users.id.username}</a>
												</h6>
												<span>Speaks :English,urdu</span> <br> <span>From
													:${services.users.countries.name}</span><br> <span>Since
													:${services.users.date}</span>
											</div>
										</li>

									</ul>
								</div>
							</div>

							<div class="widget widget-twitter">
								<div class="widget-title">
									<h6>Ads</h6>
								</div>
							</div>
						</div>
						<!-- End sidebar -->
					</div>
					<!-- End row -->
				</div>
				<!-- End container -->
			</div>
			<!-- End sections -->



		</c:when>

	</c:choose>






</t:template2>