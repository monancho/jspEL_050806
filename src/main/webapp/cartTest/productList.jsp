<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<h2> 장바구니에 넣을 상품을 선택하세여.</h2>
	<hr>
	<form action="addCart.jsp">
	상품종류 :
		<select name="product">
			<option value="갤럭시울트라25">갤럭시울트라25</option>
			<option value="갤럭시워치8">갤럭시워치8</option>
			<option value="아이패드">아이패드</option>
			<option value="노트북">노트북</option>
		</select>
		<br>
		상품색깔 : <select name="color">
			<option value="노랑">노랑</option>
			<option value="검정">검정</option>
			<option value="회색">회색</option>
		</select><br>
		상품수량 : <input type="text" name="quantity" size="3" value="1"><br>
		<input type="submit" value="장바구니에 딤기">
	</form>
	<a href="removeCart.jsp">장바구니 비우기</a>
	<hr>
	<jsp:include page="viewCart.jsp"></jsp:include>
</body>
</html>