<%--
  Created by IntelliJ IDEA.
  User: dylan
  Date: 7/14/20
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Do's</title>
</head>
<body>
<h1>Here Are your To Do's</h1>
<p><%= request.getParameter("item")%></p>
</body>
</html>
