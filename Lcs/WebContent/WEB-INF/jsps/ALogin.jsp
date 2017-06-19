<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<!-- 	<h1>hello</h1> -->
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please Sign In</h3>
					</div>
					<div class="panel-body">
						<form role="form"
							action="${pageContext.request.contextPath}/DoALogin.Inn"
							method="Post">

							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="E-mail" name="Email"
										type="email" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name="Password" type="password" value="">
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">Remember Me
									</label>
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<input type="submit" class="btn btn-lg btn-primary btn-block"
									value="Login">
							</fieldset>
						</form>
					</div>
					<c:choose>
						<c:when test="${Status=='0'}">

							<div class="alert alert-danger">EmailId or Password
								Incorrect!! Try again</div>
						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</t:template>