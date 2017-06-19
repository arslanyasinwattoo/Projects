<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>


<t:template>
	<div>
		<div class="row-fluid">

			<div class="span5" style="position: relative; left: 50%;">
				<div class="box paint color_2">
					<div class="title">
						<h4>
							<i class="icon-calendar"></i> <span>Registration form</span>
						</h4>
					</div>
					<div class="content">
						<spring:form class="bs-docs-example form-horizontal"
							action="${pageContext.request.contextPath}/Registeration.bnu"
							modelAttribute="user">

							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									Firstname</label>
								<div class="controls span9 input-append">
									<spring:input path="userFirstname" />
									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									Lastname</label>
								<div class="controls span9 input-append">
									<spring:input path="userLastname" />

									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									Address</label>
								<div class="controls span9 input-append">
									<spring:input path="userAddress" />
									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									City</label>
								<div class="controls span9 input-append">
									<spring:input path="userCity" />
									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									ContactNo</label>
								<div class="controls span9 input-append">
									<spring:input path="userContactNo" />
									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									Email</label>
								<div class="controls span9 input-append">
									<spring:input path="userEmail" />
									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									UserName</label>
								<div class="controls span9 input-append">
									<spring:input path="userName" />
									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									Password</label>
								<div class="controls span9 input-append">
									<spring:input path="userPassword" />
									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									Organization\shopName</label>
								<div class="controls span9 input-append">
									<spring:input path="userOrganizationname" />
									<span class="add-on"><i class="icon-user"></i></span>
								</div>
							</div>
							<div class="control-group row-fluid">
								<label class="control-label span3" for="inputPassword">
									Role</label>
								<div class="controls span9 input-append">
									<spring:select id="userRole" path="userRole">

										<option value="Admin" label="Admin" />
										<option value="Broker" label="Broker" />
										<option value="LandLord" label="LandLord" />

									</spring:select>

								</div>
							</div>
							<div class="control-group row-fluid">
								<div class="span3"></div>
								<div class="controls span5">
									<button type="submit" class="btn btn-primary">Register</button>

								</div>
							</div>
						</spring:form>
					</div>
				</div>
				<!-- End .box -->
			</div>
			<!-- End .span4 -->

			<!-- End .row-fluid -->


		</div>



	</div>
</t:template>