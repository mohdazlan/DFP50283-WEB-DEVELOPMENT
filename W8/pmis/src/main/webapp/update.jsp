<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String idString = request.getParameter("id");
String usernameString = request.getParameter("username");
String roleString = request.getParameter("role_id");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmis", "root", "");
String SQL = "UPDATE users SET username=?,role_id=? WHERE id=?";

PreparedStatement ps = con.prepareStatement(SQL);
ps.setString(1, usernameString);
ps.setInt(2, Integer.parseInt(roleString));
ps.setInt(3, Integer.parseInt(idString));

ps.executeUpdate();
con.close();
response.sendRedirect("delete.jsp");
%>
</body>
</html>