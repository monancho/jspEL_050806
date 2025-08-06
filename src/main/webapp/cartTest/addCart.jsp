<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.monancho.exer.CartDto" %>
     <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<CartDto> cartList = (ArrayList<CartDto>) session.getAttribute("cart");

	 int number = 1;
	String product = request.getParameter("product");
	String color = request.getParameter("color");
	String quantity = request.getParameter("quantity");

	
	if (cartList == null) { 
		cartList = new ArrayList<CartDto>(); 
	}

	cartList.add(new CartDto(number++, product, color, quantity));
	session.setAttribute("cart", cartList);
	
	response.sendRedirect("productList.jsp");
	
	%>
	
	

</body>
</html>