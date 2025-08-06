<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- -java for문 -->
	<%
		for(int i=0; i<10;i+=2) {
			out.println(i + "<br>");
		}
	%>
	<br>
	<%
	
		for(int i = 0; i <5;i++) {
			out.println("안녕하세요<br>");
		}
	%>
	<br>
	<%
		String[] strs = {"이순신","김유신","강감찬"};
		request.setAttribute("strs", strs);
			for(String str : strs) {
				out.println(str+"<br>");
			}
	%>
	<hr>
	
	<!-- -jstl for문 -->
	
	<c:forEach var="i" begin="0" end="9" step="2">
		<h1>${i}</h1>
	</c:forEach>
	<br>
	<c:forEach var="i" begin="0" end="4">
		안녕하세요<br>
	</c:forEach>
	<br>
	<c:forEach var="str" items="${strs}">
		<h1>${str}</h1>
	
	</c:forEach>
</body>
</html>