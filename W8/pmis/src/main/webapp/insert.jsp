<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmis", "root", "");
Statement stmt = con.createStatement();
ResultSet rsHasil = stmt.executeQuery("SELECT * FROM pmis.roles;");
%>
<body>
	<h2>PMIS | Insert User</h2>
	<form action="insertProcess.jsp" method="post">
		<label>Username:</label> <input type="text" name="username" required /><br />
		<label>Password:</label> <input type="password" name="password"
			required /><br /> <label>Role:</label>
		
		<select name="role_id">
			<%
			while (rsHasil.next()) {
			%>
			<option value=" <%=rsHasil.getInt("id")%> ">

				<%=rsHasil.getString("name")%>
			</option>
			<%
			}
			%>
		</select><br /> <input type="submit" value="Add User" />
	</form>
	<a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>