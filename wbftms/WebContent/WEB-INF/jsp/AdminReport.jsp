<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	
			<div class="row-fluid">

				<div class="box paint color_25">
					<div class="title">
						<h4>
							<i class=" icon-bar-chart"></i><span>All Users</span>
						</h4>
					</div>
					<!-- End .title -->
					<div class="content">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Total Users</th>
									<th>Blocked users</th>
									<th>Pending users</th>
									<th>LandLords</th>
									<th>Brokers</th>
									<th>Admins</th>

								</tr>
							</thead>
							<tbody>
								<tr>
								
									<td>${totalusers}</td>
									<td>${blockedusers}</td>
									<td>${pendingusers}</td>
									<td>${Landlords}</td>
									<td>${brokers}</td>
									<td>${Admins}</td>

								
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End .box .span6 -->
</t:template>
