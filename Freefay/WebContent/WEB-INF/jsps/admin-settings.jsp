<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<input type="hidden" id="active" value="${active}">
	<input type="hidden" id="unactive" value="${unactive}">
	<input type="hidden" id="pending" value="${pending}">
	<input type="hidden" id="blocked" value="${blocked}">
	<input type="hidden" id="total" value="${total}">
	<H1>Dashboard</H1>
	<div class="l-spaced">
		<div class="l-row">
			<div class="l-box">
				<div class="l-box-header">
					<h2 class="l-box-title">
						<span>Total Users:-</span> ${total}
					</h2>
					<ul class="l-box-options">
						<li><a href="#"><i class="fa fa-cogs"></i></a></li>
						<li><a href="#" data-ason-type="fullscreen"
							data-ason-target=".l-box" data-ason-content="true"
							class="ason-widget"></a></li>
						<li><a href="#" data-ason-type="refresh"
							data-ason-target=".l-box" data-ason-duration="1000"
							class="ason-widget"><i class="fa fa-rotate-right"></i></a></li>
						<li><a href="#" data-ason-type="toggle"
							data-ason-find=".l-box" data-ason-target=".l-box-body"
							data-ason-content="true" data-ason-duration="200"
							class="ason-widget"></a></li>
						<li><a href="#" data-ason-type="delete"
							data-ason-target=".l-box" data-ason-content="true"
							data-ason-animation="fadeOut" class="ason-widget"></a></li>
					</ul>
				</div>
				<div class="l-box-body l-spaced">
					<div class="hide c3-donut-1"></div>
					<div class="hide c3-donut-2"></div>
					<div class="hide c3-donut-3"></div>
					<div class="hide c3-donut-4"></div>
					<div class="hide c3-donut-5"></div>
					<div id="c3Donut"></div>
				</div>
			</div>
		</div>
	</div>

</t:template>
<script
	src="${pageContext.request.contextPath}/resources/js/basic/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/charts/c3/c3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plugins/charts/c3/d3.v3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/calls/chart.c3.js"></script>
