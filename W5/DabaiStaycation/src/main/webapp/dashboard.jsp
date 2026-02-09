<%
if (session.getAttribute("namaPengguna")==null){
	response.sendRedirect("login.jsp");
}
String pengguna = (String) session.getAttribute("namaPengguna");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dabai Staycation| Dashboard</title>
</head>
<body>
<nav style="display: flex; flex-direction: column; width: 200px; ">
  <a href="index.jsp" style=" text-decoration: none; color: white; background-color: #333;">Home</a>
  <a href="login.jsp" style=" text-decoration: none; color: white; background-color: #333; ">Login</a>
  <a href="#about" style=" text-decoration: none; color: white; background-color: #333;">About</a>
</nav>
<h2>Welcome to DabaiStaycation, <%=pengguna %></h2>
<h3>This is a dashboard</h3>
</body>
</html>