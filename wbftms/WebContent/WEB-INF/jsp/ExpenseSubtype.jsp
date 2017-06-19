
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<t:template>
	<script type="text/javascript">
		function getID(f) {
			window.location
					.assign("${pageContext.request.contextPath}/ExpenseSubType.bnu?expenseTypeId="
							+ f);
		}
	</script>
	<div class="row-fluid">
		<div class="span5" style="position: relative; left: 50%;">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class="icon-calendar"></i> <span>Expense Type</span>
					</h4>
				</div>
				
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/SaveExpenseSubType.bnu"
						modelAttribute="expenseSubType">
						<spring:hidden path="subTypeId" />
						<spring:hidden path="userId" value="${userId}" />
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Expense Type</label>
							<div class="controls span9 input-append">
								<spring:select id="expenseTypeId" path="expenseTypeId"
									selected="selected" onchange='getID(this.value)'>
									<option selected="selected" value="${expenseSubType.expenseTypeId}" label="Select Expense Type" />
									<c:forEach items="${expensetypeList}" var="expense_type">
										<option  value="${expense_type.expenseTypeId }"
											label="${expense_type.expenseName }" />
									</c:forEach>
								</spring:select>
								
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Sub Type</label>
							<div class="controls span9 input-append">
								<spring:input path="subName" />

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
		<div class="box ">
			<div class="title">
				<h4>
					<span>Sub Types</span>
				</h4>
			</div>
			<!-- End .title -->

			<div class="content top">
				<table id="datatable_example"
					class="responsive table table-striped table-bordered"
					style="width: 100%; margin-bottom: 0;">
					<thead>
						<tr>

							<th class="to_hide_phone  no_sort">ID</th>
							<th class="to_hide_phone ue no_sort">Name</th>
							<th class="ms no_sort ">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${SubTypeList}" var="expense_type">
							<tr>
								<td class="to_hide_phone">${expense_type.subTypeId}</td>
								<td>${expense_type.subName}</td>
								<td class="ms"><div class="btn-group">
										<a class="btn btn-small" rel="tooltip" data-placement="left"
											data-original-title=" Edit "
											href="${pageContext.request.contextPath}/ExpenseSubType.bnu?userId=${userId}&amp;expenseTypeId=${expense_type.expenseTypeId}&amp;d=0&amp;expenseSubTypeId=${expense_type.subTypeId}"><i
											class="gicon-edit"></i></a> <a class="btn  btn-small"
											rel="tooltip" data-placement="bottom"
											data-original-title="Remove"
											href="${pageContext.request.contextPath}/ExpenseSubType.bnu?userId=${userId}&amp;expenseTypeId=${expense_type.expenseTypeId}&amp;d=1&amp;expenseSubTypeId=${expense_type.subTypeId}"><i
											class="gicon-remove "></i></a>
									</div></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- End .content -->
</t:template>