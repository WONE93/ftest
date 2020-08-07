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
					<th>표지</th>
					<th>출판일자</th>
					<th>금액</th>
					<th>출판사</th>
					<th>도서소개</th>
				</tr>
			<c:forEach items="${bookList}" var="list"> 
				<tr>
					<td>${list.bookNo}</td>
					<td>${list.bookName}</td>
					<td>${list.bookCovering}</td>
					<td>${list.bookDate}</td>
					<td>${list.bookPrice}</td>
					<td>${list.bookPublisher}</td>
					<td>${list.bookInfo}</td>
				</tr>		
			</c:forEach>
			</table>
	</div>
</body>


	<div>
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
	</div>