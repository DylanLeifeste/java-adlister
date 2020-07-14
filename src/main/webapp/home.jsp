<%--
  Created by IntelliJ IDEA.
  User: dylan
  Date: 7/14/20
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String firstname = "Dylan"; %>
<% String lastname = "Leifeste"; %>


<html>
<head>
    <title>Home Page</title>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
    <h1>Hello, <%= firstname + " " + lastname%> </h1>
<div></div>
<%@include file="partials/aboutme.jsp"%>
<hr>
<%@include file="partials/footer.jsp"%>
</body>
</html>
