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
String uName="";
int uID=0, uRoleID=0;
String idParam = request.getParameter("id");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmis", "root", "");

String sql = "SELECT * FROM users WHERE id=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1, Integer.parseInt(idParam));
ResultSet rs = ps.executeQuery();

if(rs.next()){
	uID = rs.getInt("id");
	uName = rs.getString("username");
	uRoleID = rs.getInt("role_id");
}

%>
<form action="">
<input type="text" value=<%=uID %>><input type="text" value=<%=uName %>><input type="text" value=<%=uRoleID %>>
<input type="submit" value="kemaskini">
</form>
</body>
</html>