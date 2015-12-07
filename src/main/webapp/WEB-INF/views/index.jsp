<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /></title>
	<spring:url value="/resources/css/styles.css" var="cssStyles"/>
	<link href="${cssStyles}" rel="stylesheet"/>
</head>
<body>

<div class="content">

	<p align="right">
		<a href="<c:url value="/logout" />">
			<spring:message code="label.logout" />
		</a>
	</p>

	<h3><spring:message code="label.contacts" /></h3>
	<c:if test="${!empty users}">
		<table class="data">
			<tr>
				<th><spring:message code="label.firstname" /></th>
				<th><spring:message code="label.email" /></th>
				<th><spring:message code="label.telephone" /></th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${users}" var="user">
				<tr>
					<td><a href="user/${user.id}">${user.firstname} ${user.lastname}</a></td>
					<td>${user.email}</td>
					<td>${user.telephone}</td>
					<td><a href="update/${user.id}"><spring:message code="label.update" /></a></td>
					<td><a href="delete/${user.id}"><spring:message code="label.delete" /></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<p>
		<a class="btn" href="<c:url value="/new" />">
			<spring:message code="label.newcontact" />
		</a>
	</p>

</div>

</body>
</html>