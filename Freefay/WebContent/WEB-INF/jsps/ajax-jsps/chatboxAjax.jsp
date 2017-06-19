<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>

<c:forEach items="${heads}" var="loc">
	<tr>
		<td>${loc.typeId}</td>
		<td>${loc.subject}</td>
		<td>${loc.usersByFkMessageHeadsUsers1.id.username}</td>
		<td>${loc.date}</td>
		<td>${loc.time}</td>
		<td><a
			href="${pageContext.request.contextPath}/user/readMessage.io?id=${loc.messageHeadsId}">Open</a></td>
		<td>${loc.status}</td>
	</tr>
</c:forEach>
