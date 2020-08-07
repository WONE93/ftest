<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 

	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<%@include file="/WEB-INF/views/common/menu.jsp"%>
		
<body>
	<div style="height: 70%; width:100%; background: #8BC34A; text-align: -webkit-center;">
		<h3 style="text-align: -webkit-center;">도서 조회/수정</h3>
			<table border= "1px" style="width: 60%;" >
				<tr>
					<th>도서번호</th>
					<th>도서명</th>
					<th>대여총계</th>
					<th>대여횟수</th>
				</tr>
			<c:forEach items="${checkList}" var="list"> 
				<tr>
					<td>${list.bookNo}</td>
					<td>${list.bookName}</td>
					<td>${list.rentPrice}</td>
					<td>${list.rentStatus}</td>
				</tr>		
			</c:forEach>
			</table>
	</div>
</body>


	<div>
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
	</div>