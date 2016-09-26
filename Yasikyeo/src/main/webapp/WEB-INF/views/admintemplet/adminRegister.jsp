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
			}else if($("#chkId").val()!='Y'){
				alert("아이디 중복확인을 하셔야 합니다!");
				$("#btnChkId").focus();
				return false;
			}
		});
		//click
			
			$("#adminId").keyup(function(){
				//1 <= 해당 아이디가 존재하는 경우
				//2 <= 존재하지 않는 경우
				if($("#adminId").val().length>=1){
					$.ajax({
						url:"<c:url value='/admintemplet/ajaxCheckUserid.do'/>",
						type:"GET",
						data:"adminId="+$("#adminId").val(),
						success:function(res){
							var result="";
							if(res==1){
								result="이미 등록된 아이디입니다.";
								$("#chkId").val("N");
							}else if(res==2){
								result = "사용가능한 아이디입니다.";
								$("#chkId").val("Y");
							}
							$("#message").html(result);
						},
						error:function(xhr, status, error){
							alert(status+":"+error);
						}
					});
				}else{
					//유효성 검사를 통과하지 못한 경우
					$("#message").html("아이디 규칙에 맞지 않습니다");
					$("#chkId").val("N");
				}
				
			});
			
	});//document.ready
			
		
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
        <label for="adminId">관리자ID</label>
        <input type="text" name="adminId" id="adminId"
        		style="ime-mode:inactive">&nbsp;
        <span id="message"></span>
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
			
			<input type="hidden" name="chkId" id="chkId">
			
			</div>
		</div>
	</form>
					</article>
			</section>
 			
 		</div>