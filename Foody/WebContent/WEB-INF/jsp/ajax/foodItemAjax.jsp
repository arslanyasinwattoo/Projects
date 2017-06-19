<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<select name="foodItemId" onchange='getFoodIDthis.value)'>
	<option label="Select FoodItem" />
	<c:forEach items="${FoodItem}" var="list">
		<option value="${list.foodItemsId}" label="${list.foodItemsName}" />
	</c:forEach>
</select>
