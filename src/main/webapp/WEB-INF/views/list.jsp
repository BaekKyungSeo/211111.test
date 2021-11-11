<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<h2>회원 목록</h2>

	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>주소</td>
			<td>가입일</td>
			<td>삭제</td>
		</tr>
		<c:forEach items="${list }" var="dto">
		<tr>
			<td>${dto.sId }</td>
			<td><a href="modifyForm?sId=${dto.sId}">${dto.sName }</a></td>
			<td>${dto.sPhone }</td>
			<td>${dto.sAddr }</td>
			<td>${dto.sDate }</td>
			<td><a href="delete?sId=${dto.sId }">X</a></td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="6"><a href="memberForm">회원추가</a></td>
		</tr>
	</table>
</body>
</html>