<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Data</title>
</head>
<body>
<form action="insert.jsp" method="post">
student id <input type="text" name="studentid" required><br>
full name <input  type="text" name="fullname"  required><br>
Phone number <input type="number" name="phonenumber"  required><br>
Current Address <input  type="text" name="address"  required><br>
<input type="submit" value="Enter">
</form>
</body>
</html>