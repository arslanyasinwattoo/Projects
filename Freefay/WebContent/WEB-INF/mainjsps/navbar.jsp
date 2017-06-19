<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="l-main-container">

	<aside id="sb-left"
		class="l-sidebar t-sidebar-1 l-sidebar-left l-initial">
		<!--Switcher-->
		<div class="l-side-box">
			<a href="#" data-ason-type="sidebar" data-ason-to-sm="sidebar"
				data-ason-target="#sb-left"
				class="sidebar-switcher switcher t-switcher-side ason-widget"><i
				class="fa fa-bars"></i></a>
		</div>
		<div class="l-side-box">
			<!--Logo-->
			<div class="widget-logo logo-in-side">
				<h1>
					<a href="index-2.html"><span
						class="logo-default visible-default-inline-block"><img
							src="${pageContext.request.contextPath}/resources/img/logo.png"
							alt="Proteus"></span><span
						class="logo-medium visible-compact-inline-block"><img
							src="${pageContext.request.contextPath}/resources/img/logo_medium.png"
							alt="Proteus" title="PROTEUS"></span> <spanl
							class="logo-small visible-collapsed-inline-block"> <img
							src="${pageContext.request.contextPath}/resources/img/logo_small.png"
							alt="Proteus" title="PROTEUS"></spanl></a>
				</h1>
			</div>
		</div>
		<!--Main Menu-->
		<sec:authorize access="hasRole('Role_Admin')">

			<div class="l-side-box">
				<!--MAIN NAVIGATION MENU-->
				<nav class="navigation">
					<ul data-ason-type="menu" class="ason-widget">

						<li><a
							href="${pageContext.request.contextPath}/public/index.io"><i
								class="icon fa fa-tasks"></i><span class="title">Home</span><span
								class="arrow"><i class="fa fa-angle-left"></i></span></a>
						<li><a href="#"><i class="icon fa fa-tasks"></i><span
								class="title">Manage Users</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfUsers.io"><span
										class="title">List Of Users</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfAdmins.io"><span
										class="title">List Of Admins</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfPendingUsers.io"><span
										class="title">List Of Pending Users</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfBlockedUsers.io"><span
										class="title">List Of Blocked Users</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfActiveUsers.io"><span
										class="title">List Of Active Users</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfInactiveUsers.io"><span
										class="title">List Of Inactive Users</span></a></li>



							</ul></li>
						<li><a href="#"><i class="icon fa fa-tasks"></i><span
								class="title">Manage Category</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a href="#"><i class="icon fa fa-tasks"></i><span
										class="title">Manage Category</span><span class="arrow"><i
											class="fa fa-angle-left"></i></span></a>
									<ul>
										<li><a
											href="${pageContext.request.contextPath}/admin/AddCategory.io"><span
												class="title">Add Category</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/ListOfCategory.io"><span
												class="title">View Category</span></a></li>
									</ul></li>
								<li><a href="#"><i class="icon fa fa-tasks"></i><span
										class="title">ManageSubCategory</span><span class="arrow"><i
											class="fa fa-angle-left"></i></span></a>
									<ul>
										<li><a
											href="${pageContext.request.contextPath}/admin/AddSubCategory.io"><span
												class="title">Add SubCategory</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/ListOfSubCategory.io"><span
												class="title">View SubCategory</span></a></li>
									</ul></li>
								<li><a href="#"><i class="icon fa fa-tasks"></i><span
										class="title">Manage Field</span><span class="arrow"><i
											class="fa fa-angle-left"></i></span></a>
									<ul>
										<li><a
											href="${pageContext.request.contextPath}/admin/AddField.io"><span
												class="title">Add Field</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/ListOfField.io"><span
												class="title">View Field</span></a></li>
									</ul></li>


							</ul></li>
						<li><a href="#"><i class="icon fa fa-tasks"></i><span
								class="title">Manage Requests</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfApprovedRequests.io"><span
										class="title">Approved Requests</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfPendingRequests.io"><span
										class="title">Pending Requests</span></a></li>

								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfBlockedRequests.io"><span
										class="title">Blocked Requests</span></a></li>
							</ul></li>
						<li><a href="#"><i class="icon fa fa-tasks"></i><span
								class="title">Manage Gigs</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfApprovedServices.io"><span
										class="title">Approved Gigs</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfPendingServices.io"><span
										class="title">Pending Gigs</span></a></li>

								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfBlockedServices.io"><span
										class="title">Blocked Gigs</span></a></li>
							</ul></li>
						<li><a href="#"><i class="icon fa fa-tasks"></i><span
								class="title">Manage Notifications</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/admin/companyNotifications.io"><span
										class="title">Add Company Notifications</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfActiveNotification.io"><span
										class="title">Active Notifications</span></a></li>

								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfBlockedNotification.io"><span
										class="title">Blocked Notifications</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfCancelledNotification.io"><span
										class="title">Cancelled Notifications</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfDelieveredNotification.io"><span
										class="title">Delivered Notifications</span></a></li>
							</ul></li>

						<li><a href="#"><i class="icon fa fa-tasks"></i><span
								class="title">Settings</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a href="#"><i class="icon fa fa-tasks"></i><span
										class="title">Manage Static pages</span><span class="arrow"><i
											class="fa fa-angle-left"></i></span></a>
									<ul>
										<li><a
											href="${pageContext.request.contextPath}/admin/staticPage.io"><span
												class="title">Term Of Use</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/AboutUS.io"><span
												class="title">About US</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/PrivacyPolicy.io"><span
												class="title">Privacy Policy</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/freefraeBasics.io"><span
												class="title">FreeFrae Basics</span></a></li>

									</ul></li>

								<li><a href="#"><i class="icon fa fa-tasks"></i><span
										class="title">Manage News</span><span class="arrow"><i
											class="fa fa-angle-left"></i></span></a>
									<ul>
										<li><a
											href="${pageContext.request.contextPath}/admin/publishNews.io"><span
												class="title">Publish News</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/activeNews.io"><span
												class="title">Active news</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/cancelledNews.io"><span
												class="title">Cancelled news</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/ListOfNews.io"><span
												class="title">List of news</span></a></li>
									</ul></li>
								<li><a href="#"><i class="icon fa fa-tasks"></i><span
										class="title">Manage Testimonials</span><span class="arrow"><i
											class="fa fa-angle-left"></i></span></a>
									<ul>
										<li><a
											href="${pageContext.request.contextPath}/admin/publishTestinomials.io"><span
												class="title">Publish Testimonials</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/activeTestimonials.io"><span
												class="title">Active Testimonials</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/cancelledTestimonials.io"><span
												class="title">Cancelled Testimonials</span></a></li>
										<li><a
											href="${pageContext.request.contextPath}/admin/ListOfTestimonials.io"><span
												class="title">List of Testimonials</span></a></li>
									</ul></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/menu.io"><i
										class="icon fa fa-tasks"></i><span class="title">Manage
											Menu</span></a></li>
							</ul></li>

						<li><a href="#"><i class="icon fa fa-envelope"></i><span
								class="title">Conversations</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/admin/inbox.io"><span
										class="title">Order mails </span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/requestMail.io"><span
										class="title">Request mails </span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/allMails.io"><span
										class="title">All mails </span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/cancelledMails.io"><span
										class="title">Cancelled mails</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/blockedMails.io"><span
										class="title">Blocked mails </span></a></li>

							</ul></li>
						<li><a href="#"><i class="icon fa fa-tasks"></i><span
								class="title">Manage Ads</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/admin/companyNotifications.io"><span
										class="title">Add new Ad</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfActiveNotification.io"><span
										class="title">Active Ads</span></a></li>

								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfBlockedNotification.io"><span
										class="title">Blocked Ads</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfCancelledNotification.io"><span
										class="title">Cancelled Ads</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/admin/ListOfDelieveredNotification.io"><span
										class="title">All Ads</span></a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</sec:authorize>
		<sec:authorize access="hasRole('Role_User')">

			<div class="l-side-box">
				<!--MAIN NAVIGATION MENU-->
				<nav class="navigation">
					<ul data-ason-type="menu" class="ason-widget">

						<li><a
							href="${pageContext.request.contextPath}/public/index.io"><i
								class="icon fa fa-dashboard"></i><span class="title">Home</span><span
								class="arrow"></span></a></li>
						<li><a href="#"><i class="icon fa fa-pause"></i><span
								class="title">Manage Requests</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/user/ManageRequests.io"><span
										class="title">Manage Requests</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/user/postRequest.io"><span
										class="title">Post Request</span></a></li>



							</ul></li>
						<li><a href="#"><i class="icon fa fa-pause"></i><span
								class="title">Manage Services</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/user/ManageServices.io"><span
										class="title">Manage Services</span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/user/postService.io"><span
										class="title">Post Service</span></a></li>

							</ul></li>
						<li><a
							href="${pageContext.request.contextPath}/public/index.io"><i
								class="icon fa fa-dashboard"></i><span class="title">Contacts</span><span
								class="arrow"></span></a></li>


						<li><a href="#"><i class="icon fa fa-envelope"></i><span
								class="title">Inbox</span><span class="arrow"><i
									class="fa fa-angle-left"></i></span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/user/inbox.io"><span
										class="title">Order mails </span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/user/requestMail.io"><span
										class="title">Request mail </span></a></li>
								<li><a
									href="${pageContext.request.contextPath}/user/allMails.io"><span
										class="title">All mails </span></a></li>

							</ul></li>

					</ul>
				</nav>
			</div>
		</sec:authorize>


	</aside>