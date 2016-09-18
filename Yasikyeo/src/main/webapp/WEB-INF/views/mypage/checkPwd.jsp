<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 확인</title>
<head>
	<script>
		var res = "${result}";
		
		if(res=="인증완료"){
			alert("비밀번호가 일치합니다.");
			opener.document.getElementById("checkPwd").value="인증완료";
			self.close();
		}else{
			alert("비밀번호가 일치하지 않습니다.");
			self.close();
		}
	</script>
</head>
<body>
</body>
</html>