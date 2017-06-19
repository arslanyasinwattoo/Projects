
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<section class="l-main-container">
	<!--Left Sidebar Content-->

	<header class="l-header l-header-1 t-header-1">
		<div class="navbar navbar-ason">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" data-toggle="collapse"
						data-target="#ason-navbar-collapse"
						class="navbar-toggle collapsed">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a href="${pageContext.request.contextPath}/public/index.io"
						class="navbar-brand widget-logo"><span
						class="logo-default-header"><img
							src="${pageContext.request.contextPath}/resources/img/logo.png"
							alt="freefrae"></span></a>
				</div>
				<div id="ason-navbar-collapse" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="full-nav-logo"><a
							href="${pageContext.request.contextPath}/public/index.io"
							class="widget-logo"><span class="logo-default-header2"><img
									src="${pageContext.request.contextPath}/resources/img/logo.png"
									alt="Freefay"></span></a></li>
						<sec:authorize access="hasAnyRole('Role_User','Role_Admin')">
							<li>
								<!-- Task Widget-->

								<div
									class="widget-task task-in-header dropdown dropdown-in-header">
									<a href="#" data-toggle="dropdown" class="dropdown-toggle"><i
										class="fa fa-tasks"></i><span class="label label-danger">4</span></a>
									<ul role="menu" class="dropdown-menu">

										<li class="dropdown-menu-header">Tasks<span
											class="label label-danger">4</span></li>
										<li>
											<div class="l-row">
												<div class="l-col-sm-8">Project Overview</div>
												<div class="l-col-sm-4 tar">68%</div>
											</div>
											<div class="progress progress-no-border progress-mini">
												<div style="width: 25%"
													class="progress-bar progress-bar-info">
													<span class="sr-only">25% Complete (success)</span>
												</div>
												<div style="width: 18%"
													class="progress-bar progress-bar-success">
													<span class="sr-only">18% Complete (success)</span>
												</div>
												<div style="width: 12%"
													class="progress-bar progress-bar-danger">
													<span class="sr-only">12% Complete (warning)</span>
												</div>
												<div style="width: 16%"
													class="progress-bar progress-bar-warning">
													<span class="sr-only">16% Complete (danger)</span>
												</div>
											</div>
										</li>
										<li class="divider"></li>
										<li>
											<div class="l-row">
												<div class="l-col-sm-8">Page Design</div>
												<div class="l-col-sm-4 tar">75%</div>
											</div>
											<div class="progress progress-no-border progress-mini">
												<div role="progressbar" aria-valuenow="75" aria-valuemin="0"
													aria-valuemax="100" style="width: 75%;"
													class="progress-bar progress-bar-info">
													<span class="sr-only">75% Complete</span>
												</div>
											</div>
										</li>
										<li>
											<div class="l-row">
												<div class="l-col-sm-8">Front-End development</div>
												<div class="l-col-sm-4 tar">50%</div>
											</div>
											<div class="progress progress-no-border progress-mini">
												<div role="progressbar" aria-valuenow="50" aria-valuemin="0"
													aria-valuemax="100" style="width: 50%;"
													class="progress-bar progress-bar-success">
													<span class="sr-only">50% Complete</span>
												</div>
											</div>
										</li>
										<li>
											<div class="l-row">
												<div class="l-col-sm-8">Back-End development</div>
												<div class="l-col-sm-4 tar">35%</div>
											</div>
											<div class="progress progress-no-border progress-mini">
												<div role="progressbar" aria-valuenow="35" aria-valuemin="0"
													aria-valuemax="100" style="width: 35%;"
													class="progress-bar progress-bar-danger">
													<span class="sr-only">35% Complete</span>
												</div>
											</div>
										</li>
										<li>
											<div class="l-row">
												<div class="l-col-sm-8">Database design</div>
												<div class="l-col-sm-4 tar">40%</div>
											</div>
											<div class="progress progress-no-border progress-mini">
												<div role="progressbar" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100" style="width: 40%;"
													class="progress-bar progress-bar-warning">
													<span class="sr-only">40% Complete</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<!-- Message Widget-->
								<div
									class="widget-message message-in-header dropdown dropdown-in-header">
									<a href="#" data-toggle="dropdown" class="dropdown-toggle"><i
										class="fa fa-envelope"></i><span class="label label-info">5</span></a>
									<ul role="menu" class="dropdown-menu">
										<li class="dropdown-menu-header">Messages<span
											class="label label-info">5</span></li>
										<li data-ason-type="scrollbar" class="msg-content ason-widget">
											<ul>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-3 msg-image">
																<img
																	src="${pageContext.request.contextPath}/resources/img/widgets/user_1.jpg">
															</div>
															<div class="l-col-xs-7 msg-info">
																<h4>Harold Holland</h4>
																<p>John, don't forget tomorrow we have a meeting</p>
																<div class="time">
																	<i class="fa fa-clock-o"></i><span>&nbsp; 5
																		minutes ago</span>
																</div>
															</div>
															<div class="l-col-xs-2 msg-status">
																<ul>
																	<li>
																		<div data-toggle="tooltip" data-placement="bottom"
																			title="Mark as read" class="msg-tip">
																			<i class="fa fa-circle-o"></i>
																		</div>
																	</li>
																	<li><span class="label label-info">New</span></li>
																</ul>
															</div>
														</div>
												</a></li>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-3 msg-image">
																<img
																	src="${pageContext.request.contextPath}/resources/img/widgets/user_2.jpg">
															</div>
															<div class="l-col-xs-7 msg-info">
																<h4>Barbara Curtis</h4>
																<p>Tomorrow is movie night, don't forget it</p>
																<div class="time">
																	<i class="fa fa-clock-o"></i><span>&nbsp; 40
																		minutes ago</span>
																</div>
															</div>
															<div class="l-col-xs-2 msg-status">
																<ul>
																	<li>
																		<div data-toggle="tooltip" title="Mark as read"
																			class="msg-tip">
																			<i class="fa fa-circle-o"></i>
																		</div>
																	</li>
																	<li><span class="label label-info">New</span></li>
																</ul>
															</div>
														</div>
												</a></li>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-3 msg-image">
																<img
																	src="${pageContext.request.contextPath}/resources/img/widgets/user_3.jpg">
															</div>
															<div class="l-col-xs-7 msg-info">
																<h4>Gary Fernandez</h4>
																<p>Check out our brand new product, you will love it
																	!!!</p>
																<div class="time">
																	<i class="fa fa-clock-o"></i><span>&nbsp; 12:00
																		AM</span>
																</div>
															</div>
															<div class="l-col-xs-2 msg-status">
																<ul>
																	<li>
																		<div data-toggle="tooltip" title="Mark as read"
																			class="msg-tip">
																			<i class="fa fa-circle-o"></i>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
												</a></li>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-3 msg-image">
																<img
																	src="${pageContext.request.contextPath}/resources/img/widgets/user_4.jpg">
															</div>
															<div class="l-col-xs-7 msg-info">
																<h4>Kristina Wade</h4>
																<p>Congratulation for your new promotion</p>
																<div class="time">
																	<i class="fa fa-clock-o"></i><span>&nbsp; Dec
																		24, 2014 at 2:32 PM</span>
																</div>
															</div>
															<div class="l-col-xs-2 msg-status">
																<ul>
																	<li>
																		<div data-toggle="tooltip" title="Mark as unread"
																			class="msg-tip">
																			<i class="fa fa-circle"></i>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
												</a></li>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-3 msg-image">
																<img
																	src="${pageContext.request.contextPath}/resources/img/widgets/user_5.jpg">
															</div>
															<div class="l-col-xs-7 msg-info">
																<h4>Eugene Powell</h4>
																<p>Check out our new top selling products</p>
																<div class="time">
																	<i class="fa fa-clock-o"></i><span>&nbsp; Nov
																		12, 2014 at 8:15 PM</span>
																</div>
															</div>
															<div class="l-col-xs-2 msg-status">
																<ul>
																	<li>
																		<div data-toggle="tooltip" title="Mark as unread"
																			class="msg-tip">
																			<i class="fa fa-circle"></i>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
												</a></li>
											</ul>
										</li>
										<li class="dropdown-menu-footer"><a href="app-mail.html">View
												all messages</a></li>
									</ul>
								</div>
							</li>
							<li>
								<!-- Notification Widget-->
								<div
									class="widget-notification notification-in-header dropdown dropdown-in-header">
									<a href="#" data-toggle="dropdown" class="dropdown-toggle"><i
										class="fa fa-bell"></i><span class="label label-success">5</span></a>
									<ul role="menu" class="dropdown-menu">
										<li class="dropdown-menu-header">Notification<span
											class="label label-success">5</span></li>
										<li class="nft-content">
											<ul>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-2 nft-icon text-info">
																<i class="fa fa-user"></i>
															</div>
															<div class="l-col-xs-6 nft-info">
																<p>New User Sign Up</p>
															</div>
															<div class="l-col-xs-2 time">
																<span>15 min</span>
															</div>
															<div class="l-col-xs-2 nft-status">
																<div data-toggle="tooltip" title="Mark as read"
																	class="nft-tip">
																	<i class="fa fa-circle-o"></i>
																</div>
															</div>
														</div>
												</a></li>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-2 nft-icon">
																<i class="fa fa-shopping-cart text-success"></i>
															</div>
															<div class="l-col-xs-6 nft-info">
																<p>New Order</p>
															</div>
															<div class="l-col-xs-2 time">
																<span>31 min</span>
															</div>
															<div class="l-col-xs-2 nft-status">
																<div data-toggle="tooltip" title="Mark as read"
																	class="nft-tip">
																	<i class="fa fa-circle-o"></i>
																</div>
															</div>
														</div>
												</a></li>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-2 nft-icon">
																<i class="fa fa-comment text-warning"></i>
															</div>
															<div class="l-col-xs-6 nft-info">
																<p>New Comment</p>
															</div>
															<div class="l-col-xs-2 time">
																<span>07/02/14</span>
															</div>
															<div class="l-col-xs-2 nft-status">
																<div data-toggle="tooltip" title="Mark as read"
																	class="nft-tip">
																	<i class="fa fa-circle-o"></i>
																</div>
															</div>
														</div>
												</a></li>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-2 nft-icon">
																<i class="fa fa-database text-danger"></i>
															</div>
															<div class="l-col-xs-6 nft-info">
																<p>Database Updated</p>
															</div>
															<div class="l-col-xs-2 time">
																<span>09/24/14</span>
															</div>
															<div class="l-col-xs-2 nft-status">
																<div data-toggle="tooltip" title="Mark as unread"
																	class="nft-tip">
																	<i class="fa fa-circle"></i>
																</div>
															</div>
														</div>
												</a></li>
												<li><a href="#">
														<div class="l-row">
															<div class="l-col-xs-2 nft-icon">
																<i class="fa fa-code-fork text-primary"></i>
															</div>
															<div class="l-col-xs-6 nft-info">
																<p>Github Fork Updated</p>
															</div>
															<div class="l-col-xs-2 time">
																<span>11/12/14</span>
															</div>
															<div class="l-col-xs-2 nft-status">
																<div data-toggle="tooltip" title="Mark as unread"
																	class="nft-tip">
																	<i class="fa fa-circle"></i>
																</div>
															</div>
														</div>
												</a></li>
											</ul>
										</li>
										<li class="dropdown-menu-footer"><a href="#">View all
												notifications</a></li>
									</ul>
								</div>
							</li>
						</sec:authorize>
						<li>
							<!-- Search Widget-->
							<div
								class="widget-search search-in-header is-search-right t-search-1">
								<form role="form" action="">
									<input type="text" placeholder="Search..." class="form-control">
									<button type="submit" class="btn">
										<i class="fa fa-search"></i>
									</button>
								</form>
							</div>
						</li>
					</ul>
					<sec:authorize access="hasAnyRole('Role_User','Role_Admin')">
						<ul class="nav navbar-nav navbar-right">
							<li>
								<!-- Slide Header Switcher--> <a href="#"
								title="Show Weather Forecast" data-ason-type="header"
								data-ason-header="l-header-slide-3"
								data-ason-header-push="l-header-slide-push-3"
								data-ason-anim-all='["velocity","transition.expandIn","transition.fadeOut"]'
								data-ason-is-push="true" data-ason-target="#header"
								class="sidebar-switcher switcher t-switcher-header ason-widget"><i
									class="fa fa-cloud"></i></a>
							</li>
							<li class="hidden-sm">
								<!-- Full Screen Toggle--> <a href="#"
								class="full-screen-page sidebar-switcher switcher t-switcher-header"><i
									class="fa fa-expand"></i></a>
							</li>
							<li>
								<!-- Profile Widget-->
								<div class="widget-profile profile-in-header">
									<button type="button" data-toggle="dropdown"
										class="btn dropdown-toggle">
										<sec:authorize access="isAuthenticated()">
											<span class="name" style="color: #007ee6;"> <sec:authentication
													property="principal.username" /></span>
											<img
												src="${pageContext.request.contextPath}/resources/profile-images/<sec:authentication
													property="principal.username"/>-profile-image.jpg"
												onError="this.src='${pageContext.request.contextPath}/resources/profile-images/default-profile.jpg'">
										</sec:authorize>
										<sec:authorize access="!isAuthenticated()">
											<span class="name">Sugar Daddy</span>
											<img
												src="${pageContext.request.contextPath}/resources/img/profile/profile.jpg">
										</sec:authorize>

									</button>

									<ul role="menu" class="dropdown-menu">
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
										<li><a
											href="${pageContext.request.contextPath}/user/inbox.io"><i
												class="fa fa-envelope"></i>Inbox</a></li>
										<li><a href="#"><i class="fa fa-cog"></i>Settings</a></li>
										<li class="power"><a
											href="${pageContext.request.contextPath}/public/logout.io"><i
												class="fa fa-power-off"></i>Sign Out</a></li>
									</ul>
								</div>
							</li>
							<li>
								<!-- Right Sidebar Switcher--> <a href="#"
								data-ason-type="sidebar" data-ason-sidebar="l-sidebar-2"
								data-ason-on-all="hidden" data-ason-to-all="sidebar"
								data-ason-anim-resize='["ason","transitionBasic"]'
								data-ason-target="#sb-right"
								class="sidebar-switcher switcher t-switcher-header mr-15 ml-15 ason-widget"><i
									class="fa fa-bars"></i></a>
							</li>
						</ul>
					</sec:authorize>
					<sec:authorize access="!hasAnyRole('Role_User','Role_Admin')">
						<ul class="nav navbar-nav navbar-right">

							<li>
								<!-- Profile Widget-->
								<div class="widget-profile profile-in-header">
									<button type="button" data-toggle="dropdown"
										class="btn dropdown-toggle">
										<i class="fa fa-sliders"></i><span class="name">Login/Register</span>
									</button>
									<ul role="menu" class="dropdown-menu">
										<li><a href="${pageContext.request.contextPath}/login.io"><i
												class="fa fa-sign-in"></i>Log In</a></li>
										<li><a
											href="${pageContext.request.contextPath}/public/RegisterUser.io"><i
												class="fa fa-sign-in"></i>Register</a></li>

									</ul>
								</div>
							</li>
							<li>
								<!-- Right Sidebar Switcher--> <a href="#"
								data-ason-type="sidebar" data-ason-sidebar="l-sidebar-2"
								data-ason-on-all="hidden" data-ason-to-all="sidebar"
								data-ason-anim-resize='["ason","transitionBasic"]'
								data-ason-target="#sb-right"
								class="sidebar-switcher switcher t-switcher-header mr-15 ml-15 ason-widget"><i
									class="fa fa-bars"></i></a>
							</li>
						</ul>
					</sec:authorize>
				</div>
			</div>
		</div>
	</header>