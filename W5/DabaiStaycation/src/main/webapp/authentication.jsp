<%
String username;
String password;

username = request.getParameter("nama");
password = request.getParameter("katalaluan");

String errorMsg = "";

if("root".equals(username) && "root123".equals(password)){
	response.sendRedirect("dashboard.jsp");
} else {
errorMsg = "Wrong Username and Password";	
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dabai Staycation| Auth</title>
</head>
<body>
<% if(errorMsg!=""){ %>
 <p><%=errorMsg %></p>
<% }%>
<a href="login.jsp">Try Again</a>
</body>
</html>