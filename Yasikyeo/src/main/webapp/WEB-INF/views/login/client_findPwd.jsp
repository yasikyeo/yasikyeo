<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>

<script type="text/javascript">
	$(function() {
	    $( "#tabs" ).tabs();
	    $("#tabs li").click(function() {
			$(this).css("border-bottom","5px solid #1e1e1e");
			$(this).find("span").css("color","#1e1e1e");
			$(this).siblings().css("border-bottom","5px solid #646464");
			$(this).siblings().find("span").css("color","#646464");
		});
		
	    $("#tabs li").hover(function() {
			$(this).css("border-bottom","5px solid #1e1e1e");
		},function(){
			if($(this).find("span").css("color")!="rgb(30, 30, 30)"){
				$(this).css("border-bottom","5px solid #646464");
			}
		});
	    $("#tabs li:FIRST-CHILD").trigger("click");
	    
	    
			$("#submit1").click(function(event){
				if($("#memberTel").val().length < 1){
					alert("전화번호를 입력하세요.");
					$("#memberTel").focus();
					return false;
				}else if($("#memberBirth1").val().length < 1){
					alert("생년월일을 입력하세요.");
					$("#memberBirth1").focus();
					return false;
				}
			});
			
			$("#submit2").click(function(event){
				if($("#memberEmail").val().length < 1){
					alert("이메일주소를 입력하세요.");
					$("#memberEmaill").focus();
					return false;
				}else if($("#memberBirth2").val().length < 1){
					alert("생년월일을 입력하세요.");
					$("#memberBirth2").focus();
					return false;
				}
			});
	});
</script>

<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="">홈</a>
			</li>
			<li>&gt;</li>
			<li style="font-weight: bold;">아이디·비밀번호 찾기</li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1"><span class="tabMenu">아이디찾기</span></a></li>
			<li><a href="#tabs-2"><span class="tabMenu">비밀번호찾기</span></a></li>
		</ul>
		<div class="fieldsetContain" id="tabs-1">
			<fieldset>
				<legend>아이디찾기</legend>
				<form name="frm" name="findId" method="post" action="<c:url value='/login/client_findPwd.do'/>">
					<div class="div1">
						<label class="lb1">휴대폰</label>
						<input type="text" name="memberTel" id="memberTel" class="inputText1 flex1" placeholder="'-'를 제외하고 입력해주세요">
					</div>
					<div class="div1">
						<label class="lb1">생년월일</label>
						<input type="text" name="memberBirth" id="memberBirth1" class="inputText1 flex1" placeholder="8자리 입력(예19850815)">
					</div>
					<div class="div1 vertical-container">
						<strong>
							<c:if test="${!empty cookie.find_memberId.value}">
								회원님의 아이디는 ${cookie.find_memberId.value } 입니다.
							</c:if>
						</strong>
					</div>
					<div class="div1">
						<input type="submit" name="submit" id="submit1" class="sub1 fullwidth" >완료</button>
					</div>
				</form>
			</fieldset>
		</div>
		<div class="fieldsetContain" id="tabs-2">
			<fieldset>
				<legend>비밀번호찾기</legend>
				<form name="frm" name="findPwd" method="post" action="<c:url value='/login/client_findPwd.do'/>">
					<div class="div1">
						<label class="lb1">이메일</label>
						<input class="inputText1 flex1" name="memberEmail" id="memberEmail" type="text" placeholder="abcd@abcd.com">
					</div>
					<div class="div1">
						<label class="lb1">생년월일</label>
						<input class="inputText1 flex1" name="memberBirth" id="memberBirth2" type="text" placeholder="8자리 입력(예19850815)">
					</div>
					<div class="div1 vertical-container">
						<strong>가입하신 이메일로 임시비밀번호를 보내드립니다.</strong>
					</div>
					<div name="findPwd" class="div1">
						<input type="submit" name="submit" id="submit2" class="sub1 fullwidth" >완료</button>
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