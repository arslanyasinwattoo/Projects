<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<c:choose>
		<c:when
			test="${(role1=='Admin') || (role2=='Admin') || (role3=='Admin')}">
			<div class="row-fluid">
				<div class="span6">
					<div class="box paint color_25">
						<div class="title">
							<h4>
								<i class=" icon-bar-chart"></i><span>Pending Users</span>
							</h4>
						</div>
						<!-- End .title -->
						<div class="content">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Username</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pendingUsers}" var="pending_user">
										<tr>
											<td>${pending_user.userId}</td>
											<td>${pending_user.userName}</td>
											<td>${pending_user.userFirstname}</td>
											<td>${pending_user.userLastname}</td>
											<td><a class="btn  btn-small" rel="tooltip"
												data-placement="bottom" data-original-title="Remove"
												href="${pageContext.request.contextPath}/AdminHome.bnu?userId=${pending_user.userId}&amp;pending=0&amp;block=${pending_user.userBlock}&amp;check=2"><i
													class="gicon-remove "></i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .box .span6 -->
				<!-- End .box .span6 -->
				<div class="span6">
					<div class="box paint color_25">
						<div class="title">
							<h4>
								<i class=" icon-bar-chart"></i><span>Blocked Users</span>
							</h4>
						</div>
						<!-- End .title -->
						<div class="content">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Username</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${blockedUsers}" var="block_user">
										<tr>
											<td>${block_user.userId}</td>
											<td>${block_user.userName}</td>
											<td>${block_user.userFirstname}</td>
											<td>${block_user.userLastname}</td>
											<td><a class="btn  btn-small" rel="tooltip"
												data-placement="bottom" data-original-title="Remove"
												href="${pageContext.request.contextPath}/AdminHome.bnu?userId=${block_user.userId}&amp;block=0&amp;pending=${block_user.userPending}&amp;check=2"><i
													class="gicon-remove "></i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .box .span6 -->
			</div>
		</c:when>
		<c:when
			test="${(role1=='Broker') || (role2=='Broker') || (role3=='Broker')}">

			<h1>Broker</h1>



		</c:when>
		<c:when
			test="${(role1=='LandLord') || (role2=='LandLord') || (role3=='LandLord')}">
			<h1>LandLord</h1>




		</c:when>

	</c:choose>


</t:template>
