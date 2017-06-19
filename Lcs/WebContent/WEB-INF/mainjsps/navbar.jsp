<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="side-menu">
			<li>
				<div class="user-info-wrapper">
					<div class="user-info-profile-image">
						<img src="img/profile-1.jpg" alt="" width="65" height="65">
					</div>
					<div class="user-info">
						<div class="user-welcome">Welcome</div>
						<div class="username">
							${firstName}<strong>${lastName}</strong>
						</div>
						<div class="status">
							Status <span class="status-now"><i
								class="fa fa-circle text-emerald fa"></i> Online</span>
						</div>
					</div>
				</div>
			</li>
			<li class="sidebar-search">
				<div class="input-group custom-search-form">
					<input type="text" class="form-control" placeholder="Search...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div> <!-- /input-group -->
			</li>
			<li><a href="AdminHome.Inn" class="active"><i
					class="fa fa-dashboard fa-fw fa-3x"></i> Home</a></li>
			<c:choose>
				<c:when test="${(Role=='Admin')}">
					<li><a href="ManageUsers.Inn"><i
							class="fa fa-envelope fa-fw fa-3x"></i> Manage Users</a></li>
					<ul class="nav nav-second-level">

					</ul>
					<!-- 					<li><a href="ManageCompanies.Inn"><i -->
					<!-- 							class="fa fa-envelope fa-fw fa-3x"></i> Manage Companies</a> -->
					<li><a href="#"><i class="fa fa-bar-chart-o fa-fw fa-3x"></i>
							Manage Companies<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ManageCompanies.Inn">CompanyStatus</a></li>
							<li><a
								href="${pageContext.request.contextPath}/ManageAllCompanies.Inn">List
									of Companies</a></li>
						</ul></li>
					<!-- 						<ul class="nav nav-second-level"> -->
					<!-- 							<li><a id="compose" href="mail.html" class="text-center"> -->
					<!-- 									<span class="btn btn-block btn-primary">Compose</span> -->
					<!-- 							</a></li> -->
					<!-- 							<li><a href="mail.html">Inbox <span -->
					<!-- 									class="label label-primary pull-right">7</span></a></li> -->
					<!-- 							<li><a href="mail.html">Drafts</a></li> -->
					<!-- 							<li><a href="mail.html">Sent</a></li> -->
					<!-- 							<li><a href="mail.html">Trash</a></li> -->
					<!-- 							<li><a href="mail.html">Junk Mail</a></li> -->
					<!-- 						</ul> /.nav-second-level

	</li>-->

					<li><a href="tables.html"><i class="fa fa-th fa-fw fa-3x"></i>
							Reports</a></li>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${(Role=='user')}">
					<li><a href="#"><i class="fa fa-bar-chart-o fa-fw fa-3x"></i>
							Manage Company<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ManageCompany.Inn?userId=${userId}">
									Company</a></li>
							<li><a
								href="${pageContext.request.contextPath}/BlockedCompany.Inn?userId=${userId}">Blocked
									Company</a></li>
						</ul></li>

					<li><a href="#"><i class="fa fa-edit fa-fw fa-3x"></i>
							Manage AccountHeads<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ManageAccountHead.Inn?userId=${userId}">
									Account Head</a></li>
							<li><a
								href="${pageContext.request.contextPath}/BlockedAccounts.Inn?userId=${userId}">Blocked
									Accounts</a></li>
							<li><a
								href="${pageContext.request.contextPath}/ViewAllAccountHead.Inn?userId=${userId}">List
									of Accounts</a></li>
						</ul></li>
					<!-- 					<li><a href="fullcalendar.html"><i -->
					<!-- 							class="fa fa-table fa-fw fa-3x"></i> Manage CompanyHeads</a></li> -->
					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Manage CompanyHeads<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ManageCompanyHead.Inn?userId=${userId}">CompanyHead</a></li>
							<li><a
								href="${pageContext.request.contextPath}/BlockedCompanyHead.Inn?userId=${userId}">Blocked
									CompanyHeads</a></li>
							<li><a
								href="${pageContext.request.contextPath}/ViewAllCompanyHead.Inn?userId=${userId}">List
									of CompanyHead</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Manage DriverInfo<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ManageDriver.Inn?userId=${userId}">Driver</a></li>
							<li><a
								href="${pageContext.request.contextPath}/BlockedDriver.Inn?userId=${userId}">Blocked
									Driver</a></li>
							<li><a
								href="${pageContext.request.contextPath}/ViewAllDriver.Inn?userId=${userId}">List
									of Driver</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Manage TransportInfo<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ManageTransport.Inn?userId=${userId}">TransportInfo</a></li>
							<li><a
								href="${pageContext.request.contextPath}/BlockedTransport.Inn?userId=${userId}">Blocked
									TransportInfo</a></li>
							<li><a
								href="${pageContext.request.contextPath}/ViewAllTransport.Inn?userId=${userId}">List
									of TransportInfo</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Manage Transcations<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<!-- 							//<li><a href="panels-wells.html">Add Transaction</a></li> -->
							<li><a
								href="${pageContext.request.contextPath}/AllTransaction.Inn?userId=${userId}">List
									of Transaction</a></li>
						</ul></li>

					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Reports<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ViewARAndAP.Inn?userId=${userId}">AR&AP</a></li>
							<li><a
								href="${pageContext.request.contextPath}/AccountLedger.Inn?userId=${userId}">Account
									Ledger</a></li>

						</ul>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${(Role=='accountant')}">
					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Manage CompanyHeads<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ViewAllCompanyHead.Inn?userId=${userId}">List
									of CompanyHead</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Manage DriverInfo<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ViewAllDriver.Inn?userId=${userId}">List
									of Driver</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Manage TransportInfo<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ViewAllTransport.Inn?userId=${userId}">List
									of TransportInfo</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-wrench fa-fw fa-3x"></i>
							Manage Transcations<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/ManageTransaction.Inn?userId=${userId}">Add
									Transaction</a></li>
							<!-- 							<li><a href="buttons.html">AR&AP</a></li> -->
							<!-- 							<li><a href="notifications.html">Account Ledger</a></li> -->
							<li><a
								href="${pageContext.request.contextPath}/AllTransaction.Inn?userId=${userId}">List
									of Transaction</a></li>
						</ul></li>
				</c:when>
			</c:choose>
		</ul>
		<!-- /#side-menu
	</div>
	<!-- /.sidebar-collapse -->
</nav>
<!-- /.navbar-static-side -->
