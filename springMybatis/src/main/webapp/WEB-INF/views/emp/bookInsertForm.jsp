<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
<head>
		<%@include file="/WEB-INF/views/common/header.jsp"%>
		<%@include file="/WEB-INF/views/common/menu.jsp"%>
<style>

</style>
</head>
<body>
	<div style="height: 70%; width:100%; background: #8BC34A; text-align: -webkit-center;">
		<h3 style="text-align: -webkit-center;">도서등록</h3>
		<form action="bookInsert" method="post">
			<table border= "1px" style="width: 60%;" >
				<tr>
					<th>도서번호</th>
					<td><input id="bookNo" name="bookNo"></td>
				</tr>
								<tr>
					<th>도서명</th>
					<td><input id="bookName" name="bookName"></td>
				</tr>
								<tr>
					<th>도서표지</th>
					<td><input id="bookCovering" name="bookCovering" size="50"></td>
				</tr>
								<tr>
					<th>출판일자</th>
					<td><input id="bookDate" name="bookDate"></td>
				</tr>
								<tr>
					<th>금액</th>
					<td><input id="bookPrice" name="bookPrice"></td>
				</tr>
								<tr>
					<th>출판사</th>
					<td><input id="bookPublisher" name="bookPublisher"></td>
				</tr>
								<tr>
					<th>도서소개</th>
					<td><input id="bookInfo" name="bookInfo" ></td>
				</tr>			
			</table>
			<div>
			<span><button type="submit">등록</button><button>조회</button></span>
			</div>
		</form>
	</div>
</body>


	<div>
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
	</div>