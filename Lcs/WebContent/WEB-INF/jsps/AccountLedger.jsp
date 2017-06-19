<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Account Ledger</h3>
					</div>
					<div class="panel-body">
						<form role="form"
							action="${pageContext.request.contextPath}/ToViewLedger.Inn"
							method="Post">
							<fieldset>
								<div class="form-group">

									<select class="form-control" name="companyId">
										<option value="">Company List</option>
										<c:forEach items="${companyList}" var="account">
											<option value="${account.companyId}">${account.companyName}</option>
										</c:forEach>
									</select> <input class="form-control" name="userId" type="hidden"
										value="${userId}">
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<input type="submit" class="btn btn-lg btn-primary btn-block"
									value="View">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</t:template>