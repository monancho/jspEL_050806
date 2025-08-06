<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
    <%@page import="com.monancho.exer.CartDto" %>
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
		
		<%
			int num02 = 1;
			List<CartDto> cartList = new ArrayList<CartDto>();
			cartList = (ArrayList<CartDto>) session.getAttribute("cart"); 
			request.setAttribute("cartList", cartList);
	
		%>
		
		
		<table>
		<thead>
			<tr>
				<th>No.</th>
				<th>상품종류</th>
				<th>색깔</th>
				<th>수량</th>			
			</tr>
		</thead>
			
		<tbody>
		
			<c:forEach	var="cartDto" items="${cartList}">
					<tr>
						<td><%=num02++%></td>
						<td>${cartDto.product}</td>
						<td>${cartDto.color}</td>
						<td>${cartDto.quantity}</td>
					</tr>
				</c:forEach>
		
		</tbody>
	</table>
</body>
</html>