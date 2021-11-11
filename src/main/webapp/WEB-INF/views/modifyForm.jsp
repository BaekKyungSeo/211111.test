<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyForm.jsp</title>
</head>
<body>
	<h2>회원 정보 수정</h2>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1" bgcolor="pink">
		<form action="modify" method="post">
		<input type="hidden" name="sId" values="${modifyForm.sId }">
			<tr>
				<td>이름</td>
				<td>${modifyForm.sName }</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="sPhone" size="20" value="${modifyForm.sPhone }"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="sAddr" size="50" value="${modifyForm.sAddr }"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;<a href="list">회원목록</a></td>
			</tr>
		</form>
	</table>
</body>
</html>