<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
//if (session.getAttribute("peranan") == null) {
//	response.sendRedirect("login.jsp");
//	return;
//}
%>
<body>
	<h2>Edit User</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>Nama</th>
			<th>Peranan</th>
		</tr>
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmis", "root", "");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(
				"SELECT users.id as id,username as nama,roles.name as peranan  FROM pmis.users	JOIN pmis.roles on users.role_id = roles.id;");
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("id")%></td>
			<td><%=rs.getString("nama")%></td>
			<td><%=rs.getString("peranan")%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>