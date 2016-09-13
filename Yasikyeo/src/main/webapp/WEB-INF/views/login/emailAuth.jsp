<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${authNum}</title>
<script type="text/javascript">
	function check(){
		var form = document.authenform;
		var authNum = ${authNum};
				
		if(!form.authnum.value){
			alert("인증번호를 입력하세요");
			return false;
		}
		if(form.authnum.value!=authNum){
			alert("틀린 인증번호입니다. 인증번호를 다시 입력해주세요")
			form.authnum.value="";
			return false;
		}
		if(form.authnum.value==authNum){
			alert("인증완료");
			opener.document.getElementById("authNum").value="인증완료";
			self.close();
		}
	}
</script>
</head>
<body>
	<h5>인증 번호 7자리를 입력하세요</h5>
	<div>
		<form method="post" name="authenform" onsubmit="return check()">
			<input type="text" id="authnum"><br/><br/>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>