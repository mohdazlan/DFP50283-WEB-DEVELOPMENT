<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Campus Cafe | Home</title>
</head>
<body>
	<%
	String drinks[] = { "Latte", "Mocha", "Matcha", "Espresso" };
	Random rand = new Random();
	String drink = drinks[rand.nextInt(drinks.length)];
	String minuman = drinks[1];
	%>
	<%=drink%>
	<p><%=minuman%></p>
	<%
	for (int i = 0; i <= 6; i++) {
		//1. change the scripts to accomadate the loop
		//2. change so that the text will be red
	%>
	<p>Promo <%=drinks[i]%>: -- Enjoy your drink</p>
	<%
	}
	%>
</body>
</html>