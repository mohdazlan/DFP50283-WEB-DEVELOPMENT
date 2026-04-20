<%@page import="java.sql.PreparedStatement"%>
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
<body>
<%
String student_id = request.getParameter("studentid");
String full_name = request.getParameter("fullname");
String phone = request.getParameter("phonenumber");
String address = request.getParameter("address");

String DB_URL="jdbc:mysql://localhost:3306/spmp_db";
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection(DB_URL,"root","");
PreparedStatement pst = conn.prepareStatement("INSERT INTO pmu_students VALUES(?,?,?,?)");
pst.setString(1, student_id);
pst.setString(2, full_name);
pst.setString(3, phone);
pst.setString(4, address);

int rows = pst.executeUpdate();

if(rows > 0){
	response.sendRedirect("processUpdate.jsp");
} else {
	out.print("gagal");
}
%>
</body>
</html>