<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Register</h3>
					</div>
					<div class="panel-body">
						<form role="form"
							action="${pageContext.request.contextPath}/DoRegister.Inn"
							method="Post">
							<fieldset>

								<div class="form-group">
									<input class="form-control" placeholder="userName"
										name="userName" type="" value="">
								</div>

								<div class="form-group">
									<input class="form-control" placeholder="FirstName"
										name="FirstName" type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="LastName"
										name="LastName" type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="E-mail" name="Email"
										type="email" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name="Password" type="password" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Cnic No" name="Cnic"
										type="" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="ContactNo"
										name="ContactNo" type="" value="">
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<input type="submit" class="btn btn-lg btn-primary btn-block"
									value="Register">
							</fieldset>
						</form>
						<c:choose>
							<c:when test="${Status=='0'}">

								<div class="alert alert-danger">Operation failed Try
									again!!</div>
							</c:when>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
</t:template>