<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<%@ include file = "menu.jsp" %>
	<!-- 
		로그인 페이지를 작성해주세요.
		username, password 를 입력받고 로그인 할 수 있도록 해주세요.
	 -->
	 <div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">로그인</h1>
		</div>
	</div>
	<div class = "container" align = "center">
		<div class = "col-md-4 col-md-offset-4">
			<h3 class = "form-signin-heading">Please Sign in</h3>
	 
			<%
				String error =request.getParameter("error");
				if(error != null){
					out.println("<div class = 'alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요!");
					out.println("</div>");
				}
			%>
		<form class = "form-signin" action = "j_security_check" method = "post">
				<div class = "form-group">
					<label for = "inputUserName" class = "sr-only">User Name</label>
					<input type = "text" class = "form-control" placeholder = "ID" name = "j_username" required = "required" autofocus = "autofocus">
				</div>
				<div class = "form-group">
					<label for = "inputPassword" class = "sr-only">Password</label>
					<input type = "password" class = "form-control" placeholder = "PW" name = "j_password" required = "required">
				</div>
				<button class = "btn btn-lg btn-success btn-block" type = "submit">로그인</button>
			</form>
				</div>
	</div>
</body>
<%@ include file = "footer.jsp" %>
</html>