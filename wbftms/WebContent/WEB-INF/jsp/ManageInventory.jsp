
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
						<i class="icon-calendar"></i> <span>Inventory</span>
					</h4>
				</div>
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/SaveInventory.bnu"
						modelAttribute="asset">

						<spring:hidden path="assetInventoryId" />
						<spring:hidden path="itemBlock" />
						<spring:hidden path="userId" value="${userId}" />

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Item Name</label>
							<div class="controls span9 input-append">
								<spring:input path="itemName" />

								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Description</label>
							<div class="controls span9 input-append">
								<spring:input path="itemDescription" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Quantity</label>
							<div class="controls span9 input-append">
								<spring:input path="itemQuantity" />
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
					<span>Current Inventory</span>
				</h4>
			</div>
			<div class="content top">
				<table id="datatable_example"
					class="responsive table table-striped table-bordered"
					style="width: 100%; margin-bottom: 0;">
					<thead>
						<tr>

							<th class="to_hide_phone  no_sort">ID</th>
							<th class="to_hide_phone ue no_sort">Item Name</th>
							<th class="to_hide_phone ue no_sort">Description</th>
							<th class="to_hide_phone ue no_sort">Quantity</th>
							<th class="ms no_sort ">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${InventoryList}" var="item">
							<tr>
								<td class="to_hide_phone">${item.assetInventoryId}</td>
								<td>${item.itemName}</td>
								<td>${item.itemDescription}</td>
								<td>${item.itemQuantity}</td>
								<td class="ms"><div class="btn-group">
										<a class="btn btn-small" rel="tooltip" data-placement="left"
											data-original-title=" Edit "
											href="${pageContext.request.contextPath}/ManageInventory.bnu?assetInventoryId=${item.assetInventoryId}&amp;d=0&amp;userId=${userId}"><i
											class="gicon-edit"></i></a> <a class="btn  btn-small"
											rel="tooltip" data-placement="bottom"
											data-original-title="Block/deactivate"
											href="${pageContext.request.contextPath}/ManageInventory.bnu?assetInventoryId=${item.assetInventoryId}&amp;d=1&amp;userId=${userId}"><i
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