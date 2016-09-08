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
				<form name="frm" id="" action="">
					<div>
						<label class="lb1">휴대폰</label>
						<input type="text" placeholder="'-'를 제외하고 입력해주세요">
					</div>
					<div>
						<label class="lb1">생년월일</label>
						<input type="text" placeholder="8자리 입력(예19850815)">
					</div>
					<div>
						<span>아이디or메일주소찍어주는곳</span>
					</div>
					<div style="text-align: center;">
						<button type="submit">완료</button>
					</div>
				</form>
			</fieldset>
		</div>
		<div class="fieldsetContain" id="tabs-2">
			<fieldset>
				<legend>비밀번호찾기</legend>
				<form name="frm" id="" action="">
					<div>
						<label class="lb1">이메일</label>
						<input type="text" placeholder="abcd@abcd.com">
					</div>
					<div>
						<label class="lb1">생년월일</label>
						<input type="text" placeholder="8자리 입력(예19850815)">
					</div>
					<div>
						<span>가입하신 이메일로 임시비밀번호를 보내드립니다.</span>
					</div>
					<div style="text-align: center;">
						<button type="submit">완료</button>
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