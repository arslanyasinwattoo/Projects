
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<c:forEach items="${heads}" var="loc">
	<c:choose>
		<c:when test="${(users.id.username!=loc.users.id.username)}">
			<div class="l-row">

				<div class="l-col-md-6">
					<div class="l-box l-box-primary l-spaced-bottom">
						<div class="l-box-header">
							<div class="l-box-title">${loc.messageHeads.type}-Id-${loc.messageHeads.typeId}
								:- ${loc.messageHeads.subject}</div>
						</div>
						<div class="l-box-body l-spaced">${loc.messageText}</div>
						<div class="l-box-footer">
							<div class="l-box-title">${loc.date} -:- ${loc.time}</div>
						</div>
					</div>
				</div>

			</div>
		</c:when>
		<c:when test="${(users.id.username==loc.users.id.username)}">
			<div class="l-row">
				<div class="l-col-md-6" style="float: right;">
					<div class="panel panel-success">
						<div class="panel-heading">
							<div class="panel-title">${loc.messageHeads.type}-Id-${loc.messageHeads.typeId}
								:- ${loc.messageHeads.subject}</div>
						</div>
						<div class="panel-body">${loc.messageText}</div>
						<div class="panel-footer">
							<div class="panel-title">${loc.date} -:- ${loc.time}</div>
						</div>
					</div>
				</div>
			</div>

		</c:when>
	</c:choose>

</c:forEach>