
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
						<i class="icon-calendar"></i> <span>Crop Info</span>
					</h4>
				</div>
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/SaveCropInfo.bnu"
						modelAttribute="cropInfo">
						<spring:hidden path="cropInfoId" />
						<spring:hidden path="userId" value="${userId}" />
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Name</label>
							<div class="controls span9 input-append">
								<spring:input path="cropName" />

								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Duration</label>
							<div class="controls span9 input-append">
								<spring:input path="cropDuration" />

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
	</div>
	<!-- End .span4 -->

	<!-- End .row-fluid -->

	<div class="row-fluid">
		<div class="box ">
			<div class="title">
				<h4>
					<span>Crops</span>
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
							<th class="to_hide_phone ue no_sort">Duration</th>
							<th class="ms no_sort ">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cropinfoList}" var="crop_info">
							<tr>
								<td class="to_hide_phone">${crop_info.cropInfoId}</td>
								<td>${crop_info.cropName}</td>
								<td>${crop_info.cropDuration}</td>
								<td class="ms"><div class="btn-group">
										<a class="btn btn-small" rel="tooltip" data-placement="left"
											data-original-title=" Edit "
											href="${pageContext.request.contextPath}/CropInfo.bnu?cropinfoId=${crop_info.cropInfoId}&amp;d=0"><i
											class="gicon-edit"></i></a> <a class="btn  btn-small"
											rel="tooltip" data-placement="bottom"
											data-original-title="Remove"
											href="${pageContext.request.contextPath}/CropInfo.bnu?cropinfoId=${crop_info.cropInfoId}&amp;d=1"><i
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