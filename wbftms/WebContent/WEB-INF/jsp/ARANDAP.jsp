<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<t:template>

	<div class="row-fluid">

		<div class="box paint color_2">
			<div class="title">
				<h4>
					<i class=" icon-bar-chart"></i><span>Total Account payable
						And Recievable</span>
				</h4>
			</div>
			<!-- End .title -->
			<div class="content">
				<table class="table table-striped">
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
	<div class="row-fluid">
		<div class="span6">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class=" icon-bar-chart"></i><span>Recievable</span>
					</h4>
				</div>
				<!-- End .title -->
				<div class="content">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Amount</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${AccountList}" var="list">
								<tr>
									<c:choose>
										<c:when test="${list.amount < 0}">
											<td>${list.accountHeadId}</td>
											<td>${list.accountName}</td>
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
		<!-- End .box .span6 -->
		<!-- End .box .span6 -->
		<div class="span6">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class=" icon-bar-chart"></i><span>Payable</span>
					</h4>
				</div>
				<!-- End .title -->
				<div class="content">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Amount</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${AccountList}" var="list2">
								<tr>
									<c:choose>
										<c:when test="${list2.amount > 0}">
											<td>${list2.accountHeadId}</td>
											<td>${list2.accountName}</td>
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
</t:template>