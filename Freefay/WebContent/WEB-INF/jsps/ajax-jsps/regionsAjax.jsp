<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<select name="regionsId" id="regionsId" onchange='getCities(this.value)'>
	<option label="Select Provice/State" />
	<c:forEach items="${regions}" var="list">
		<option value="${list.code}-${list.id}" label="${list.name}" />
	</c:forEach>
</select>