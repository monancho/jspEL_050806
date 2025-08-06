<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
    <%@page import="com.monancho.exer.CartDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<style type="text/css">
	/* 테이블 전체 스타일 */
table {
  width: 100%;
  border-collapse: collapse;
  font-size: 14px;
  color: #333;

}

/* 헤더 스타일 */
thead {
  background-color: #f5f5f5;
  font-weight: bold;
  text-align: left;
}

thead th {
  padding: 12px 10px;
  border-bottom: 2px solid #ccc;
}

/* 바디 셀 스타일 */
tbody td {
  padding: 10px;
  border-bottom: 1px solid #e0e0e0;
  vertical-align: top;
}

/* 마지막 행 구분 제거 (선택) */
tbody tr:last-child td {
  border-bottom: none;
}




</style>
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
		
			<c:forEach	var="cartDto" items="${cartList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${cartDto.product}</td>
						<td>${cartDto.color}</td>
						<td>${cartDto.quantity}</td>
					</tr>
				</c:forEach>
		
		</tbody>
	</table>
</body>
</html>