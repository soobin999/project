<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<style>
	h1 {
	
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 40px;
	
	}
		
	</style>
</head>
<body>
	<h1>관리자 로그인</h1>
		<form action="/admin" class="contact-form" method="post" style="text-align:center;">
			아이디: <input type="text" name="managerID"><br>
			암　호: <input type="password" name="managerPW"><br>
				<button type="submit">Login</button>
</form>
</body>
</html>