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
ID:<input type="text" value=<%=uID %>><br>Username:<input type="text" value=<%=uName %>>
<br>Role:<input type="text" value=<%=uRoleID %>>
<select>
 <% 
 String roleSQL = "SELECT * FROM roles";
 PreparedStatement rolePS = con.prepareStatement(roleSQL);
 ResultSet roleRS = rolePS.executeQuery();
 while(roleRS.next()){
	 int roleID = roleRS.getInt("id");
	 String roleName = roleRS.getString("name");
	 String isSelected = "";
	 if(roleID == uRoleID) {
		 isSelected = "selected";
	 }
 %>
  <option value="<%= roleID %>" <%= isSelected %>>
  <%=roleName %>
  </option>
 <%} %>
</select>
<br><input type="submit" value="kemaskini">
</form>
</body>
</html>