<%@page import="com.monancho.exer.BoardDto" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

/* 행 hover 시 강조 효과 (선택 사항) */
tbody tr:hover {
  background-color: #f9f9f9;
}


</style>
<title>Insert title here</title>
</head>
<body>
	<!-- 자유게시판 -->
	
	<%
		int number = 1;
		
		//게시판 더미(dummy) 데이터
		
		List<BoardDto> boardList = new ArrayList<BoardDto>();
		// 게시글(boardDto)를 여러개 담을 ArrayList 선언
		
		boardList.add(new BoardDto(number++, "공지사항", "관리자", "2025-07-21"));
		boardList.add(new BoardDto(number++, "날씨가 비와요.", "김유신", "2025-08-02"));
		boardList.add(new BoardDto(number++, "비 진짜 많이 와요.", "이순신", "2025-08-02"));
		boardList.add(new BoardDto(number++, "게시판 여기 망했나요?", "김유신", "2025-08-04"));
		boardList.add(new BoardDto(number++, "그런듯", "이순신", "2025-08-05"));
		
		request.setAttribute("boardList", boardList);
		
	%>
	
	<h2>자유 게시판 목록</h2>
	<hr>
	<table>
		<thead>
			<tr>
				<th>No.</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach	var="boardDto" items="${boardList}">
				<tr>
					<td>${boardDto.bnum}</td>
					<td>${boardDto.btitle}</td>
					<td>${boardDto.bwriter}</td>
					<td>${boardDto.bdate}</td>
				</tr>
			</c:forEach>
		</tbody>
	
	</table>

</body>
</html>