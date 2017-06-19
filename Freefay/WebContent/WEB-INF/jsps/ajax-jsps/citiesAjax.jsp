<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<select name="citiesId" id="citiesId">
	<option label="Select City" />
	<c:forEach items="${cities}" var="list">
		<option value="${list.citiesId}" label="${list.name}" />
	</c:forEach>
</select>