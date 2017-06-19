
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>

<t:template>
	<div class="row-fluid">
		<div class="span5" >
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class="icon-calendar"></i> <span>Crop Profile</span>
					</h4>
				</div>
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/SaveProfile.bnu"
						modelAttribute="profile">

						<spring:hidden path="cropProfileId" />
						<spring:hidden path="userId" value="${userId}" />
						<spring:hidden path="cropFinish" value="${cropfinish}" />
						<spring:hidden path="cropBlock" />
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Profile Name</label>
							<div class="controls span9 input-append">
								<spring:input path="cropProfileName" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Acres</label>
							<div class="controls span9 input-append">
								<spring:input path="acres" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Seed</label>
							<div class="controls span9 input-append">
								<spring:input path="seed" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<c:choose>

							<c:when test="${cropfinish == 1}">
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Total weight</label>
									<div class="controls span9 input-append">
										<spring:input path="totalWeight" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>

								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Selling Rate</label>
									<div class="controls span9 input-append">
										<spring:input path="sellingRate" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>

								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Selling Amount</label>
									<div class="controls span9 input-append">
										<spring:input path="sellingAmount" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>
								<div class="control-group row-fluid">
									<label class="control-label span3" for="inputPassword">
										Description</label>
									<div class="controls span9 input-append">
										<spring:input path="cropDescription" />
										<span class="add-on"><i class="icon-user"></i></span>
									</div>
								</div>
							</c:when>
						</c:choose>
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
					<span>Active Profile</span>
				</h4>
			</div>
			<div class="content top">
				<table id="datatable_example"
					class="responsive table table-striped table-bordered"
					style="width: 100%; margin-bottom: 0;">
					<thead>
						<tr>

							<th class="to_hide_phone  no_sort">ID</th>
							<th class="to_hide_phone ue no_sort">Profile Name</th>
							<th class="to_hide_phone ue no_sort">Start Date</th>
							<th class="to_hide_phone ue no_sort">Acres</th>
							<th class="ms no_sort ">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${profileList}" var="list">

							<tr>

								<td class="to_hide_phone">${list.cropProfileId}</td>

								<td>${list.cropProfileName}</td>

								<td>${list.startDate}</td>
								<td>${list.acres}</td>
								<td class="ms"><div class="btn-group">
										<a class="btn btn-small" rel="tooltip" data-placement="left"
											data-original-title=" Edit "
											href="${pageContext.request.contextPath}/CropProfile.bnu?cropProfileId=${list.cropProfileId}&amp;d=0&amp;userId=${userId}"><i
											class="gicon-edit"></i></a> <a class="btn  btn-small"
											rel="tooltip" data-placement="bottom"
											data-original-title="Block/deactivate"
											href="${pageContext.request.contextPath}/CropProfile.bnu?cropProfileId=${list.cropProfileId}&amp;d=1&amp;userId=${userId}"><i
											class="gicon-remove "></i></a> <a class="btn btn-small"
											rel="tooltip" data-placement="left"
											data-original-title=" Edit "
											href="${pageContext.request.contextPath}/CropProfile.bnu?cropProfileId=${list.cropProfileId}&amp;d=3&amp;userId=${userId}"><i
											class="gicon-edit"></i></a>
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