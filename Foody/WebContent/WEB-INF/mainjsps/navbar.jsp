<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav id="main-navbar" class="hidden-xs hidden-sm">
	<div class="nav hidden-xs">
		<div class="main-reorder pull-right">
			<a href="#"> <i class="fa fa-bars"></i>
			</a>
		</div>


		<div class="logo pull-left">
			<a href="index.html">
				<figure>
					<img
						src="${pageContext.request.contextPath}/resources/img/logo1.png"
						class="light-logo" alt="Berg HTML Theme" />
					<img
						src="${pageContext.request.contextPath}/resources/img/logo2.png"
						class="dark-logo" alt="Berg HTML Theme" />
				</figure>
		</div>
		<div class="main-nav">

			<ul class="pull-right">

				<c:choose>
					<c:when test="${(Active=='1' && dashBoard=='1')}">

						<li><a href="${pageContext.request.contextPath}/foody.bnu"
							class="">Foody</a></li>

					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${(Active=='1' && dashBoard=='0')}">

						<li><a
							href="${pageContext.request.contextPath}/dashBoard.bnu" class="">DashBoard</a></li>

					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${(dashBoard=='1')}">
						<c:choose>
							<c:when test="${(role=='Admin' || role=='User')}">
								<li><a href="Home.bnu" class=" active   ">home</a></li>
								<li></li>
								<c:choose>
									<c:when test="${(role=='Admin')}">
										<li><a href="" class="hover-subnav ">ManageAdmins</a>
											<div class="subnav image-subnav">
												<ul class="subnav-wrapper">
													<li><a href="ManageAdmin.bnu?check=pending">PendingAdmins</a>
													</li>
													<li><a href="ManageAdmin.bnu?check=blocked">Blocked
															Admins</a></li>
													<li><a href="ManageAdmin.bnu?check=view">View All
															Admins</a></li>

												</ul>
											</div></li>

										<li><a href="" class="hover-subnav ">ManageUsers</a>
											<div class="subnav image-subnav">
												<ul class="subnav-wrapper">
													<li><a href="ManageUser.bnu?check=pending">PendingUsers</a>
													</li>
													<li><a href="ManageUser.bnu?check=blocked">Blocked
															Users</a></li>
													<li><a href="ManageUser.bnu?check=view">View All
															Users</a></li>

												</ul>
											</div></li>
									</c:when>
								</c:choose>
								<li><a href="" class="hover-subnav ">Manage Resturants</a>
									<div class="subnav image-subnav">
										<ul class="subnav-wrapper">
											<li><a href="ManageResturant.bnu?check=Add">Add
													Resturants</a> <c:choose>
													<c:when test="${(role=='Admin')}">
														<li><a href="ManageResturant.bnu?check=pending">Pending
																Resturants</a>
														<li><a href="ManageResturant.bnu?check=blocked">Blocked
																Resturants</a></li>
													</c:when>
												</c:choose>
											<li><a href="ManageResturant.bnu?check=view">View
													All Resturants</a></li>
										</ul>
									</div></li>
								<li><a href="" class="hover-subnav ">Manage Type</a>
									<div class="subnav image-subnav">
										<ul class="subnav-wrapper">
											<li><a href="ManageFoodType.bnu?check=Add">Add Food
													Type</a> <c:choose>
													<c:when test="${(role=='Admin')}">

														<li><a href="ManageFoodType.bnu?check=pending">Pending
																FoodType</a>
														<li><a href="ManageFoodType.bnu?check=blocked">Blocked
																FoodType</a></li>
													</c:when>
												</c:choose>
											<li><a href="ManageFoodType.bnu?check=view">View All
													Food Type</a></li>

										</ul>
									</div></li>
								<li><a href="" class="hover-subnav ">Manage Item</a>
									<div class="subnav image-subnav">
										<ul class="subnav-wrapper">
											<li><a href="ManageFoodItem.bnu?check=Add">Add Food
													item</a> <c:choose>
													<c:when test="${(role=='Admin')}">

														<li><a href="ManageFoodItem.bnu?check=pending">Pending
																Food item</a>
														<li><a href="ManageFoodItem.bnu?check=blocked">Blocked
																Food item</a></li>
													</c:when>
												</c:choose>
											<li><a href="ManageFoodItem.bnu?check=view">View All
													Food item</a></li>

										</ul>
									</div></li>
								<li><a href="" class="hover-subnav ">Manage Reviews</a>
									<div class="subnav image-subnav">
										<ul class="subnav-wrapper">
											<li><a href="ManageReview.bnu?check=Add">Add Review
													item</a> <c:choose>
													<c:when test="${(role=='Admin')}">

														<li><a href="ManageReview.bnu?check=pending">Pending
																Reviews</a>
														<li><a href="ManageReview.bnu?check=blocked">Blocked
																Review</a></li>
													</c:when>
												</c:choose>
											<li><a href="ManageReview.bnu?check=view">View All
													Review</a></li>

										</ul>
									</div></li>
							</c:when>
						</c:choose>

					</c:when>
				</c:choose>

				<c:choose>
					<c:when test="${(Active==null || dashBoard=='0')}">
						<li><a href="index.jsp" class=" active   ">home</a></li>
						<li></li>
						<li><a
							href="${pageContext.request.contextPath}/Resturant.bnu" class="">restaurant</a></li>
						<li><a href="${pageContext.request.contextPath}/FoodType.bnu"
							class="">Menu Type's</a></li>
						<li><a href="${pageContext.request.contextPath}/FoodItem.bnu"
							class="">Menu Item's</a></li>
						<li><a
							href="${pageContext.request.contextPath}/FoodReview.bnu" class="">Reviews</a></li>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${(Active==null)}">
						<li><a href="${pageContext.request.contextPath}/Login.bnu"
							class="">Login</a></li>
						<li><a
							href="${pageContext.request.contextPath}/Registeration.bnu"
							class="">signUp</a></li>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${(Active=='1')}">

						<li><a href="${pageContext.request.contextPath}/Logout.bnu"
							class="">Logout</a></li>

					</c:when>
				</c:choose>
		</div>
	</div>
