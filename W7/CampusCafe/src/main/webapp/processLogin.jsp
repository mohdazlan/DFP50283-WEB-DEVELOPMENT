<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String validUser = "root";
String passString = "pass";

String validUser2 = "student";
String passString2 = "katalaluan";

String user = request.getParameter("username");
String pass = request.getParameter("password");

if((user.equals(validUser) && pass.equals(passString)) || ((user.equals(validUser2) && pass.equals(passString2)))){
	session.setAttribute("name", user);
	response.sendRedirect("home.jsp");
} else {
	response.sendRedirect("login.jsp?error=1");
}
%>
</body>
</html>