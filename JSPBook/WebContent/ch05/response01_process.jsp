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
		request.setCharacterEncoding("UTF-8");
	
		String mem_id = request.getParameter("id");
		String mem_pw = request.getParameter("pw");
		if(mem_id.equals("관리자") && mem_pw.equals("1234")){
			response.sendRedirect("response01_success.jsp");
		}else{
			response.sendRedirect("response01_failed.jsp");
		}
	%>
</body>
</html>