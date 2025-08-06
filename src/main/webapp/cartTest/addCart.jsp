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
	int quantity = Integer.valueOf(request.getParameter("quantity"));

	
	if (cartList == null) { 
		cartList = new ArrayList<CartDto>(); 
	}
	
	if (quantity > 0) {
	cartList.add(new CartDto( product, color, quantity));
	session.setAttribute("cart", cartList);
	
	} else { 
		
		System.out.println("1보다 작은 숫자는 입력 불가능");

	}
	response.sendRedirect("productList.jsp");
	%>
	
	

</body>
</html>