<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template2>
	<script>
		function getRequests() {
			var url = "${pageContext.request.contextPath}/AjaxRequestsIndex.io";
			alert(url);
			$.get(url, function(data) {
				document.getElementById("requests").innerHTML = data;

			});
			alert("data set");
		}
	</script>

	<div class="slideshow" ">
		<div class="tp-banner-container">
			<div class="tp-banner" >
				<ul >
					<li  data-transition="random"
						data-slotamount="7" data-masterspeed="1500" style="height: 329px;">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/template/images/slideshow.png"
						style="height: 329px;" alt="" data-bgfit="cover"
						data-bgposition="left top" data-bgrepeat="no-repeat">

						<div class="slideshow-bg" style="height: 329px;" data-y="310"
							data-x="center" data-start="0"></div> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						<div
							class="slide-h2 tp-caption randomrotate skewtoleft tp-resizeme start white"
							data-y="160" data-x="center" data-hoffset="0" data-start="300"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 2">
							<h2>${cms.s1Label1}</h2>
						</div> <!-- LAYER NR. 2 -->
						<div class="slide-h3 tp-caption customin white" data-y="230"
							data-x="center" data-hoffset="0" data-start="600"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 2">
							<h2>${cms.s1Label2}</h2>
						</div> <!-- LAYER NR. 3 -->
						<div
							class="slide-p tp-caption black randomrotate skewtoleft tp-resizeme start"
							data-x="center" data-hoffset="0" data-y="310" data-speed="500"
							data-start="1300" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="500"
							style="z-index: 6; white-space: pre-line; max-width: 1170px; text-align: center;">
							<p class="white">${cms.s1Label3}</p>
						</div> <!-- LAYER NR. 4 -->
						<div class="slide-a tp-caption customin" data-x="center"
							data-y="390" data-hoffset="100"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500" data-start="1800" data-easing="Power3.easeInOut"
							data-endspeed="500" style="z-index: 4">
							<a href="${cms.s1B1}" class="button-4">${cms.s1B1Name}</a>
						</div> <!-- LAYER NR. 5 -->
						<div class="slide-a slide-a-2 tp-caption customin" data-x="center"
							data-y="390" data-hoffset="-100"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500" data-start="2100" data-easing="Power3.easeInOut"
							data-endspeed="500" style="z-index: 4">
							<a href="${cms.s1B2}" class="button-3">${cms.s1B2Name}</a>
						</div>
					</li>
					<li style="height: 329px;" data-transition="random"
						data-slotamount="7" data-masterspeed="1000">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/template/images/slideshow-2.png"
						alt="" data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat" style="height: 329px;">

						<div class="slideshow-bg" style="height: 329px;" data-y="310"
							data-x="center" data-start="0"></div> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						<div class="tp-caption lfl start" data-x="600" data-y="100"
							data-speed="400" data-start="1300" data-easing="easeOut"
							data-endspeed="500">
							<img
								src="${pageContext.request.contextPath}/resources/template/images/macbookpro.png"
								alt="macbookpro">
						</div> <!-- Layer NR. 2 -->
						<div class="tp-caption color large_bg sfr start" data-x="0"
							data-y="110" data-start="1800" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s2Label1}</div>
						<!-- Layer NR. 3 -->
						<div class="tp-caption color large_bg sft start" data-x="0"
							data-y="160" data-start="2300" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s2Label2}</div>
						<!-- Layer NR. 4 -->
						<div class="tp-caption color large_bg sfl start" data-x="0"
							data-y="210" data-start="2800" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s2Label3}</div>
						<!-- Layer NR. 5 -->
						<div class="tp-caption color large_bg sft start" data-x="0"
							data-y="260" data-start="3300" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s2Label4}</div>
						<!-- Layer NR. 6 -->
						<div class="tp-caption color large_bg sfr start" data-x="0"
							data-y="310" data-start="3800" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s2Label5}</div>
						<!-- Layer NR. 7 -->
						<div class="tp-caption color large_bg sft start" data-x="0"
							data-y="360" data-start="4300" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s2Label6}</div>
					</li>

					<li data-transition="random" data-slotamount="7"
						style="height: 329px;" data-masterspeed="1000">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/template/images/slideshow-3.png"
						alt="" data-bgfit="cover" data-bgposition="left top"
						style="height: 329px;" data-bgrepeat="no-repeat">

						<div class="slideshow-bg" style="height: 329px;" data-y="310"
							data-x="center" data-start="0"></div> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						<div class="tp-caption lfl start" data-x="300" data-y="150"
							data-speed="400" data-start="1300" data-easing="easeOut"
							data-endspeed="500">
							<img
								src="${pageContext.request.contextPath}/resources/template/images/macbookpro.png"
								alt="macbookpro">
						</div> <!-- Layer NR. 2 -->
						<div
							class="slide-h2 tp-caption randomrotate skewtoleft tp-resizeme start white"
							data-y="60" data-x="center" data-hoffset="0" data-start="2200"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 2">
							<h2>${cms.s3Header}</h2>
						</div> <!-- Layer NR. 3 -->
						<div class="tp-caption color large_bg sfr start" data-x="0"
							data-y="110" data-start="2900" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s3Label1}</div>
						<!-- Layer NR. 4 -->
						<div class="tp-caption color large_bg sft start" data-x="0"
							data-y="160" data-start="3400" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s3Label2}</div>
						<!-- Layer NR. 5 -->
						<div class="tp-caption color large_bg sfl start" data-x="0"
							data-y="210" data-start="3900" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s3Label3}</div>
						<!-- Layer NR. 6 -->
						<div class="tp-caption color large_bg sft start" data-x="900"
							data-y="110" data-start="4400" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s3Label4}</div>
						<!-- Layer NR. 7 -->
						<div class="tp-caption color large_bg sfr start" data-x="930"
							data-y="160" data-start="4900" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s3Label5}</div>
						<!-- Layer NR. 8 -->
						<div class="tp-caption color large_bg sft start" data-x="985"
							data-y="210" data-start="5400" data-speed="700"
							data-easing="easeOutBounce" style="z-index: 4">${cms.s3Label6}</div>
					</li>
					<!-- SLIDE  -->
					<li data-transition="random" data-slotamount="7"
						style="height: 329px;" data-masterspeed="1000">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/resources/template/images/slideshow-4.png"
						style="height: 329px;" alt="" data-bgfit="cover"
						data-bgposition="left top" data-bgrepeat="no-repeat">

						<div class="slideshow-bg" style="height: 329px;" data-y="310"
							data-x="center" data-start="0"></div> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						<div
							class="slide-h2 tp-caption randomrotate skewtoleft tp-resizeme start white"
							data-y="130" data-x="center" data-hoffset="0" data-start="300"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 2">
							<h2>${cms.s4Header}</h2>
						</div> <!-- LAYER NR. 2 -->
						<div class="slide-h3 tp-caption customin white" data-y="200"
							data-x="center" data-hoffset="0" data-start="600"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 2">
							<h2>${cms.s4Label1}</h2>
						</div> <!-- LAYER NR. 3 -->
						<div
							class="slide-p tp-caption black randomrotate skewtoleft tp-resizeme start"
							data-x="center" data-hoffset="0" data-y="280" data-speed="500"
							data-start="1300" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="500"
							style="z-index: 6; white-space: pre-line; max-width: 1170px; text-align: center;">
							<p class="white">${cms.s4Label2}</p>
						</div> <!-- LAYER NR. 4 -->
						<div class="slide-a slide-a-2 tp-caption customin" data-x="center"
							data-y="360"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500" data-start="1800" data-easing="Power3.easeInOut"
							data-endspeed="500" style="z-index: 4">
							<a href="${cms.s4B1}" class="button-6">${cms.s4B1Name}</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- End tp-banner-container -->
	</div>
	<!-- End slideshow -->

	<div class="sections section-2">
		<div class="container">
			<div class="sections-title">
				<div class="sections-title-h3">
					<h3>${cms.heading2}</h3>
				</div>
				<p>${cms.h2Label1}</p>
			</div>
			<!-- End sections-title -->
			<div class="row">
				<div class="portfolio-slide bxslider-slide">
					<ul>
						<li><c:forEach items="${services}" var="list">
								<div class="col-md-3 portfolio-item">
									<div class="portfolio-one">
										<div class="portfolio-head">
											<div class="portfolio-img">
												<img alt=""
													src="${pageContext.request.contextPath}/resources/services/services-images/${list.users.id.username}-id-${list.servicesId}-service-image0.jpg"
													onError="this.src='${pageContext.request.contextPath}/resources/services/services-images/default-service.jpg'"
													style="max-width: 262.5px; max-height: 350px;">
											</div>
											<div class="portfolio-hover">
												<a class="portfolio-link" href="single-portfolio.html"><i
													class="fa fa-link"></i></a> <a
													class="portfolio-zoom prettyPhoto"
													href="${pageContext.request.contextPath}/resources/services/services-images/${list.users.id.username}-id-${list.servicesId}-service-image0.jpg"><i
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
															href="${pageContext.request.contextPath}/public/singlePortfolio.io?id=${list.servicesId}&amp;check=service">${list.serviceName}</a>
													</h6>
												</div>
												<div class="portfolio-cat">
													<a href="#">${list.category.categoryName}</a>
												</div>
												<div class="portfolio-cat">
													<a href="#">${list.subCategory.subCategoryName}</a>
												</div>
												<div class="portfolio-cat">
													<a href="">${list.fields.fieldName}</a>
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
				<a class="button-1" href="portfolio-description.html">Load More
					Projects</a>
			</div>
		</div>
		<!-- End container -->
	</div>
	<!-- End sections -->
	<div class="sections section-2">
		<div class="container">
			<div class="sections-title">
				<div class="sections-title-h3">
					<h3>${cms.heading3}</h3>
				</div>
				<p>${cms.h3Label1}</p>
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
													src="${pageContext.request.contextPath}/resources/profile-images/${list.users.id.username}-profile-image.jpg"
													style="max-width: 262.5px; max-height: 350px;"
													onError="this.src='${pageContext.request.contextPath}/resources/profile-images/default-profile.jpg'">
											</div>
											<div class="portfolio-hover">
												<a class="portfolio-link" href="single-portfolio.html"><i
													class="fa fa-link"></i></a> <a
													class="portfolio-zoom prettyPhoto"
													href="${pageContext.request.contextPath}resources/profile-images/${list.users.id.username}-profile-image.jpg"><i
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
															href="${pageContext.request.contextPath}/public/singlePortfolio.io?id=${list.requestsId}&amp;check=request">${list.requestName}</a>
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


	<div class="sections sections-padding-b-50">
		<div class="container">
			<div class="sections-title">
				<div class="sections-title-h3">
					<h3>${cms.heading4}</h3>
				</div>
				<p>${cms.h4Label1}</p>
			</div>
			<!-- End sections-title -->
			<div class="row">
				<div class="col-md-6">
					<div class="accordion">
						<div class="section-content">
							<h4 class="accordion-title active">
								<a href="#">${cms.h4Label5}<i class="fa fa-plus"></i></a>
							</h4>
							<div class="accordion-inner active">${cms.h4Label2}</div>
						</div>
						<div class="section-content">
							<h4 class="accordion-title">
								<a href="#">${cms.h4Label6}<i class="fa fa-minus"></i></a>
							</h4>
							<div class="accordion-inner">${cms.h4Label3}</div>
						</div>
						<div class="section-content">
							<h4 class="accordion-title">
								<a href="#">${cms.h4Label7}<i class="fa fa-minus"></i></a>
							</h4>
							<div class="accordion-inner">${cms.h4Label4}</div>
						</div>
					</div>
					<!-- End accordion -->
				</div>
				<div class="col-md-6">
					<div class="progressbar-warp">
						<div class="progressbar">
							<span class="progressbar-title">Design<span>70%</span></span>
							<div class="progressbar-all">
								<div class="progressbar-percent" data-percent="70"></div>
							</div>
						</div>
						<div class="progressbar">
							<span class="progressbar-title">Branding<span>50%</span></span>
							<div class="progressbar-all">
								<div class="progressbar-percent"
									style="background-color: #007ee6;" data-percent="50"></div>
							</div>
						</div>
						<div class="progressbar">
							<span class="progressbar-title">Development<span>85%</span></span>
							<div class="progressbar-all">
								<div class="progressbar-percent"
									style="background-color: #007ee6;" data-percent="85"></div>
							</div>
						</div>
						<div class="progressbar">
							<span class="progressbar-title">Wordpress<span>100%</span></span>
							<div class="progressbar-all">
								<div class="progressbar-percent"
									style="background-color: #007ee6;" data-percent="100"></div>
							</div>
						</div>
						<div class="progressbar">
							<span class="progressbar-title">Game UI Design<span>70%</span></span>
							<div class="progressbar-all">
								<div class="progressbar-percent"
									style="background-color: #007ee6;" data-percent="70"></div>
							</div>
						</div>
					</div>
					<!-- End progressbar-warp -->
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</div>
	<!-- End sections -->

	<div class="sections section-3">
		<div class="container">
			<div class="sections-title">
				<div class="sections-title-h3">
					<h3>${cms.heading1}</h3>
				</div>
				<p>${cms.h1Label17}}</p>
			</div>
			<!-- End sections-title -->
			<div class="row">
				<div class="bxslider-slide box-icon-slide">
					<ul>
						<li>
							<div class="col-md-3">
								<div class="box-icon">
									<div class="box-icon-i box-icon-i-2">
										<i class="${cms.h1Img1}"></i>
									</div>
									<div class="box-icon-content">
										<h5>${cms.h1Label1}</h5>
										<p>
											${cms.h1Label2}. <a href="#"></a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box-icon">
									<div class="box-icon-i box-icon-i-2">
										<i class="${cms.h1Img2}"></i>
									</div>
									<div class="box-icon-content">
										<h5>${cms.h1Label3}</h5>
										<p>
											${cms.h1Label4}<a href="#"></a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box-icon">
									<div class="box-icon-i box-icon-i-2">
										<i class="${cms.h1Img3}"></i>
									</div>
									<div class="box-icon-content">
										<h5>${cms.h1Label5}</h5>
										<p>
											${cms.h1Label6} <a href="#"></a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box-icon">
									<div class="box-icon-i box-icon-i-2">
										<i class="${cms.h1Img4}"></i>
									</div>
									<div class="box-icon-content">
										<h5>${cms.h1Label7}</h5>
										<p>
											${cms.h1Label8} <a href="#"></a>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="col-md-3">
								<div class="box-icon">
									<div class="box-icon-i box-icon-i-2">
										<i class="${cms.h1Img5}"></i>
									</div>
									<div class="box-icon-content">
										<h5>${cms.h1Label9}</h5>
										<p>
											${cms.h1Label10} <a href="#"></a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box-icon">
									<div class="box-icon-i box-icon-i-2">
										<i class="${cms.h1Img6}"></i>
									</div>
									<div class="box-icon-content">
										<h5>${cms.h1Label11}</h5>
										<p>
											${cms.h1Label12} <a href="#"></a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box-icon">
									<div class="box-icon-i box-icon-i-2">
										<i class="${cms.h1Img7}"></i>
									</div>
									<div class="box-icon-content">
										<h5>${cms.h1Label13}</h5>
										<p>
											${cms.h1Label14} <a href="#"></a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box-icon">
									<div class="box-icon-i box-icon-i-2">
										<i class="${cms.h1Img8}"></i>
									</div>
									<div class="box-icon-content">
										<h5>${cms.h1Label15}</h5>
										<p>
											${cms.h1Label16}<a href="#"></a>
										</p>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- End box-icon-slide -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</div>
	<!-- End sections -->

	<div class="sections section-3">
		<div class="container">
			<div class="sections-title">
				<div class="sections-title-h3">
					<h3>${cms.heading5}</h3>
				</div>
				<p>${cms.h5Label9}</p>
			</div>
			<!-- End sections-title -->
			<div class="row">
				<div class="col-md-3">
					<div class="box-icon">
						<div class="box-icon-i box-icon-i-2 box-icon-i-4">
							<i class="${cms.h5Img1}"></i>
						</div>
						<div class="box-icon-content">
							<h5>${cms.h5Label1}</h5>
							<p>${cms.h5Label5}</p>
						</div>
					</div>
					<div class="gap"></div>
					<div class="box-icon">
						<div class="box-icon-i box-icon-i-2 box-icon-i-4">
							<i class="${cms.h5Img2}"></i>
						</div>
						<div class="box-icon-content">
							<h5>${cms.h5Label2}</h5>
							<p>${cms.h5Label6}</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="gap"></div>
					<div class="gap"></div>
					<div class="t_center">
						<img alt=""
							src="${pageContext.request.contextPath}/resources/template/images/macbookpro.png">
					</div>
					<div class="gap"></div>
				</div>
				<div class="col-md-3">
					<div class="box-icon">
						<div class="box-icon-i box-icon-i-2 box-icon-i-4">
							<i class="${cms.h5Img3}"></i>
						</div>
						<div class="box-icon-content">
							<h5>${cms.h5Label3}</h5>
							<p>${cms.h5Label7}</p>
						</div>
					</div>
					<div class="gap"></div>
					<div class="box-icon">
						<div class="box-icon-i box-icon-i-2 box-icon-i-4">
							<i class="${cms.h5Img4}"></i>
						</div>
						<div class="box-icon-content">
							<h5>${cms.h5Label4}</h5>
							<p>${cms.h5Label8}</p>
						</div>
					</div>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</div>
	<!-- End sections -->

</t:template2>