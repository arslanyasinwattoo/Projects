<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
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
									<th>Payable</th>
									<th>Recievable</th>

								</tr>
							</thead>
							<tbody>

								<tr>
									<td>${payableAmount}</td>
									<td>${recievableAmount}</td>

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
				<div class="panel-heading">Recievable</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>

									<th>Name</th>
									<th>Amount</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${AccountList}" var="list">
									<tr>
										<c:choose>
											<c:when test="${list.amount < 0}">
												<td>${list.companyName}</td>
												<td>${list.amount}</td>
											</c:when>
										</c:choose>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End .box .span6 -->
	<!-- End .box .span6 -->
	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">Payable</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>Name</th>
									<th>Amount</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${AccountList}" var="list2">
									<tr>
										<c:choose>
											<c:when test="${list2.amount > 0}">
												<td>${list2.companyName}</td>
												<td>${list2.amount}</td>
											</c:when>
										</c:choose>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End .box .span6 -->
		</div>
	</div>
</t:template>