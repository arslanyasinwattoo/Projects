
<div class="sections sections-padding-b-50">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="head-title">
					<h6>Latest News</h6>
				</div>
				<div class="row">
					<div class="bxslider-slide bxslider-slide-title blog-silde">
						<ul>
							<c:forEach items="${news}" var="loc">
								<li>
									<div class="col-md-6 blog-item">
										<div class="blog-one">
											<div class="blog-img">
												<img alt=""
													src="${pageContext.request.contextPath}/resources/template/images/blog-1.png">
												<div class="blog-date">
													<span>${loc.time}</span><span>${loc.date}</span>
												</div>
											</div>
											<!-- End blog-img -->
											<div class="blog-content">
												<h6>
													<a href="single-blog.html">${loc.newsHeader}</a>
												</h6>
												<p>
													${loc.newsDescription} <a href="single-blog.html">Read
														More</a>
												</p>
											</div>
											<!-- End blog-content -->
											<div class="blog-meta">
												<div class="blog-author">
													<i class="fa fa-user"></i>Author : <a href="#">${loc.users.id.username}</a>
												</div>

											</div>
											<!-- End blog-meta -->
											<div class="clearfix"></div>
										</div>
										<!-- End blog-item -->
									</div>
									<div class="col-md-6 blog-item">
										<div class="blog-one">
											<div class="blog-img">
												<img alt=""
													src="${pageContext.request.contextPath}/resources/template/images/blog-2.png">
												<div class="blog-date">
													<span>${loc.time}</span><span>${loc.date}</span>
												</div>
											</div>
											<!-- End blog-img -->
											<div class="blog-content">
												<h6>
													<a href="single-blog.html">${loc.newsHeader}</a>
												</h6>
												<p>
													${loc.newsDescription} <a href="single-blog.html">Read
														More</a>
												</p>
											</div>
											<!-- End blog-content -->
											<div class="blog-meta">
												<div class="blog-author">
													<i class="fa fa-user"></i>Author : <a href="#">${loc.users.id.username}</a>
												</div>

											</div>
											<!-- End blog-meta -->
											<div class="clearfix"></div>
										</div>
										<!-- End blog-item -->
									</div>
								</li>


							</c:forEach>
						</ul>
						<!-- End blog-meta -->
					</div>
					<!-- End blog-item -->
				</div>

			</div>
			<!-- End blog-silde -->

			<div class="col-md-4">
				<div class="head-title">
					<h6>Testimonials</h6>
				</div>
				<div class="row">
					<div class="bxslider-slide bxslider-slide-title testimonials-slide">
						<ul>
							<c:forEach items="${testimonials}" var="loc">
								<li>
									<div class="col-md-12">
										<div class="testimonial-item">
											<div class="testimonial-content">
												<div>
													<i class="fa fa-quote-left"></i>
												</div>
												<p>${loc.testimonialsDescription}</p>
												<div>
													<i class="fa fa-quote-right"></i>
												</div>
											</div>
											<!-- End testimonial-content -->
											<div class="testimonial-meta">
												<div class="testimonial-img">
													<img alt=""
														src="${pageContext.request.contextPath}/resources/template/images/testimonial.png">
												</div>
												<div class="testimonial-name">
													<span>${loc.users.id.username}</span><span></span>
												</div>
											</div>
											<!-- End testimonial-meta -->
											<div class="clearfix"></div>
										</div>
										<!-- End testimonial-item -->
									</div>
								</li>
								<li>
									<div class="col-md-12">
										<div class="testimonial-item">
											<div class="testimonial-content">
												<div>
													<i class="fa fa-quote-left"></i>
												</div>
												<p>${loc.testimonialsDescription}</p>
												<div>
													<i class="fa fa-quote-right"></i>
												</div>
											</div>
											<!-- End testimonial-content -->
											<div class="testimonial-meta">
												<div class="testimonial-img">
													<img alt=""
														src="${pageContext.request.contextPath}/resources/template/images/testimonial.png">
												</div>
												<div class="testimonial-name">
													<span>${loc.users.id.username}</span><span></span>
												</div>
											</div>
											<!-- End testimonial-meta -->
											<div class="clearfix"></div>
										</div>
										<!-- End testimonial-item -->
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- End testimonials-slide -->
				</div>
				<!-- End row -->
			</div>
		</div>
		<!-- End row -->
	</div>
	<!-- End container -->
