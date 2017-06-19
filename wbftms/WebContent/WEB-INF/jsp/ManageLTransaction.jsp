
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>

<t:template>
	<script type="text/javascript">
		function getID(f) {
			window.location
					.assign("${pageContext.request.contextPath}/ManageLTransaction.bnu?userId=${userId}&expenseTypeId="
							+ f);
		}
	</script>
	<div class="row-fluid">
		<div class="span5" style="position: relative; left: 50%;">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class="icon-calendar"></i> <span>Transaction</span>
					</h4>
				</div>
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/SaveLTransaction.bnu"
						modelAttribute="Transaction">
						<spring:hidden path="transactionId" />
						<spring:hidden path="userId" value="${userId}" />
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Expense Type</label>
							<div class="controls span9 input-append">
								<spring:select id="expenseType" path="ExpenseTypeId"
									onchange='getID(this.value)'>
									<option label="Select Expense Type" />
									<c:forEach items="${ExpenseList}" var="list">
										<option value="${list.expenseTypeId}"
											label="${list.expenseName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Expense SubType</label>
							<div class="controls span9 input-append">
								<spring:select id="expenseSubtype" path="subTypeId">
									<option label="Select Subtype" />
									<c:forEach items="${SubTypeList}" var="list">
										<option value="${list.subTypeId}" label="${list.subName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Account</label>
							<div class="controls span9 input-append">
								<spring:select id="AccountName" path="accountHeadId">
									<option label="Select Account Name" />
									<c:forEach items="${AccountList}" var="list">
										<option value="${list.accountHeadId}"
											label="${list.accountName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Crop Profile</label>
							<div class="controls span9 input-append">
								<spring:select id="profileName" path="cropProfileId">
									<option label="Select Profile" />
									<c:forEach items="${ProfileList}" var="list">
										<option value="${list.cropProfileId}"
											label="${list.cropProfileName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Mode</label>
							<div class="controls span9 input-append">
								<spring:select id="transactionMode" path="transactionMode">

									<option value="<-Select value->" label="<-Select value->" />
									<option value="payed" label="Payed" />
									<option value="recieved" label="Recieved" />
								</spring:select>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Amount</label>
							<div class="controls span9 input-append">
								<spring:input path="transactionAmount" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Description</label>
							<div class="controls span9 input-append">
								<spring:input path="description" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<div class="span3"></div>
							<div class="controls span5">
								<button type="submit" class="btn btn-primary">save</button>

							</div>
						</div>
					</spring:form>
				</div>
			</div>
			<!-- End .box -->
		</div>
		<!-- End .span4 -->

		<!-- End .row-fluid -->
	</div>
	<div class="row-fluid">
		<div class="span6">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class=" icon-bar-chart"></i><span>Payed</span>
					</h4>
				</div>
				<!-- End .title -->
				<div class="content">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Account ID</th>
								<th>Amount</th>
								<th>Date</th>
								<th>Time</th>
								<th>Profile</th>
								<th>subtype</th>
								<th>Description</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${TransactionpayedList}" var="list">
								<tr>
									<td>${list.transactionId}</td>
									<td>${list.accountHeadId}</td>
									<td>${list.transactionAmount}</td>
									<td>${list.transactionDate}</td>
									<td>${list.transactionTime}</td>
									<td>${list.cropProfileId}</td>
									<td>${list.subTypeId}</td>
									<td>${list.description}</td>
									<td><a class="btn  btn-small" rel="tooltip"
										data-placement="bottom" data-original-title="Remove"
										href="${pageContext.request.contextPath}/ManageLTransaction.bnu?userId=${list.userId}&amp;d=1&amp;transactionId=${list.transactionId}"><i
											class="gicon-remove "></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="span6">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class=" icon-bar-chart"></i><span>Recieved</span>
					</h4>
				</div>
				<!-- End .title -->
				<div class="content">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>AccountId</th>
								<th>Amount</th>
								<th>Date</th>
								<th>Time</th>
								<th>Profile</th>
								<th>subtype</th>
								<th>Description</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${TransactionrecievedList}" var="list">
								<tr>
									<td>${list.transactionId}</td>
									<td>${list.accountHeadId}</td>
									<td>${list.transactionAmount}</td>
									<td>${list.transactionDate}</td>
									<td>${list.transactionTime}</td>
									<td>${list.cropProfileId}</td>
									<td>${list.subTypeId}</td>
									<td>${list.description}</td>
									<td><a class="btn  btn-small" rel="tooltip"
										data-placement="bottom" data-original-title="Remove"
										href="${pageContext.request.contextPath}/ManageLTransaction.bnu?userId=${list.userId}&amp;d=1&amp;transactionId=${list.transactionId}"><i
											class="gicon-remove "></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</t:template>