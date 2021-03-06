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

<h3><spring:message code="label.updatecontact" /></h3>

<c:forEach items="${users}" var="user">
<form:form method="post" commandName="user">

  <form:hidden path="id" value="${user.id}" />

  <table>
    <tr>
      <td><form:label path="firstname">
        <spring:message code="label.firstname" />
      </form:label></td>
      <td>
        <form:input path="firstname" value="${user.firstname}" />
      </td>
    </tr>
    <tr>
      <td><form:label path="lastname">
        <spring:message code="label.lastname" />
      </form:label></td>
      <td><form:input path="lastname" value="${user.lastname}" /></td>
    </tr>
    <tr>
      <td><form:label path="email">
        <spring:message code="label.email" />
      </form:label></td>
      <td><form:input path="email" value="${user.email}" /></td>
    </tr>
    <tr>
      <td><form:label path="telephone">
        <spring:message code="label.telephone" />
      </form:label></td>
      <td><form:input path="telephone" value="${user.telephone}" /></td>
    </tr>
    <tr>
      <td colspan="2"><input class="button" type="submit"
                             value="<spring:message code="label.update"/>" /></td>
    </tr>
  </table>
</form:form>
</c:forEach>

</div>

</body>
</html>
