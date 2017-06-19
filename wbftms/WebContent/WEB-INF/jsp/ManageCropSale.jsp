
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
						<i class="icon-calendar"></i> <span>Sale Record</span>
					</h4>
				</div>
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/SaveCropSales.bnu"
						modelAttribute="SaleRecord">

						<spring:hidden path="manageSaleRecordId" />
						<spring:hidden path="userId" value="${userId}" />
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Crop Name</label>
							<div class="controls span9 input-append">
								<spring:select id="cropName" path="cropName">
									<option label="Select Crop Name" />
									<c:forEach items="${CropList}" var="crop_info">
										<option value="${crop_info.cropInfoId}"
											label="${crop_info.cropName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Customer Name</label>
							<div class="controls span9 input-append">
								<spring:select id="customerName" selected="customerName" path="customerName">
									<option label="Select Customer Name" />
									<c:forEach items="${AccountList}" var="head">
										<option value="${head.accountHeadId}"
											label="${head.accountName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Weight of bag</label>
							<div class="controls span9 input-append">
								<spring:input path="weightOfBag" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								No bags</label>
							<div class="controls span9 input-append">
								<spring:input path="noBag" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Crop left in kg's</label>
							<div class="controls span9 input-append">
								<spring:input path="cropLeftInKgs" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Total Weight</label>
							<div class="controls span9 input-append">
								<spring:input path="totalWeight" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Weight in Moands</label>
							<div class="controls span9 input-append">
								<spring:input path="weightInMoands" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								weight in Kg's</label>
							<div class="controls span9 input-append">
								<spring:input path="weightInKg" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Total Amount</label>
							<div class="controls span9 input-append">
								<spring:input path="totalAmount" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Total Commision</label>
							<div class="controls span9 input-append">
								<spring:input path="totalCommision" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Funds</label>
							<div class="controls span9 input-append">
								<spring:input path="funds" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>


						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Current Amount</label>
							<div class="controls span9 input-append">
								<spring:input path="currentAmount" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Bank charges</label>
							<div class="controls span9 input-append">
								<spring:input path="bankCharges" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Labor charges</label>
							<div class="controls span9 input-append">
								<spring:input path="laborCharge" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Current Commision</label>
							<div class="controls span9 input-append">
								<spring:input path="currentCommision" />
								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Purchaser Name</label>
							<div class="controls span9 input-append">
								<spring:select id="purchaserName" path="purchaserName">
									<option label="Select purchaser Name" />
									<c:forEach items="${AccountList}" var="head">
										<option value="${head.accountHeadId}"
											label="${head.accountName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Total Crop Sold</label>
							<div class="controls span9 input-append">
								<spring:input path="totalCropSoldToPurchaser" />
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
					<span>Today's Sales</span>
				</h4>
			</div>
			<div class="content top">
				<table id="datatable_example"
					class="responsive table table-striped table-bordered"
					style="width: 100%; margin-bottom: 0;">
					<thead>
						<tr>

							<th class="to_hide_phone  no_sort">ID</th>
							<th class="to_hide_phone ue no_sort">Date</th>
							<th class="to_hide_phone ue no_sort">Customer Name</th>
							<th class="to_hide_phone ue no_sort">Crop Name</th>
							<th class="to_hide_phone ue no_sort">weight of bags</th>
							<th class="to_hide_phone ue no_sort">no of bags</th>
							<th class="to_hide_phone ue no_sort">Crop left in kg's</th>
							<th class="to_hide_phone ue no_sort">Total weight</th>
							<th class="to_hide_phone ue no_sort">Weight in moands</th>
							<th class="to_hide_phone ue no_sort">weight in kg</th>
							<th class="to_hide_phone ue no_sort">Total amount</th>
							<th class="to_hide_phone ue no_sort">Total commision</th>
							<th class="to_hide_phone ue no_sort">current Amount</th>
							<th class="to_hide_phone ue no_sort">funds</th>
							<th class="to_hide_phone ue no_sort">bank charges</th>
							<th class="to_hide_phone ue no_sort">labor charges</th>
							<th class="to_hide_phone ue no_sort">current Commision</th>
							<th class="to_hide_phone ue no_sort">Purchaser Name</th>
							<th class="to_hide_phone ue no_sort">Total crop sold to
								purchaser</th>
							<th class="ms no_sort ">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${SaleList}" var="sale">
							<tr>
								<td class="to_hide_phone">${sale.manageSaleRecordId}</td>
								<td>${sale.saleDate}</td>
								<td>${sale.customerName}</td>
								<td>${sale.cropName}</td>
								<td>${sale.weightOfBag}</td>
								<td>${sale.noBag}</td>
								<td>${sale.cropLeftInKgs}</td>
								<td>${sale.totalWeight}</td>
								<td>${sale.weightInMoands}</td>
								<td>${sale.weightInKg}</td>
								<td>${sale.totalAmount}</td>
								<td>${sale.totalCommision}</td>
								<td>${sale.currentAmount}</td>
								<td>${sale.funds}</td>
								<td>${sale.bankCharges}</td>
								<td>${sale.laborCharge}</td>
								<td>${sale.currentCommision}</td>
								<td>${sale.purchaserName}</td>
								<td>${sale.totalCropSoldToPurchaser}</td>
								<td class="ms"><div class="btn-group">
										<a class="btn btn-small" rel="tooltip" data-placement="left"
											data-original-title=" Edit "
											href="${pageContext.request.contextPath}/CropSales.bnu?ManageCropSaleId=${sale.manageSaleRecordId}&amp;d=0&amp;userId=${userId}"><i
											class="gicon-edit"></i></a> <a class="btn  btn-small"
											rel="tooltip" data-placement="bottom"
											data-original-title="Block/deactivate"
											href="${pageContext.request.contextPath}/CropSales.bnu?ManageCropSaleId=${head.manageSaleRecordId}&amp;d=1&amp;userId=${userId}"><i
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