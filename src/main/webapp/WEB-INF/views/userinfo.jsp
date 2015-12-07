<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

  <h3><spring:message code="label.contactinfo" /></h3>

  <c:forEach items="${users}" var="user">

      <table>
        <tr>
          <td><spring:message code="label.firstname" /></td>
          <td>${user.firstname}</td>
        </tr>
        <tr>
          <td><spring:message code="label.lastname" /></td>
          <td>${user.lastname}</td>
        </tr>
        <tr>
          <td><spring:message code="label.email" /></td>
          <td>${user.email}</td>
        </tr>
        <tr>
          <td><spring:message code="label.telephone" /></td>
          <td>${user.telephone}</td>
        </tr>
      </table>

  </c:forEach>

</div>

</body>
</html>
