<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<c:forEach items="${expenseSubtypeList}" var="expense_type">
			<tr>
				<td class="to_hide_phone">${expense_type.expensesubtypeId}</td>
				<td>${expense_type.expenseSubName}</td>
				<td class="ms"><div class="btn-group">
						<a class="btn btn-small" rel="tooltip" data-placement="left"
							data-original-title=" Edit "
							href="${pageContext.request.contextPath}/ExpenseSubType.bnu?expenseTypeId=${expense_type.expensesubtypeId}&amp;d=0"><i
							class="gicon-edit"></i></a> <a class="btn  btn-small" rel="tooltip"
							data-placement="bottom" data-original-title="Remove"
							href="${pageContext.request.contextPath}/ExpenseSubType.bnu?expenseTypeId=${expense_type.expensesubtypeId}&amp;d=1"><i
							class="gicon-remove "></i></a>
					</div></td>
			</tr>
		</c:forEach>

	</tbody>
</table>