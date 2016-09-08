<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="">홈</a>
			</li>
			<li>&gt;</li>
			<li style="font-weight: bold;">회원가입</li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>회원가입</legend>
			<form name="frm" id="" action="">
				<div>
					<label class="lb1">이메일</label>
					<input type="text" style="width: 50%">
					<input type="button" style="width: 12%" value="중복확인">
					<input type="button" style="width: 12%" value="메일인증">
					
				</div>
				<div>
					<label class="lb1">&nbsp</label>
					<input type="text" style="width: 62.55%">
					<input type="button" style="width: 12%" value="확인">
				</div>
				<div>
					<label class="lb1">닉네임</label>
					<input type="text">
				</div>
				<div>
					<label class="lb1">비밀번호</label>
					<input type="text">
				</div>
				<div>
					<label class="lb1">비밀번호확인</label>
					<input type="text">
				</div>
				<div>
					<label class="lb1">휴대폰</label>
					<input type="text">
				</div>
				<div>
					<label class="lb1">생년월일</label>
					<input type="text">
				</div>
				<div>
					<label class="lb1">약관동의</label>
					<div class="checkboxContainer">
					<label><input type="checkbox"> 이용약관동의</label>
					<a href="#" class="a1">내용보기▶</a>
					</div>
					<div class="checkboxContainer">
					<label><input type="checkbox"> 전자금융거래 이용약관</label>
					<a href="#" class="a1">내용보기▶</a>
					</div>
					<div class="checkboxContainer">
					<label><input type="checkbox"> 개인정보 수집·이용동의</label>
					<a href="#" class="a1">내용보기▶</a>
					</div>
				</div>
				<div style="text-align: center;">
					<button type="submit">완료</button>
				</div>
			</form>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>