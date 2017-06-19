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
					<i class=" icon-bar-chart"></i><span>Current Amount</span>
				</h4>
			</div>
			<!-- End .title -->
			<div class="content">
				<table class="table table-striped">
					<tbody>
						<tr>
							<td>${currentAmount}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<c:set var="count" value="0" scope="page" />
	<div class="row-fluid">
		<div class="box ">
			<div class="title">
				<h4>
					<span>Account Ledger</span>
				</h4>
			</div>
			<div class="content top">
				<table id="datatable_example"
					class="responsive table table-striped table-bordered"
					style="width: 100%; margin-bottom: 0;">
					<thead>
						<tr>

							<th class="to_hide_phone  no_sort">ID</th>
							<th class="to_hide_phone ue no_sort">Name</th>
							<th class="to_hide_phone ue no_sort">Date</th>
							<th class="to_hide_phone ue no_sort">Time</th>
							<th class="to_hide_phone ue no_sort">Amount</th>
							<th class="to_hide_phone ue no_sort">Mode</th>
							<th class="to_hide_phone ue no_sort">Description</th>
							<th class="to_hide_phone ue no_sort">current Amount</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${TransactionList}" var="list">
							<tr>
								<td class="to_hide_phone">${list.transactionId}</td>
								<c:forEach items="${AccountList}" var="list2">
									<c:choose>
										<c:when test="${list.accountHeadId==list2.accountHeadId }">
											<td class="to_hide_phone">${list2.accountName}</td>
										</c:when>
									</c:choose>
								</c:forEach>
								<td class="to_hide_phone">${list.transactionDate}</td>
								<td class="to_hide_phone">${list.transactionTime}</td>
								<td class="to_hide_phone">${list.transactionAmount}</td>
								<td class="to_hide_phone">${list.transactionMode}</td>
								<td class="to_hide_phone">${list.description}</td>
								<c:choose>
									<c:when test="${list.transactionMode=='payed'}">
										<c:set var="count" value="${count - list.transactionAmount}"
											scope="page" />
										<td class="to_hide_phone">${count}</td>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${list.transactionMode=='recieved'}">
										<c:set var="count" value="${count + list.transactionAmount}"
											scope="page" />
										<td class="to_hide_phone">${count}</td>
									</c:when>
								</c:choose>

							</tr>
						</c:forEach>

					</tbody>
				</table>

			</div>
			<!-- End .content -->
		</div>
	</div>
</t:template>