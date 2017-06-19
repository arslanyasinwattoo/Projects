<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

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

								<c:forEach items="${blockedList}" var="account">
									<tr>
										<td>${account.truckSize}</td>
										<td>${account.truckNumber}</td>
										<td>${account.active}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updateTransportstatus.Inn?userId=${account.usersId}&amp;transportId=${account.transportInfoId}&amp;active=0&amp;check=2"><i
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