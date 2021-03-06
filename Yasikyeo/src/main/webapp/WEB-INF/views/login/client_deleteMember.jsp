<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">

	$(document).ready(function(){
		$("#memSubmit2").click(function(event){
			if($("#checkPwd").val()!="인증완료"){
				alert("비밀번호를 입력하세요");
				$("#memberPwd").focus();
				return false;
			}else if(!$("input[type=radio]:checked")){
				alert("탈퇴사유를 선택해주세요");
				return false;
			}
		});
	});
 

	function pwd(){
	
		var oPwd = document.getElementById("oPwd");
	
		if(oPwd.value=="" || oPwd.value==null){
			alert("비밀번호를 입력하세요");
			oPwd.focus();
			return false;
		}
		
		var check = document.frm;
		window.open('', 'pwd',"width=450,height=250,left=50,top=50,resizable=yes,location=yes");
		check.action="<c:url value='/mypage/checkPwd.do'/>";
		check.target='pwd';
		check.submit();
		check.action="<c:url value='/login/client_deleteMember.do'/>";
	}
</script>

<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="<c:url value='/index.do'/>">홈</a>
			</li>
			<li>&gt;</li>
			<li>
				<a href="<c:url value='/mypage/client_mypage.do'/>">마이페이지</a>
			</li>
			<li>&gt;</li>
			<li style="font-weight: bold;">내 정보</li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="<c:url value='/mypage/client_paymentList.do'/>"><span class="tabMenu">바로결제 내역</span></a></li>
			<li class="noteff"><a href="<c:url value='/mypage/client_myinfo.do'/>"><span class="tabMenu">내 정보</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_mypoint.do'/>"><span class="tabMenu">포인트</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_myreview.do'/>"><span class="tabMenu">리뷰관리</span></a></li>
		</ul>
		<div class="fieldsetContain">
			<fieldset>
				<legend>회원탈퇴</legend>
				<form name="frm" method="post">
					<input type="hidden" name="checkPwd" id="checkPwd">
					<input type="hidden" name="del" id="del">
					<div class="divdelmem">
						<div class="div1">
							회원탈퇴에 앞서 아래의 사항을 반드시 확인하시기 바랍니다.
						</div>
						<ol>
							 <li>탈퇴 후 재가입 시, 제한을 받을 수 있습니다.</li>
							 <li>탈퇴한 계정의 배달의민족 <strong>이용기록은 모두 삭제</strong>됩니다. <strong>삭제된 데이터는 복구가 불가</strong>합니다. (단, 작성된 리뷰와 결제 내역은 5년까지 보관)<br>
							 		- 삭제되는 이용 기록 : 아이디, 이메일, 휴대폰 번호, 주문이력, 관심지역(앱), 포인트</li>
							 <li>한 번 탈퇴한 아이디는 <strong>동일 아이디로 재가입하거나, 복구하는 것이 불가능</strong>하오니, 탈퇴 시 유의하시기 바랍니다.</li>
							 <li>야시켜와 사장님사이트 계정이 동일할 경우, 야시켜 계정만 삭제됩니다. 사장님사이트 회원 탈퇴는 사장님사이트에서 가능합니다.</li>
						</ol>
					</div>
					<fieldset class="pwdconfirm">
						<legend>비밀번호 확인</legend>
						<div class="div2">
						회원 탈퇴를 원하실 경우, 본인확인을 위해 비밀번호를 한 번 더 입력해주세요.
						</div>
						<div class="div1">
							<input class="inputText2 flex1" type="password" id="oPwd" name="oPwd" placeholder="현재 비밀번호를 입력해 주세요">
							<input type="Button" class="btbrown bt2 quarterwidth" value="확인" title="비번확인" onclick="pwd()">
						</div>
					</fieldset>
					<fieldset class="pwdconfirm">
						<legend>탈퇴사유 선택</legend>
						<div class="div2">
						회원탈퇴사유를 선택해주세요
						</div>
						<div class="div1 vertical-container">
							<div class="div1 checkboxContainer">
								<label><input type="radio" name="delconfirm" value="가입 불필요">회원 가입이 불필요함</label>
							</div>
							<div class="div1 checkboxContainer">
								<label><input type="radio" name="delconfirm" value="정보 부족" >업소 정보 부족</label>
							</div>
							<div class="div1 checkboxContainer">
							 	<label><input type="radio" name="delconfirm" value="서비스 불만족">서비스 불만족</label>
							</div>
							<div class="div1 checkboxContainer">
								<label><input type="radio" name="delconfirm" value="타사 이용">타사 서비스 이용</label>
							</div>
							<div class="div1 checkboxContainer">
								<label><input type="radio" name="delconfirm" value="기타">기타</label>
							</div>
						</div>
					</fieldset>
					<div class="div1 vertical-container">
						<button type="submit" class="btgray bt3 flex1" id="memSubmit2">탈퇴하기</button>
						<input type="reset" class="btbrown bt4 quarterwidth" value="취소">
					</div>
				</form>
			</fieldset>
		</div>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>