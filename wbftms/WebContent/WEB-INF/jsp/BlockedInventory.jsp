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
					<span>Deleted\Blocked Inventory</span>
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
										<a class="btn  btn-small" rel="tooltip"
											data-placement="bottom"
											data-original-title="UnBlock/Activate"
											href="${pageContext.request.contextPath}/BlockedInventory.bnu?assetInventoryId=${item.assetInventoryId}&amp;d=0&amp;userId=${userId}"><i
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