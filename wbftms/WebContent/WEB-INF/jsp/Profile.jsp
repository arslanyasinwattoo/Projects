
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>

<t:template>
	<c:choose>
		<c:when test="${d == 1}">
			<div class="row-fluid">
				<div class="span5" style="position: relative; left: 50%;">
					<div class="box paint color_2">
						<div class="title">
							<h4>
								<i class="icon-calendar"></i> <span>User</span>
							</h4>
						</div>
						<div class="content">

							<spring:form class="bs-docs-example form-horizontal"
								action="${pageContext.request.contextPath}/SaveUserProfile.bnu"
								modelAttribute="user">
								<spring:hidden path="userId" value="${userId}" />
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Firstname</label>
									<div class="controls span9 input-append">
										<spring:input path="userFirstname" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Lastname</label>
									<div class="controls span9 input-append">
										<spring:input path="userLastname" />

										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Address</label>
									<div class="controls span9 input-append">
										<spring:input path="userAddress" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										City</label>
									<div class="controls span9 input-append">
										<spring:input path="userCity" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										ContactNo</label>
									<div class="controls span9 input-append">
										<spring:input path="userContactNo" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Email</label>
									<div class="controls span9 input-append">
										<spring:input path="userEmail" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>

								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Password</label>
									<div class="controls span9 input-append">
										<spring:input path="userPassword" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Organization\shopName</label>
									<div class="controls span9 input-append">
										<spring:input path="userOrganizationname" />
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
		</c:when>
	</c:choose>

	<div class="row-fluid">
		<div class="box ">
			<div class="title">
				<h4>
					<span>Information</span>
				</h4>
			</div>

			<div class="content top">
				<table id="datatable_example"
					class="responsive table table-striped table-bordered"
					style="width: 100%; margin-bottom: 0;">
					<thead>
						<tr>

							<th class="to_hide_phone  no_sort">ID</th>
							<th class="to_hide_phone ue no_sort">First Name</th>
							<th class="to_hide_phone ue no_sort">Last Name</th>
							<th class="to_hide_phone ue no_sort">Address</th>
							<th class="to_hide_phone ue no_sort">City</th>
							<th class="to_hide_phone ue no_sort">Email</th>
							<th class="to_hide_phone ue no_sort">Organization</th>
							<th class="to_hide_phone ue no_sort">ContactNo</th>
							<th class="to_hide_phone ue no_sort">password</th>

							<th class="ms no_sort ">Actions</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td class="to_hide_phone">${users.userId}</td>
							<td>${users. userFirstname}</td>
							<td>${users.userLastname}</td>
							<td>${users.userAddress}</td>
							<td>${users.userCity}</td>
							<td>${users.userEmail}</td>
							<td>${users.userOrganizationname}</td>
							<td>${users.userContactNo}</td>
							<td>${users.userPassword}</td>
							<td class="ms"><div class="btn-group">
									<a class="btn btn-small" rel="tooltip" data-placement="left"
										data-original-title=" Edit "
										href="${pageContext.request.contextPath}/Profile.bnu?d=1&amp;userId=${userId}"><i
										class="gicon-edit"></i></a>
								</div></td>
						</tr>

					</tbody>
				</table>
			</div>
			<!-- End .content -->
		</div>
	</div>
</t:template>