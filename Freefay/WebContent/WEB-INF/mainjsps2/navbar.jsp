<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<nav class="navigation">
	<ul>
		<li class="current_page_item"><a
			href="${pageContext.request.contextPath}/public/index.io">Home</a>
			<ul hidden=true>
				<li class="#"><a href="index-2.html">Home 1</a></li>
				<li><a href="index-3.html">Home 2</a></li>
				<li><a href="current_page_item">Home 3</a></li>
				<li><a href="index-5.html">Home 4</a></li>
				<li><a href="index-6.html">Home 5</a></li>
				<li><a href="index-7.html">Home 6</a></li>
				<li><a href="index-8.html">Home 7</a></li>
				<li><a href="index-animate.html">Home Animate</a></li>
				<li><a href="index-one-page.html">Home One Page</a></li>
				<li><a href="index-boxed.html">Home Boxed 1</a></li>
				<li><a href="index-boxed-2.html">Home Boxed 2</a></li>
			</ul></li>
		<li><a href="features.html">Features</a>
			<ul>
				<li><a href="index-2.html">Headers</a>
					<ul>
						<li><a href="index-2.html">Header 1</a></li>
						<li><a href="header-2.html">Header 2</a></li>
						<li><a href="header-3.html">Header 3</a></li>
						<li><a href="header-4.html">Header 4</a></li>
						<li><a href="header-5.html">Header 5</a></li>
						<li><a href="header-6.html">Header 6</a></li>
						<li><a href="fixed-nav.html">Fixed Navigation</a></li>
					</ul></li>
				<li><a href="features.html">Features</a></li>
				<li><a href="about.html">About</a>
					<ul>
						<li><a href="about.html">About 1</a></li>
						<li><a href="about-2.html">About 2</a></li>
						<li><a href="about-3.html">About 3</a></li>
					</ul></li>
				<li><a href="testimonials.html">Testimonials</a></li>
				<li><a href="faq.html">FAQ</a>
					<ul>
						<li><a href="faq.html">FAQ Right Sidebar</a></li>
						<li><a href="faq-left-sidebar.html">FAQ Left Sidebar</a></li>
						<li><a href="faq-centered.html">FAQ Centered</a></li>
					</ul></li>
				<li><a href="team.html">Team</a>
					<ul>
						<li><a href="team.html">Team</a></li>
						<li><a href="team-right-sidebar.html">Team Right Sidebar</a></li>
						<li><a href="team-left-sidebar.html">Team Left Sidebar</a></li>
					</ul></li>
				<li><a href="pricing-tables.html">Pricing Tables</a></li>
				<li><a href="typography.html">Typography</a></li>
				<li><a href="right-sidebar.html">Pages</a>
					<ul>
						<li><a href="right-sidebar.html">Right Sidebar</a></li>
						<li><a href="left-sidebar.html">Left Sidebar</a></li>
						<li><a href="full-width.html">Full Width</a></li>
						<li><a href="page-centered.html">Page Centered</a></li>
					</ul></li>
				<li><a href="animation.html">Animation</a></li>
				<li><a href="404.html">404</a></li>
				<li><a href="coming-soon.html">Coming Soon</a></li>
			</ul></li>
		<li><a
			href="${pageContext.request.contextPath}/public/ListOfServices.io">Services</a>
		</li>
		<li class="mega-menu"><a href="portfolio-description.html">Portfolio</a>
			<ul>
				<li class="col-md-4"><a href="portfolio-2-columns.html">Portfolio
						2 Columns</a>
					<ul>
						<li><a href="portfolio-2-columns.html">Portfolio 1 Right
								Sidebar</a></li>
						<li><a href="portfolio-2-left-sidebar.html">Portfolio 1
								Left Sidebar</a></li>
						<li><a href="portfolio-2-columns-full-width.html">Portfolio
								1 Full Width</a></li>
						<li><a href="portfolio-gallery-2-columns.html">Portfolio
								2 Right Sidebar</a></li>
						<li><a href="portfolio-gallery-left-sidebar-2-columns.html">Portfolio
								2 Left Sidebar</a></li>
						<li><a href="portfolio-gallery-full-width-2-columns.html">Portfolio
								2 Full Width</a></li>
						<li><a href="portfolio-2-columns-no-margin.html">Portfolio
								Right Sidebar no margin</a></li>
						<li><a href="portfolio-2-columns-no-margin-left-sidebar.html">Portfolio
								Left Sidebar no margin</a></li>
						<li><a href="portfolio-2-columns-no-margin-full-width.html">Portfolio
								Full Width no margin</a></li>
					</ul></li>
				<li class="col-md-4"><a href="portfolio-3-columns.html">Portfolio
						3 Columns</a>
					<ul>
						<li><a href="portfolio-3-columns.html">Portfolio 1 Right
								Sidebar</a></li>
						<li><a href="portfolio-3-left-sidebar.html">Portfolio 1
								Left Sidebar</a></li>
						<li><a href="portfolio-3-columns-full-width.html">Portfolio
								1 Full Width</a></li>
						<li><a href="portfolio-gallery-3-columns.html">Portfolio
								2 Right Sidebar</a></li>
						<li><a href="portfolio-gallery-left-sidebar-3-columns.html">Portfolio
								2 Left Sidebar</a></li>
						<li><a href="portfolio-gallery-full-width-3-columns.html">Portfolio
								2 Full Width</a></li>
						<li><a href="portfolio-3-columns-no-margin.html">Portfolio
								Right Sidebar no margin</a></li>
						<li><a href="portfolio-3-columns-no-margin-left-sidebar.html">Portfolio
								Left Sidebar no margin</a></li>
						<li><a href="portfolio-3-columns-no-margin-full-width.html">Portfolio
								Full Width no margin</a></li>
					</ul></li>
				<li class="col-md-4"><a href="portfolio-description.html">Portfolio
						4 Columns</a>
					<ul>
						<li><a href="portfolio-description.html">Portfolio 1
								Right Sidebar</a></li>
						<li><a href="portfolio-description-left-sidebar.html">Portfolio
								1 Left Sidebar</a></li>
						<li><a href="portfolio-description-full-width.html">Portfolio
								1 Full Width</a></li>
						<li><a href="portfolio-gallery.html">Portfolio 2 Right
								Sidebar</a></li>
						<li><a href="portfolio-gallery-left-sidebar.html">Portfolio
								2 Left Sidebar</a></li>
						<li><a href="portfolio-gallery-full-width.html">Portfolio
								2 Full Width</a></li>
						<li><a href="portfolio-4-columns-no-margin.html">Portfolio
								Right Sidebar no margin</a></li>
						<li><a href="portfolio-4-columns-no-margin-left-sidebar.html">Portfolio
								Left Sidebar no margin</a></li>
						<li><a href="portfolio-4-columns-no-margin-full-width.html">Portfolio
								Full Width no margin</a></li>
					</ul></li>
				<li class="col-md-4"><a href="portfolio-description.html">Portfolio
						Carousel</a>
					<ul>
						<li><a href="carousel-portfolio-2-columns.html">Carousel
								2 Columns</a></li>
						<li><a href="carousel-portfolio-2-columns-left-sidebar.html">Carousel
								2 Columns Left Sidebar</a></li>
						<li><a href="carousel-portfolio-2-columns-full-width.html">Carousel
								2 Columns Full Width</a></li>
						<li><a href="carousel-portfolio-3-columns.html">Carousel
								3 Columns</a></li>
						<li><a href="carousel-portfolio-3-columns-left-sidebar.html">Carousel
								3 Columns Left Sidebar</a></li>
						<li><a href="carousel-portfolio-3-columns-full-width.html">Carousel
								3 Columns Full Width</a></li>
						<li><a href="carousel-portfolio-4-columns.html">Carousel
								4 Columns</a></li>
						<li><a href="carousel-portfolio-4-columns-left-sidebar.html">Carousel
								4 Columns Left Sidebar</a></li>
						<li><a href="carousel-portfolio-4-columns-full-width.html">Carousel
								4 Columns Full Width</a></li>
					</ul></li>
				<li class="col-md-4"><a href="single-portfolio.html">Single
						Portfolio</a>
					<ul>
						<li><a href="single-portfolio.html">Single Portfolio 1</a></li>
						<li><a href="single-portfolio-2.html">Single Portfolio 2</a></li>
						<li><a href="single-portfolio-3.html">Single Portfolio 3</a></li>
						<li><a href="single-portfolio-right-sidebar.html">Single
								Portfolio Right Sidebar</a></li>
						<li><a href="single-portfolio-left-sidebar.html">Single
								Portfolio Left Sidebar</a></li>
					</ul></li>
				<li class="col-md-4"><a href="portfolio-3.html">Portfolio
						Full width</a>
					<ul>
						<li><a href="portfolio-3.html">Portfolio 4 Columns</a></li>
						<li><a href="portfolio-3-5-columns.html">Portfolio 5
								Columns</a></li>
					</ul></li>
			</ul></li>
		<li><a
			href="${pageContext.request.contextPath}/public/aboutUs.io">About
				Us</a>
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/public/aboutUs.io">About
						Us</a></li>
				<li><a
					href="${pageContext.request.contextPath}/public/termOfUse.io">Term
						of Use</a></li>
				<li><a
					href="${pageContext.request.contextPath}/public/privacyPolicy.io">Privacy
						Policy</a></li>
			</ul></li>
		<sec:authorize access="!hasAnyRole('Role_User','Role_Admin')">

			<li><a href="#">Login/Register</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/login.io">Log
							In</a></li>
					<li><a
						href="${pageContext.request.contextPath}/public/RegisterUser.io">Register</a></li>
				</ul></li>
		</sec:authorize>
		<sec:authorize access="hasAnyRole('Role_User','Role_Admin')">
			<li><a href="#">(<sec:authorize access="isAuthenticated()">
						<span class="name" style="color: #007ee6;"><sec:authentication
								property="principal.username" /></span>
					</sec:authorize>)
			</a>
				<ul>
					<sec:authorize access="hasRole('Role_Admin')">
						<c:choose>
							<c:when test="${(dashBoard=='0'|| dashBoard==null)}">
								<li><a
									href="${pageContext.request.contextPath}/admin/dashboard.io"><i
										class="icon fa fa-dashboard"></i><span class="title">DashBoard</span></a></li>
							</c:when>
							<c:when test="${(dashBoard=='1')}">
								<li><a
									href="${pageContext.request.contextPath}/admin/home.io"><i
										class="icon fa fa-dashboard"></i><span class="title">Freefay</span></a></li>
							</c:when>
						</c:choose>
					</sec:authorize>
					<sec:authorize access="hasRole('Role_User')">
						<c:choose>
							<c:when test="${(dashBoard=='0'|| dashBoard==null)}">
								<li><a
									href="${pageContext.request.contextPath}/public/home.io"><i
										class="icon fa fa-dashboard"></i><span class="title">DashBoard</span></a></li>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${(dashBoard=='1')}">
								<li><a
									href="${pageContext.request.contextPath}/user/home.io"><i
										class="icon fa fa-dashboard"></i><span class="title">Freefay</span></a></li>
							</c:when>
						</c:choose>
					</sec:authorize>
					<li><a
						href="${pageContext.request.contextPath}/public/profile.io"><i
							class="fa fa-user"></i>Profile</a></li>
					<li><a href="${pageContext.request.contextPath}/user/inbox.io"><i
							class="fa fa-envelope"></i>Inbox</a></li>
					<li><a href="#"><i class="fa fa-cog"></i>Settings</a></li>
					<li class="power"><a
						href="${pageContext.request.contextPath}/public/logout.io"><i
							class="fa fa-power-off"></i>Sign Out</a></li>
				</ul></li>
		</sec:authorize>

	</ul>
</nav>

</div>
<!-- End container -->
</header>
<div class="clearfix">
	<div id='cssmenu'>
		<ul>

			<li><a href='#'><span>Home</span></a></li>
			<c:forEach items="${menu}" var="list">
				<li><a href='#'><span>${list.categoryName}</span></a></li>
			</c:forEach>


			<li class='last'><a href='#'><span>Others</span></a></li>
		</ul>
	</div>
</div>

