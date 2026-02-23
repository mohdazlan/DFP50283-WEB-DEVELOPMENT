<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//String user = request.getParameter("user");
//if(user == null || user == ""){
//	user = "Guest";
//}

String name = (String) session.getAttribute("name");
%>

<%= name %>
<a href="index.jsp">Laman Utama</a>
</body>
</html>