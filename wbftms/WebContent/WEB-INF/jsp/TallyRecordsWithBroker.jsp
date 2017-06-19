
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>

<t:template>
	<script type="text/javascript">
		function getID(f) {
			window.location
					.assign("${pageContext.request.contextPath}/TallyLogin.bnu?userId=${userId}&BrokerId="
							+ f);
		}
	</script>
	<div class="row-fluid">
		<div class="span5">
			<div class="box paint color_2">
				<div class="title">
					<h4>
						<i class="icon-calendar"></i> <span>Record Tallying</span>
					</h4>
				</div>
				<div class="content">
					<spring:form class="bs-docs-example form-horizontal"
						action="${pageContext.request.contextPath}/BrokerLogin.bnu"
						modelAttribute="accountHead">
						<spring:hidden path="userId" value="${userId}" />
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Brokers</label>
							<div class="controls span9 input-append">
								<spring:select id="userId" path="userId"
									onchange='getID(this.value)'>
									<option label="Select Broker" />
									<c:forEach items="${BrokerList}" var="list">
										<option value="${list.userId}" label="${list.userName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">
								Account</label>
							<div class="controls span9 input-append">
								<spring:select id="AccountName" path="accountHeadId">
									<option label="Select Account Name" />
									<c:forEach items="${AccountList}" var="list">
										<option value="${list.accountHeadId}"
											label="${list.accountName}" />
									</c:forEach>
								</spring:select>
							</div>
						</div>
						<div class="control-group row-fluid">
							<label class="control-label span3" for="inputPassword">Password</label>
							<div class="controls span9 input-append">
								<spring:input path="accountPassword" />
								<span class="add-on"><i class="icon-lock"></i></span>
							</div>
						</div>

						<div class="control-group row-fluid">
							<div class="span3"></div>
							<div class="controls span5">
								<button type="submit" class="btn btn-primary">Sign in</button>
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