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
		function Accept() {
			var url = "${pageContext.request.contextPath}/user/orderAccept.io?id=${id.messageHeadsId}";
			//	alert(url);
			$.get(url, function(data) {

			});

		}

		function Recline() {
			var url = "${pageContext.request.contextPath}/user/orderRecline.io?id=${id.messageHeadsId}";
			//	alert(url);
			$.get(url, function(data) {

			});

		}
		function sendMessage() {
			var toid = $("#id").val(); // get value
			var content = $("#message").val();
			$("#message").value = "";
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/user/sendMessage.io",
				data : "id=" + toid + "&message=" + content,
				success : function() {
				}
			});

		}
		function updateShouts() {
			// Assuming we have #shoutbox
			var url = "${pageContext.request.contextPath}/user/readMessageAjax.io?id=${id.messageHeadsId}";
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
			<div class="l-row">
				<div class="l-box-body l-spaced">
					<form method="Post" role="form" id="myform" class="form-horizontal">
						<div class="form-group">
							<input type="hidden" id="id" name="id"
								value="${id.messageHeadsId}">
							<div class="input-group l-spaced-bottom">
								<textarea placeholder="Message" class="form-control"
									id="message" name="message" maxlength="20000" rows="1"></textarea>
								<span class="input-group-btn">
									<button type="button" class="btn btn-default"
										onclick="sendMessage()">
										<i class="icon fa fa-send"></i>Send
									</button>

								</span>
							</div>
						</div>
					</form>
					<c:choose>
						<c:when test="${provider==1}">

							<a
								href="${pageContext.request.contextPath}/user/orderAccept.io?id=${id.messageHeadsId}"
								class="btn btn-default"> <i class="fa fa-thumbs-o-up"></i>Accept
							</a>
							<a
								href="${pageContext.request.contextPath}/user/orderRecline.io?id=${id.messageHeadsId}"
								class="btn btn-default"> <i class="fa fa-thumbs-o-down"></i>Recline
							</a>

						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
	</section>

</t:template>