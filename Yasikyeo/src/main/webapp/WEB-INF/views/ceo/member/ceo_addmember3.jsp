<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmember3.css" type="text/css"/>
<title>야시켜, 사장님 회원가입</title>

		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">
						정보입력
						</div>
						<div class="show2">
							<div id="lsh">
							가입하신 정보는 회원님의 동의 없이 공개되지 않으며, 개인정보 보호정책에 의해 보호를 받습니다.
							</div>
							<div id="rsh">
							03 정보입력
							</div>
						</div>
						<div class="infoinput">
							<form name="frm" id="accountinfo" method="post" action="<c:url value='/ceo/member/ceo_addmember3.do'/>">
							<input type="hidden" id="authNum" name="authNum">
							<input type="hidden" id="chkId">
								<table border="3"; width="100%"; height="100%";>
									<tr>
										<td class="td_1" width="10%" rowspan="4">계정 정보</td>
										<td class="td_2">
										아이디
										</td>
										<td class="td_3">
											<input type="text" class="formInput" id="ceoId" name="ceoId"><div id="message"></div>
										</td>
									</tr>
									<tr>
										<td class="td_2"><label>이메일 주소</label></td>
										<td class="td_3">
											<input type="text" class="formInput" id="ceoEmail" name="ceoEmail">
											<input type="button" class="formInput" value="메일인증" onclick="email()">
										</td>
									</tr>
									
									<tr>
										<td class="td_2">
										비밀번호 입력 
										</td>
										<td class="td_3">
											<input type="password" class="formInput" id="ceoPwd" name="ceoPwd"><br>
										</td>
									</tr>
									
									<tr>
										<td class="td_2">
										비밀번호 확인
										</td>
										<td class="td_3">
											<input type="password" class="formInput" id="ceoPwd2"><br>
										</td>
									</tr><br>
								</table>
								<table border="3"; width="100%"; height="100%";>
									<tr>
										<td class="td_1" rowspan="3">사장님 정보</td>
										<td class="td_2"><labe>이름</labe></td>
										<td class="td_3"><input type="text" class="formInput" id="ceoName" name="ceoName"></td>
									</tr>
									
									<tr>
										<td class="td_2"><label>휴대폰 번호</label></td>
										<td class="td_3">
											<input type="text" class="formInput" id="ceoTel" name="ceoTel"> 
										</td>
									</tr>
									
									<tr>
										<td class="td_2">생년월일</td>
										<td class="td_3">
											<input type="text" class="formInput" id="ceoBirth" name="ceoBirth">
										</td>
									</tr>
									
								</table>
							<div id="buttonset" style="text-align: center;">	
								<input type="submit" id="ceoSubmit" value="회원가입" name="next" class="next_button">
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
   
    $(document).ready(function(){
		 $("#ceoId").keyup(function(){
			if(validate_ceo_Id($("#ceoId").val()) && $("#ceoId").val().length>=4){
					$.ajax({
						url:"<c:url value='/ceo/member/ajaxCheckCeoId.do'/>",
						type:"GET",
						data:"ceoId="+$("#ceoId").val(),
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
					$("#message").html("아이디 규칙에 맞지 않습니다");
					$("#chkId").val("N");
				}
			});
    	});  
    
	function validate_ceo_Id(ceoId){
		var pattern = new RegExp(/^[a-z0-9_]+$/g);
		
		return pattern.test(ceoId);		
	}
	
	function email(){
		
		var email = document.getElementById("ceoEmail");
	
		if(email.value=="" || email.value==null){
			alert("이메일 주소를 입력하세요");
			email.focus();
			return false;
		}
		
		var check = document.frm;
		window.open('', 'email',"width=450,height=250,left=50,top=50,resizable=yes,location=yes");
		check.action="<c:url value='/ceo/member/emailAuth.do'/>";
		check.target='email';
		check.submit();
		check.action="<c:url value='/ceo/member/ceo_addmember3.do'/>";
	}
</script>
<%@include file="../../inc/ceo/bottom.jsp" %>