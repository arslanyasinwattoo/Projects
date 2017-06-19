<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">List Of CompanyHead</div>
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

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Company}" var="account">
									<tr>
										<td>${account.companyName}</td>
										<td>${account.userStarDate}</td>
										<td>${account.userStartTime}</td>
										<td>${account.block}</td>
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