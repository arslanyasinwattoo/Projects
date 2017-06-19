
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>

<t:template>
	<c:choose>
		<c:when test="${Status==0}">
			<div class="content">
				<div class="row-fluid">
					<div
						class="row-fluid box color_6 title_medium height_medium2 bar_stats paint_hover ">
						<div class="title hidden-phone">
							<div class="content row-fluid fluid numbers">
								<div class="span3 stats hidden-phone">
									<div id="placeholder3"
										style="width: 100%; height: 65px; margin-top: 7px"></div>
								</div>

								UserName or Password incorrect!! or user is blocked

								<!-- End .row-fluid -->
							</div>
						</div>
					</div>
				</div>
			</div>

		</c:when>
	</c:choose>
	<div class="row-fluid">
		<div class="span5" style="position: relative; left: 50%;">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class="icon-calendar"></i> <span>Login form</span>
					</h4>
				</div>
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/doLogin.bnu"
						modelAttribute="user">

						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								username</label>
							<div class="controls span9 input-append">
								<spring:input path="userName" />

								<span class="add-on"><i class="icon-user"></i></span>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">Password</label>
							<div class="controls span9 input-append">
								<spring:input path="userPassword" />
								<span class="add-on"><i class="icon-lock"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<div class="span3"></div>
							<div class="controls span5">
								<button type="submit" class="btn btn-primary">Sign in</button>
								<h4></h4>
								<h3 class="control-label span3">
									<a href="${pageContext.request.contextPath}/Register.bnu"
										style="color: white;"><u>Register</u></a>
								</h3>
							</div>
						</div>
					</spring:form>
				</div>
			</div>
			<!-- End .box -->
		</div>
		<!-- End .span4 -->
	</div>
	<!-- End .row-fluid -->
</t:template>