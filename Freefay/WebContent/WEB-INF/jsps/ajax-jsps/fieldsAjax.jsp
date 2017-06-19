<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<select name="fieldsId" id="fieldsId">
	<option label="Select Field" />
	<c:forEach items="${fields}" var="list">
		<option value="${list.fieldsId}" label="${list.fieldName}" />
	</c:forEach>
</select>