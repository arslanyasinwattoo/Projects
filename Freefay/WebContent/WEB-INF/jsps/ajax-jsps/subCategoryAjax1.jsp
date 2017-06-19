<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<select name="subCategoryId" id="subCategoryId"
	onchange='getFields(this.value)'>
	<option label="Select SubCategory" />
	<c:forEach items="${subCategory}" var="list">
		<option value="${list.subCategoryId}" label="${list.subCategoryName}" />
	</c:forEach>
</select>