</nav>
<div id="mobile-nav" class="visible-xs visible-sm">
	<header>
		<div class="container-fluid">
			<ul class="menu-header">
				<li class="pull-left"><a href="index.html" class="logo">
						<figure>
							<img
								src="${pageContext.request.contextPath}/resources/img/logo2.png"
								alt="Berg HTML Theme" />
						</figure>
				</a></li>
				<li class="reorder pull-right"><a href="#" title=""><i
						class="fa fa-bars"></i></a></li>
			</ul>
		</div>
	</header>
	<div class="" id="flyout-container">
		<ul id="mobile-navbar" class="nav flyout-menu main-nav nav-height">
			<li class="nav-item"><a title="" href="index.html">homE</a></li>
			<li class="nav-item">
				<ul class="subnav">
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</li>
			<li class="nav-item"><a title="" href="restaurant.html">Restaurant</a>
			</li>
			<li class="nav-item"><a title="" href="menu.html" class="">Menu</a>
				<span class="open-children"><i class="fa fa-angle-down"></i></span>
				<ul class="subnav">
					<li><a href="menu.html" title=""><span>Menu 1</span></a></li>
					<li><a href="menu2.html" title=""><span>Menu 2</span></a></li>
				</ul></li>
			<li class="nav-item"><a title="" href="reservation.html">Reservation</a>
			</li>
			<li class="nav-item"><a title="" href="contact.html">Contact</a>
			</li>
			<li class="nav-item"><a title="" href="shop.html">Shop</a></li>
			<li class="nav-item"><a title="" href="gallery.html">Gallery</a>
			</li>
		</ul>
	</div>
</div>

<!-- <div id="wrap"> -->
<!-- 	<form action="" autocomplete="on"> -->
<!-- 		<input id="search" name="search" type="text" -->
<!-- 			placeholder="What're we looking for ?"><input -->
<!-- 			id="search_submit" value="Rechercher" type="submit"> -->
<!-- 	</form> -->
<!-- </div> -->