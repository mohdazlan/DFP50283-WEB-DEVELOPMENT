<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HRDF | Top Secret</title>
</head>
<body>
Very Secret

<%if (request.isUserInRole("admin")){ %>
Admin a secret
<%} %>

<%if (request.isUserInRole("user")){ %>
Nothing Here
<%} %>
</body>
</html>