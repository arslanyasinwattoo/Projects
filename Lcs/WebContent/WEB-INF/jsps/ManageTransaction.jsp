<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Record Transaction</h3>
					</div>
					<div class="panel-body">
						<form role="form"
							action="${pageContext.request.contextPath}/saveTransaction.Inn"
							method="Post">
							<fieldset>
								<div class="form-group">

									<div class="form-group">
										<input class="form-control" placeholder="Amount"
											name="transactionAmount">
									</div>
									<div>
										<select class="form-control" name="transactionMode">
											<option value="">Select Mode</option>
											<option value="paid">paid</option>
											<option value="received">received</option>
										</select>
									</div>
									<div class="form-group">
										<input class="form-control" placeholder="Description"
											name="transactionDescription">
									</div>
									<select class="form-control" name="companyId">
										<option value="">Company List</option>
										<c:forEach items="${companyList}" var="account">
											<option value="${account.companyId}">${account.companyName}</option>
										</c:forEach>

									</select> <select class="form-control" name="driverId">
										<option value="">Driver List</option>
										<c:forEach items="${driverList}" var="account">
											<option value="${account.driverInfoId}">${account.driverFirstName}${account.driverLastName}</option>
										</c:forEach>

									</select> <select class="form-control" name="transportId">
										<option value="">Transport List</option>
										<c:forEach items="${transportList}" var="account">
											<option value="${account.transportInfoId}">${account.truckNumber}</option>
										</c:forEach>

									</select>
								</div>
								<input class="form-control" name="headId" type="hidden"
									value="${headId}"> <input class="form-control"
									name="userId" type="hidden" value="${userId}">
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
	<div class="panel-heading">Todays Transactions</div>
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
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${recievedList}" var="account">
									<tr>
										<td>${account.companyName}</td>
										<td>${account.transactionDate}</td>
										<td>${account.transactionTime}</td>
										<td>${account.transactionsAmount}</td>
										<td>${account.transactionsRemaks}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updateTransactionstatus.Inn?userId=${account.usersId}&amp;transactionId=${account.transactionsId}&amp;block=1&amp;check=1"><i
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
				<div class="panel-heading">Paid Transactions</div>
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
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${paidList}" var="account">
									<tr>
										<td>${account.companyName}</td>
										<td>${account.transactionDate}</td>
										<td>${account.transactionTime}</td>
										<td>${account.transactionsAmount}</td>
										<td>${account.transactionsRemaks}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updateTransactionstatus.Inn?userId=${account.usersId}&amp;transactionId=${account.transactionsId}&amp;block=1&amp;check=1"><i
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