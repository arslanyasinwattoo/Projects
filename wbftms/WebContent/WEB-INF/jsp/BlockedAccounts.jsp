<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>

<t:template>

	<div class="row-fluid">
		<div class="box ">
			<div class="title">
				<h4>
					<span>Blocked Accounts</span>
				</h4>
			</div>
			<div class="content top">
				<table id="datatable_example"
					class="responsive table table-striped table-bordered"
					style="width: 100%; margin-bottom: 0;">
					<thead>
						<tr>

							<th class="to_hide_phone  no_sort">ID</th>
							<th class="to_hide_phone ue no_sort">Account Name</th>
							<th class="to_hide_phone ue no_sort">First Name</th>
							<th class="to_hide_phone ue no_sort">Last Name</th>
							<th class="to_hide_phone ue no_sort">Description</th>
							<th class="to_hide_phone ue no_sort">ContactNo</th>
							<th class="to_hide_phone ue no_sort">Date</th>
							<th class="to_hide_phone ue no_sort">Time</th>
							<th class="to_hide_phone ue no_sort">Password</th>
							<th class="ms no_sort ">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${AccountsList}" var="head">
							<tr>
								<td class="to_hide_phone">${head.accountHeadId}</td>
								<td>${head.accountName}</td>
								<td>${head.accountFirstname}</td>
								<td>${head.accountLastname}</td>
								<td>${head.accountDescription}</td>
								<td>${head.accountContactNo}</td>
								<td>${head.accountDate}</td>
								<td>${head.accountTime}</td>
								<td>${head.accountPassword}</td>
								<td class="ms"><div class="btn-group">
										<a class="btn  btn-small" rel="tooltip"
											data-placement="bottom"
											data-original-title="Block/deactivate"
											href="${pageContext.request.contextPath}/BlockedAccounts.bnu?AccountId=${head.accountHeadId}&amp;d=0&amp;userId=${userId}"><i
											class="gicon-remove "></i></a>
									</div></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
			<!-- End .content -->
		</div>
	</div>


</t:template>