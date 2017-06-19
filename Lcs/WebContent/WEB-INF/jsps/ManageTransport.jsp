<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Register Driver</h3>
					</div>
					<div class="panel-body">
						<form role="form"
							action="${pageContext.request.contextPath}/saveTransport.Inn"
							method="Post">
							<fieldset>

								<select class="form-control" name="truckSize">
									<option value="">Truck Size</option>
									<option value="4wheeler">4-Wheeler</option>
									<option value="6wheeler">6-Wheeler</option>

								</select>
								<div class="form-group">
									<input class="form-control" placeholder="Truck Number"
										name="truckNo">
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
				<div class="panel-heading">Transport</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>Truck Size</th>
									<th>Truck Number</th>
									<th>Block</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${Driver}" var="account">
									<tr>
										<td>${account.truckSize}</td>
										<td>${account.truckNumber}</td>
										<td>${account.active}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updateTransportstatus.Inn?userId=${account.usersId}&amp;transportId=${account.transportInfoId}&amp;active=1&amp;check=1"><i
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