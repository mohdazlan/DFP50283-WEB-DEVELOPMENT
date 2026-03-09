<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
if(session.getAttribute("peranan")==null){
	response.sendRedirect("login.jsp");
	return;
}
%>
<body>
<h2>Edit User</h2>
<table>
<tr>
	<th>ID</th><th>Nama</th><th>Peranan</th>
</tr>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
%>
</table>
</body>
</html>