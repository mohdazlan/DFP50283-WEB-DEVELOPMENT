<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Student Contact</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Student Id</th>
			<th>Full Name</th>
			<th>Phone Number</th>
			<th>Current Address</th>
		</tr>
		<%
		String DB_URL="jdbc:mysql://localhost:3306/spmp_db";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(DB_URL, "root", "");
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM pmu_students");
		ResultSet rs = ps.executeQuery();
		while (rs.next()){
		%>
		<tr>
		<td><%= rs.getString("student_id") %></td>
		<td><%= rs.getString("full_name") %></td>
		<td><%= rs.getString("phone_number") %></td>
		<td><%= rs.getString("current_address") %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>