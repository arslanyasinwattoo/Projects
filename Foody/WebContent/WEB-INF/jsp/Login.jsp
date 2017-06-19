<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<t:template>
	<div class="open-daily yo-anim yo-anim-fade"
		data-animation-delay="1000">
		<section id="contact" class="section-scroll main-section">
			<header class="section-header">
				<h2></h2>
			</header>
			<header class="section-header">
				<h2></h2>
			</header>
			<!-- 	<section id="contact" class="section-scroll main-section"> -->
			<header class="section-header">
				<h2>FYP Project Website</h2>
			</header>
			<div class="contact-content container section-padding">
				<div class="row">
					<div class="col-xs-12 col-md-7">
						<h3>Login</h3>
						<spring:form
							action="${pageContext.request.contextPath}/doLogin.bnu"
							method="POST" modelAttribute="user">
							<div class="col-md-6">
								<div class="form-group">
									<spring:input path="userName" type="text"
										class="form-control contact-form " placeholder="Name" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<spring:input path="userPassword" type="Password"
										class="form-control contact-form " placeholder="Password" />
								</div>

							</div>

							<div class="col-md-6">
								<div class="form-group text-right button-submit btn-submit">
									<button type="submit" class="btn btn-dark button-send">Login</button>
									<div class="message-success alert-success alert hidden">
										<i class="fa fa-check"></i>
									</div>
								</div>
							</div>
						</spring:form>
					</div>
				</div>
			</div>
		</section>
	</div>

</t:template>