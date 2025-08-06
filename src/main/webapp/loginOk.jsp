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
		request.setCharacterEncoding("utf-8");
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		request.setAttribute("memberPw", mpw);
		
		
		if(mid.equals("tiger")&& mpw.equals("12345")) {
			session.setAttribute("user", mid);
		}
	
	%>
	<h2>${sessionScope.user} 님 환영합니다</h2>
	<h3>입력하신 비밀번호는 ${memberPw} 입니다</h3>
</body>
</html>