<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<select name="foodTypeId" onchange="getFoodID(this.value)">
	<option label="Select FoodType" />
	<c:forEach items="${FoodType}" var="list">
		<option value="${list.foodTypeId}" label="${list.foodTypeName}" />
	</c:forEach>
</select>
