<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">Pending Users</div>
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
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${pendingUsers}" var="pending_user">
									<tr>
										<td>${pending_user.firstName}</td>
										<td>${pending_user.lastName}</td>
										<td>${pending_user.userName}</td>
										<td>${pending_user.userEmialid}</td>
										<td>${pending_user.contactNumber}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updatestatus.Inn?userId=${pending_user.usersId}&amp;pending=0&amp;block=${pending_user.block}&amp;check=2"><i
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
	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">Blocked Users</div>
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
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${blockedUsers}" var="block_user">
									<tr>
										<td>${block_user.firstName}</td>
										<td>${block_user.lastName}</td>
										<td>${block_user.userName}</td>
										<td>${block_user.userEmialid}</td>
										<td>${block_user.contactNumber}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updatestatus.Inn?userId=${block_user.usersId}&amp;pending=${block_user.status}&amp;block=0&amp;check=2"><i
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