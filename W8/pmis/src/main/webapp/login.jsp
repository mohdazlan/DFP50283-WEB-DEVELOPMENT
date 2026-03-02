<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String ralat = request.getParameter("error"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PMIS | Login</title>
</head>
<body>
<% if("1".equals(ralat)){ %>
<p style="color:red">Invalid username or password</p>
<% }%>
 <h2>User Login</h2>
  <form action="loginProcess.jsp" method="post">
    <label>Username:</label>
    <input type="text" name="username" required />
    <br/>
    <label>Password:</label>
    <input type="password" name="password" required />
    <br/>
    <button type="submit">Login</button>
  </form>
</body>
</html>