<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Register CompanyHead</h3>
					</div>
					<div class="panel-body">
						<form role="form"
							action="${pageContext.request.contextPath}/saveCompanyHead.Inn"
							method="Post">
							<fieldset>
								<div class="form-group">
									<select class="form-control" name="companyId">
										<option value="">Company List</option>
										<c:forEach items="${Company}" var="account">
											<option value="${account.companyId }">${account.companyName}</option>
										</c:forEach>

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
				<div class="panel-heading">CompanytHead</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>CompanyName</th>
									<th>StartDate</th>
									<th>StartTime</th>
									<th>Block</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${CompanyHead}" var="account">
									<tr>
										<td>${account.companyName}</td>
										<td>${account.userStarDate}</td>
										<td>${account.userStartTime}</td>
										<td>${account.block}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updateCompanyHeadstatus.Inn?userId=${account.userId}&amp;companyHeadId=${account.companyHeadId}&amp;block=1&amp;check=1"><i
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