</div>
<!-- End sections -->

<div class="sections sections-padding-t-0 sections-padding-b-50">
	<div class="container">
		<div class="head-title">
			<h6>Ads</h6>
		</div>
		<div class="row">
			<div class="bxslider-slide bxslider-slide-title clients-slide">
				<ul>
					<li>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-1.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-2.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-3.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-4.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-5.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-6.png"></a>
							</div>
						</div>
					</li>
					<li>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-1.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-2.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-3.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-4.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-5.png"></a>
							</div>
						</div>
						<div class="col-md-2 client-item">
							<div class="client">
								<a href="#"><img alt=""
									src="${pageContext.request.contextPath}/resources/template/images/client-6.png"></a>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- End clients-slide -->
		</div>
		<!-- End row -->
	</div>
	<!-- End container -->
</div>
<!-- End sections -->

<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="footer-widget">
					<div class="widget-title">
						<h6>About FreeFay</h6>
					</div>
					<div class="widget-about">
						<p>${cms.aboutfreefrae}</p>
						<div class="social-ul">
							<ul>
								<li class="social-facebook"><a href="${cms.socialLabel1}"><i
										class="fa fa-facebook"></i></a></li>
								<li class="social-twitter"><a href="${cms.socialLabel2}"><i
										class="fa fa-twitter"></i></a></li>
								<li class="social-google"><a href="${cms.socialLabel3}"><i
										class="fa fa-google-plus"></i></a></li>
								<li class="social-pinterest"><a href="${cms.socialLabel4}"><i
										class="fa fa-pinterest"></i></a></li>
								<li class="social-vimeo"><a href="${cms.socialLabel5}"><i
										class="fa fa-vimeo-square"></i></a></li>
								<li class="social-linkedin"><a href="${cms.socialLabel6}"><i
										class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="footer-widget">
					<div class="widget-title">
						<h6>Get In Touch</h6>
					</div>
					<div class="widget-about-2">
						<ul>
							<li><i class="fa fa-map-marker"></i>
								<div>${cms.address}</div></li>
							<li><i class="fa fa-phone"></i>
								<div>Freefrae Telephone No : ${cms.contactNo}</div></li>
							<li><i class="fa fa-envelope"></i>
								<div>freefrae Email Account : ${cms.emailId}</div></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="footer-widget">
					<div class="widget-title">
						<h6>Latest Posts</h6>
					</div>
					<div class="widget-posts">
						<ul>
							<li>
								<div class="widget-post-img">
									<img alt=""
										src="${pageContext.request.contextPath}/resources/template/images/post-1.png">
								</div>
								<div class="widget-post-content">
									<h6>
										<a href="#">Integer lorem quam, adiscing contum.</a>
									</h6>
									<span>Date : July 1, 2014</span>
								</div>
							</li>
							<li>
								<div class="widget-post-img">
									<img alt=""
										src="${pageContext.request.contextPath}/resources/template/images/post-2.png">
								</div>
								<div class="widget-post-content">
									<h6>
										<a href="#">Integer lorem quam, adiscing contum.</a>
									</h6>
									<span>Date : July 1, 2015</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="footer-widget">
					<div class="widget-title">
						<h6>Latest Tweets</h6>
					</div>
					<div class="widget-twitter">
						<div class="footer-tweet"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- End row -->
	</div>
	<!-- End container -->
</footer>
<!-- End footer -->
<footer id="footer-bottom">
	<div class="container">
		<div class="copyrights">
			Copyright 2016 FreeFay
		</div>
		<nav class="navigation-footer">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Features</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Portfolio</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">Shortcodes</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</nav>
	</div>
	<!-- End container -->
</footer>
<!-- End footer-bottom -->

</div>
