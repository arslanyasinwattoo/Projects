<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">Current Status</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>

									<th>Current Amount</th>

								</tr>
							</thead>
							<tbody>

								<tr>

									<td>${currentAmount}</td>

								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">Recieved Transactions</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>Company Name</th>
									<th>Transaction Date</th>
									<th>Transaction Time</th>
									<th>Transaction Amount</th>
									<th>Transaction Description</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${TransactionList}" var="account">
									<tr>
										<td>${account.companyName}</td>
										<td>${account.transactionDate}</td>
										<td>${account.transactionTime}</td>
										<td>${account.transactionsAmount}</td>
										<td>${account.transactionsRemaks}</td>
										<%-- 										<td><a class="btn  btn-small" rel="tooltip" --%>
										<!-- 											data-placement="bottom" data-original-title="Remove" -->
										<%-- 											href="${pageContext.request.contextPath}/updateTransactionstatus.Inn?userId=${account.usersId}&amp;transactionId=${account.transactionsId}&amp;block=1&amp;check=1"><i --%>
										<%-- 												class="gicon-remove "></i></a></td> --%>
										<%-- 									</tr> --%>
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