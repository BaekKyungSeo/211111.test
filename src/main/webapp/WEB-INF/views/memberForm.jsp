<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="JavaScript" src="validation.js" charset="UTF-8"></script>
</head>
<body>
	<h2>회원 추가</h2>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1" bgcolor="pink">
		<form action="member" method="post" name="fr">
			<tr>
				<td>이름</td>
				<td><input type="text" name="sName" size="10"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="sPhone" size="20"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="sAddr" size="50"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="확인" onclick="check()">&nbsp;&nbsp;<a href="list">회원목록</a></td>
			</tr>
		</form>
	</table>
</body>
</html>