<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">List OF Users</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>First Name</th>
									<th>Last Name</th>
									<th>User Name</th>
									<th>Email ID</th>
									<th>Contact No</th>
									<th>Cnic No</th>
									<th>Role</th>
									<th>Pending</th>
									<th>Blocked</th>
									<th>Start Date</th>
									<th>Start Time</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Users}" var="user">
									<tr>
										<td>${user.firstName}</td>
										<td>${user.lastName}</td>
										<td>${user.userName}</td>
										<td>${user.userEmialid}</td>
										<td>${user.contactNumber}</td>
										<td>${user.userCnic}</td>
										<td>${user.role}</td>
										<td>${user.status}</td>
										<td>${user.block}</td>
										<td>${user.startDate}</td>
										<td>${user.startTime}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Block"
											href="${pageContext.request.contextPath}/updatestatus.Inn?userId=${user.usersId}&amp;pending=0&amp;block=1&amp;check=1"><i
												class="gicon-remove "></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
	</div>


</t:template>