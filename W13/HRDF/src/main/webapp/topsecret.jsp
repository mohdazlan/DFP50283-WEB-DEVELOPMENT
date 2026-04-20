<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HRDF | Top Secret</title>
</head>
<body>
<h1>Good day <%= request.getRemoteUser() %></h1>

<%if (request.isUserInRole("admin")){ %>
Admin a secret
<%} %>

<%if (request.isUserInRole("user")){ %>
Nothing Here
<%} %>

<p><a href="logout.jsp">Log Out</a></p>
</body>
</html>