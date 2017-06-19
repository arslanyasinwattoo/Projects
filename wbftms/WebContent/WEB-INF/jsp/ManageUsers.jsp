<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<div class="row-fluid">
		
			<div class="box paint color_25">
				<div class="title">
					<h4>
						<i class=" icon-bar-chart"></i><span>All Users</span>
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
								<th>Email</th>
								<th>Contact No</th>
								<th>Address</th>
								<th>City</th>
								<th>Organization</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${Users}" var="user">
								<tr>
									<td>${user.userId}</td>
									<td>${user.userName}</td>
									<td>${user.userFirstname}</td>
									<td>${user.userLastname}</td>
									<td>${user.userEmail}</td>
									<td>${user.userContactNo }</td>
									<td>${user.userAddress }</td>
									<td>${user.userCity }</td>
									<td>${user.userOrganizationname}</td>
									<td class="ms"><div class="btn-group">
											<a class="btn btn-small" rel="tooltip" data-placement="left"
												data-original-title=" Edit "
												href="${pageContext.request.contextPath}/AdminHome.bnu?userId=${user.userId}&amp;block=1&amp;pending=${user.userPending}&amp;check=1"><i
												class="gicon-edit"></i></a></div></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- End .box .span6 -->


</t:template>
