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
	<h2>[자바 사용]</h2>
	<%
		if(10>5) {
	%>
		<h1>10은 5보다 크다</h1>
	<%
		} else {
	%>
		<h1>10은 5보다 작다</h1>
	<%
		}
	%>
	
	
	<% 
	int score = 85;
	String result;
	if (score >= 90) {
		result= "수!";
	} else if (score >= 80) {
		result= "우!";
	} else if (score >= 70) {
		result= "미!";
	} else if (score >= 60){
		result= "양!";
	} else {
		result= "가!";
	}
	%>
	
	<h1><%= result %></h1>
	
	<hr>
	<h2>[JSTL 사용]</h2>
	<!-- jstl if문 -->
	<c:if test="${10>5}">
		<h1>10은 5보다 크다</h1>
	</c:if>
	
	<!-- jstl if else 문 -->
	<c:choose>
		<c:when test="${10>5}">
			<h1>10은 5보다 크다</h1>
		</c:when>
		<c:otherwise>
			<h1>10은 5보다 작다</h1>
		</c:otherwise>
	</c:choose>
	
	
	<c:set var="scr" value="86"/>
	
	<c:choose>
		<c:when test="${scr>=90}">
			<h1>수!</h1>
		</c:when>
		<c:when test="${scr>=80}">
			<h1>우!</h1>
		</c:when>
		<c:when test="${scr>=70}">
			<h1>미!</h1>
		</c:when>
		<c:when test="${scr>=60}">
			<h1>양!</h1>
		</c:when>
		<c:otherwise>		
			<h1>수!</h1>
		</c:otherwise>
	</c:choose>
</body>
</html>