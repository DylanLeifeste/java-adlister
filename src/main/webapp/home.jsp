<%--
  Created by IntelliJ IDEA.
  User: dylan
  Date: 7/14/20
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  %>



<%
    String firstname = "Dylan";
    String lastname = "Leifeste";
%>
<%--        if (firstname.equals("Dylan")) {--%>
<%--            response.sendRedirect("/index.jsp");--%>
<%--        }--%>

<%--%>--%>


<html>
<head>
    <title>Home Page</title>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
    <h1>Hello, <%= firstname + " " + lastname%> </h1>
<div></div>
<h3>What would you like to do?</h3>

<h3>View your profile</h3>
<form action="/userprofile.jsp" method="get">
    <input type="hidden" id="username" name="username" value="Dylan">
    <button type="submit">Go to profile</button>
</form>

<h3>Add a to do</h3>
<form action="/todo.jsp" method="post">
    <input type="text" id="item" name="item">
    <button type="submit">Add to list</button>
</form>
<%--<%@include file="partials/aboutme.jsp"%>--%>
<hr>
<%@include file="partials/footer.jsp"%>

</body>
</html>
