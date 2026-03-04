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
String namapengguna = request.getParameter("username");
String katalaluan = request.getParameter("password");
String noID = request.getParameter("role_id").trim();

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmis", "root", "");
String sql = "INSERT INTO users(username,password,role_id) VALUES (?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, namapengguna);
ps.setString(2, katalaluan);
ps.setInt(3, Integer.parseInt(noID));

ps.executeUpdate();
con.close();
response.sendRedirect("insert.jsp?msg=user+added");


%>
</body>
</html>