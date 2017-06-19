
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>

<t:template>
	<div class="row-fluid">
		<div class="span5" style="position: relative; left: 50%;">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class="icon-calendar"></i> <span>Account Head</span>
					</h4>
				</div>
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/SaveAccount.bnu"
						modelAttribute="head">

						<spring:hidden path="accountHeadId" />
						<spring:hidden path="accountBlock" />
						<spring:hidden path="userId" value="${userId}" />

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Account Name</label>
							<div class="controls span9 input-append">
								<spring:input path="accountName" />

								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								FirstName</label>
							<div class="controls span9 input-append">
								<spring:input path="accountFirstname" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								LastName</label>
							<div class="controls span9 input-append">
								<spring:input path="accountLastname" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Description</label>
							<div class="controls span9 input-append">
								<spring:input path="accountDescription" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								ContactNo</label>
							<div class="controls span9 input-append">
								<spring:input path="accountContactNo" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Password</label>
							<div class="controls span9 input-append">
								<spring:input path="accountPassword" />
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
					<span>Active Accounts</span>
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
										<a class="btn btn-small" rel="tooltip" data-placement="left"
											data-original-title=" Edit "
											href="${pageContext.request.contextPath}/ManageAccounts.bnu?AccountId=${head.accountHeadId}&amp;d=0&amp;userId=${userId}"><i
											class="gicon-edit"></i></a> <a class="btn  btn-small"
											rel="tooltip" data-placement="bottom"
											data-original-title="Block/deactivate"
											href="${pageContext.request.contextPath}/ManageAccounts.bnu?AccountId=${head.accountHeadId}&amp;d=1&amp;userId=${userId}"><i
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