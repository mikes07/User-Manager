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

	<c:if test="${empty param.error}">
		<p>&nbsp;</p>
	</c:if>
	<c:if test="${not empty param.error}">
		<p style="color: red;"> <spring:message code="label.loginerror" /></p>
	</c:if>
<form class="loginForm" method="POST" action="<c:url value="/j_spring_security_check" />">
<table>
	<tr>
		<td align="right"><spring:message code="label.login" /></td>
		<td><input class="username" type="text" name="j_username" /></td>
	</tr>
	<tr>
		<td align="right"><spring:message code="label.password" /></td>
		<td><input class="password" type="password" name="j_password" /></td>
	</tr>
	<tr>
		<td align="right"><spring:message code="label.remember" /></td>
		<td><input type="checkbox" name="_spring_security_remember_me" /></td>
	</tr>
	<tr>
		<td colspan="2" align="right"><input class="button" type="submit" value="Войти" />
		<input class="button" type="reset" value="Reset" /></td>
	</tr>
</table>
</form>

</div>

</body>
</html>