<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Register Company</h3>
					</div>
					<div class="panel-body">
						<form role="form"
							action="${pageContext.request.contextPath}/saveCompany.Inn"
							method="Post">
							<fieldset>

								<div class="form-group">
									<input class="form-control" placeholder="company Name"
										name="companyName" type="" value="">
								</div>

								<div class="form-group">
									<input class="form-control" placeholder="company Address"
										name="companyAddress" type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Company ContactNumber"
										name="contactNumber" type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="E-mail-Id"
										name="Email" type="email" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="City" name="city"
										type="" value="">
								</div>


								<div class="form-group">
									<select class="form-control" name="category">
										<option lable="category" />
										<option value="A">A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>

									</select>
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
				<div class="panel-heading">Company</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>Name</th>
									<th>Address</th>
									<th>Contact Number</th>
									<th>Email ID</th>
									<th>City</th>
									<th>Catogory</th>
									<th>Pending</th>
									<th>Blocked</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Company}" var="company">
									<tr>
										<td>${company.companyName}</td>
										<td>${company.companyAddress}</td>
										<td>${company.companyContactNumber}</td>
										<td>${company.companyEmailid}</td>
										<td>${company.companyCity}</td>
										<td>${company.companyCategory}</td>
										<td>${company.status}</td>
										<td>${company.block}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updatestatus.Inn?userId=${company.userId}&amp;pending=${company.status}&amp;block=${company.block}&amp;check=2"><i
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