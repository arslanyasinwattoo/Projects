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
					<span>Deleted Profiles</span>
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
							<th class="to_hide_phone ue no_sort">Start Date</th>
							<th class="to_hide_phone ue no_sort">Seed</th>
							<th class="to_hide_phone ue no_sort">Acres</th>
							<th class="ms no_sort ">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${profileList}" var="profile">
							<tr>
								<td class="to_hide_phone">${profile.cropProfileId}</td>
								<td>${profile.cropProfileName}</td>
								<td>${profile.startDate}</td>
								<td>${profile.endDate}</td>
								<td>${profile.seed}</td>
								<td>${profile.acres}</td>
								<td class="ms"><div class="btn-group">
										<a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="activate"
											href="${pageContext.request.contextPath}/DeletedCropProfiles.bnu?cropProfileId=${profile.cropProfileId}&amp;d=0&amp;userId=${userId}"><i
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