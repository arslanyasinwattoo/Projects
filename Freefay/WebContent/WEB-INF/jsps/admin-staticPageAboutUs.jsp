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
					<div class="toast-message">Updated Successfully</div>
				</div>
			</div>

		</c:when>
	</c:choose>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		tinymce
				.init({
					selector : 'textarea',
					height : 500,
					theme : 'modern',
					plugins : [
							'advlist autolink lists link image charmap print preview hr anchor pagebreak',
							'searchreplace wordcount visualblocks visualchars code fullscreen',
							'insertdatetime media nonbreaking save table contextmenu directionality',
							'emoticons template paste textcolor colorpicker textpattern imagetools' ],
					toolbar1 : 'insertfile undo redo | styleselect | bold italic | fontselect |  fontsizeselect | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
					toolbar2 : 'print preview media | forecolor backcolor emoticons',

					image_advtab : true,
					templates : [ {
						title : 'Test template 1',
						content : 'Test 1'
					}, {
						title : 'Test template 2',
						content : 'Test 2'
					} ],
					content_css : [
							'//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
							'//www.tinymce.com/css/codepen.min.css' ]
				});
	</script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/addons/theme/summernote.css"
		class="style-theme-addon" />

	<form
		action="${pageContext.request.contextPath}/admin/updateAboutUs.io"
		method="post">

		<div class="l-box l-spaced-bottom">
			<div class="l-box-header">
				<h2 class="l-box-title">
					<span>${aboutus.staticName}</span>
				</h2>

			</div>
			<div class="l-box-body l-spaced">
				<textarea id="summernote" name="summernote">${aboutus.description}</textarea>


				<button type="submit" class="btn btn-dark btn-block btn-login">Save/Update</button>
			</div>
		</div>
	</form>
	<br>
	<br>
</t:template>
