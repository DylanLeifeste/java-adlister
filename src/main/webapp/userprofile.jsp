<%--
  Created by IntelliJ IDEA.
  User: dylan
  Date: 7/14/20
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
<h1>hi, <%= request.getParameter("username")%> This is your Profile:</h1>
<p>
    <%@include file="partials/aboutme.jsp"%>
</p>
</body>
</html>
