<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Register AccountHead</h3>
					</div>
					<div class="panel-body">
						<form role="form"
							action="${pageContext.request.contextPath}/saveAccount.Inn"
							method="Post">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="First Name"
										name="firstName" type="" value="">
								</div>

								<div class="form-group">
									<input class="form-control" placeholder="Last Name"
										name="lastName" type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="UserName"
										name="userName" type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Email-Id" name="Email"
										type="email" autofocus>
								</div>

								<div class="form-group">
									<input class="form-control" placeholder="Address"
										name="Address" type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Cnic" name="Cnic"
										type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name="password" type="password" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="ContactNumber"
										name="ContactNumber" type="" value="">
								</div>
								<input class="form-control" name="userId" type="hidden"
									value="${userId}">
								<!-- Change this to a button or input when using this as a form -->
								<input type="submit" class="btn btn-lg btn-primary btn-block"
									value="Register">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">List Of AccountHead</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>firstName</th>
									<th>lastName</th>
									<th>userName</th>
									<th>Email-ID</th>
									<th>Address</th>
									<th>Cnic</th>
									<th>Password</th>
									<th>ContactNumber</th>
									<th>Block</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Account}" var="account">
									<tr>
										<td>${account.userFirstName}</td>
										<td>${account.userLastName}</td>
										<td>${account.username}</td>
										<td>${account.userEmailid}</td>
										<td>${account.userAddress}</td>
										<td>${account.userPassword}</td>
										<td>${account.userCnic}</td>
										<td>${account.useContactNumber}</td>
										<td>${account.block}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updateAccountstatus.Inn?userId=${account.userId}&amp;accountHeadId=${account.accountHeadId}&amp;block=1&amp;check=2"><i
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