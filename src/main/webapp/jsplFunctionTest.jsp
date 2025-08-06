<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String str = "Korea";
		
		out.println("문자열 str 길이 : " + str.length());
	%>
	
	<c:set var="str1" value="korea"/>
	<h2>문자열 길이 ${fn:length(str1)}</h2>
	<c:set var="strArr" value = "${['kor','jap','china']}"/>
	<h2>문자열의 길이 : ${fn:length(strArr)}</h2>
	<hr>
	<h2>대문자로 변환 : ${fn:toUpperCase(str1)}</h2>
	<h2>소문자로 변환 : ${fn:toLowerCase(str1)}</h2>
	<hr>
	<c:set var="str2" value="I Love You!!"/>
	<h2>앞 1글자 추출 : ${fn:substring(str2, 0 ,1) }</h2>
	<h2>중간 4글자 추출 : ${fn:substring(str2, 2 ,6) }</h2>
	<h2>뒤 5글자 추출 : ${fn:substring(str2, 7 ,12) }</h2>
</body>
</html>