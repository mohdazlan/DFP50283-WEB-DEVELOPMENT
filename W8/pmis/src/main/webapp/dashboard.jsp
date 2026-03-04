<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PMIS | Dashboard</title>
</head>
<body>
<% 
String namapengguna = (String) session.getAttribute("namapengguna"); 
String perananpengguna = (String) session.getAttribute("peranan"); 

%>

<h2>Dashboard</h2>
Selamat datang :: <%= namapengguna %> (<%= perananpengguna %>)<br>
 Tarikh Akhir Login Pada :: <%= new SimpleDateFormat("dd MMMM yyyy").format(new Date()) %>
</body>
</html>