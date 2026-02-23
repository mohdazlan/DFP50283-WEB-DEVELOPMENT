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
String error = request.getParameter("error");
if(error!= null){
%>
<p>Invalid login</p>
<%} %>
<form action="processLogin.jsp" method="post">
    <label>Username:</label>
    <input type="text" name="username" required /><br/><br/>
    <label>Password:</label>
    <input type="password" name="password" required /><br/><br/>
    <button type="submit">Login</button>
  </form>
</body>
</html>