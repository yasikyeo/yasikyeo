<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<div class="container1" id="categoryMemberManage">
<script type="text/javascript">
	$(document).ready(function(){
		$("#wr_submit").click(function(event){
			if($("#adminName").val().length < 1){
				alert("이름을 입력하세요");
				$("#adminName").focus();
				return false;
			}else if(!validate_userid($("#adminId").val())){
				alert("아이디를 입력하세요");
				$("#adminId").focus();
				return false;
			}else if($("#adminPwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#adminPwd").focus();
				return false;
			}else if($("#adminPwd").val()!=$("#adminPwd2").val()){
				alert("비밀번호가 일치하지 않습니다.");
				$("#adminPwd2").focus();
				return false;
			}
			
		});//click
</script>
 			
 			<section class="contents">
					<article class="centerCon">
		<form id="frm1" method="post" action="<c:url value='/admintemplet/adminRegister.do'/>">
	<div class="divForm">
		<div class="firstDiv">
			<fieldset>
	<legend>관리자 등록</legend>
    <div>        
        <label for="name">관리자명</label>
        <input type="text" name="adminName" id="adminName" style="ime-mode:active">
    </div>
    <div>
        <label for="userid">관리자ID</label>
        <input type="text" name="adminId" id="adminId"
        		style="ime-mode:inactive">&nbsp;
  	</div>
    <div>
        <label for="adminPwd">비밀번호</label>
        <input type="Password" name="adminPwd" id="adminPwd">
    </div>
    <div>
        <label for="pwd2">비밀번호 확인</label>
        <input type="Password" name="adminPwd2" id="adminPwd2">
    </div>
    
    <div class="align_center">
         <input type="submit" id="wr_submit" value="등록">
    </div>
   </fieldset>
			
			
			</div>
		</div>
	</form>
					</article>
			</section>
 			
 		</div>