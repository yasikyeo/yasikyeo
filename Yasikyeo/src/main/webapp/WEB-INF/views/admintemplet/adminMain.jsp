<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<script type="text/javascript" src="<c:url value='/js/member.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#adminId").focus();
		
		$("#frm").submit(function(){
			if($("#adminId").val().length<1){
				alert("아이디를 입력하세요");
				$("#adminId").focus();
				return false;
			}else if($("#adminPwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#adminPwd").focus();
				return false;
			}
		});
	});
	
</script>

<div class="container" id="categoryMemberManage">
		<nav>
				<dl class="leftNavi">
				
				</dl>
				
 			</nav>
 			
 			<section class="contents">
					<article class="centerCon">
					<div class="loginForm">
						<form name="frm" id="frm" method="post" action="<c:url value='/admintemplet/adminMain.do'/>">
						<fieldset>
							<legend>관리자 로그인</legend>
							<div class="align_left">
								<label for="adminId" class="label">아이디</label>
								<input type="text" name="adminId" id="adminId"
								value="${cookie.admin_ck_userid.value}">
							</div>
							<div class="align_left">
								<label for="adminPwd" class="label">페스워드</label>
								<input type="password" name="adminPwd" id="adminPwd">
							</div>
							<div class="align_center">
								<label for="chkSave">아이디 저장</label>
								<input type="checkbox" value="checked" name="chkSave" id="chkSave"
									<c:if test="${!empty cookie.admin_ck_userid}">
										checked
									</c:if>>
							</div>
							<div class="align_center">
									<input type="submit" value="로그인">
							</div>
						</fieldset>
						</form>
						</div>
					</article>
			</section>
 			
 		</div>