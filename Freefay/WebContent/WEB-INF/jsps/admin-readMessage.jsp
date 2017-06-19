<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<t:template>

	<c:choose>
		<c:when test="${(status==1)}">
			<script>
				setTimeout(function() {
					$('#toast-container').fadeOut();
				}, 3000);
			</script>


			<div id="toast-container" class="toast-bottom-full-width"
				aria-live="polite" role="alert">
				<div class="toast toast-success">
					<div class="toast-message">Sent</div>
				</div>
			</div>

		</c:when>
	</c:choose>
	<script>
		function updateShouts() {
			// Assuming we have #shoutbox
			var url = "${pageContext.request.contextPath}/admin/readMessageAjax.io?id=${id.messageHeadsId}";
			//	alert(url);
			$.get(url, function(data) {
				document.getElementById("chatbox").innerHTML = data;

			});
		}
		setInterval("updateShouts()", 1000);
	</script>
	<section>
		<div class="l-page-header">
			<h2 class="l-page-title"></h2>
			<!--BREADCRUMB-->
			<ul class="breadcrumb t-breadcrumb-page">
				<li></li>
				<li></li>
				<li class="active"></li>
			</ul>
		</div>
		<div class="l-spaced">
			<div class="resp-tabs-container">
				<h4 class="sep-bottom">Messages</h4>
				<div id="chatbox"></div>
			</div>

		</div>
	</section>

</t:template>