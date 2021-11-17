<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberForm</title>
<script type="text/javascript">
   function check() {
      if (fr.sName.value.length==0) {
         alert("이름을 입력해 주세요.");
         fr.sName.focus();
         return false;
      }
      else if (fr.sPhone.value.length==0) {
         alert("번호를 입력해 주세요.");
         fr.sPhone.focus();
         return false;
      }else if(fr.sAddr.value.length==0){
         alert("주소를 입력해주세요.")
         fr.sAddr.focus();
         return false;
      }
      else
          return true;
   }
</script>
</head>
<body>
   <h2>회원 추가</h2>
   
   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <form action="member" method="post" name="fr" onsubmit="return check()">
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
            <td colspan="2"><input type="submit" value="확인" onsubmit="check()">&nbsp;&nbsp;<a href="list">회원목록</a></td>
         </tr>
      </form>
   </table>
</body>
</html>