<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - SecurePortal</title>
</head>
<body>
	<h2>Company Internal Portal</h2>
	<h3>Please Log In</h3>
	<form method="POST" action="j_security_check">
		<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="j_username" required></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="j_password" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Log In"></td>
			</tr>
		</table>
	</form>
</body>
</html>