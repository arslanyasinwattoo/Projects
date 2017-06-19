<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">List of Companies</div>
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
								<c:forEach items="${companyList}" var="company">
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
											href="${pageContext.request.contextPath}/updatecompanystatus.Inn?companyId=${company.companyId}&amp;pending=${company.status}&amp;block=1&amp;check=1"><i
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