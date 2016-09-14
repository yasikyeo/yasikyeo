<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery.uploadPreview.min.js'/>"></script>
<script type="text/javascript">
$(document).ready(function() {
	  $.uploadPreview({
	    input_field: "#image-upload",   // Default: .image-upload
	    preview_box: "#image-preview",  // Default: .image-preview
	    label_field: "#image-label",    // Default: .image-label
	    label_default: "파일선택",   // Default: Choose File
	    label_selected: "파일변경",  // Default: Change File
	    no_label: false                 // Default: false
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
			<li>
				<a href="">마이페이지</a>
			</li>
			<li>&gt;</li>
			<li style="font-weight: bold;">내 정보</li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="#"><span class="tabMenu">바로결제 내역</span></a></li>
			<li class="noteff"><a href="#"><span class="tabMenu">내 정보</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">포인트</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">리뷰관리</span></a></li>
		</ul>
		<div class="fieldsetContain">
			<fieldset>
				<legend>내 정보</legend>
				<form action="">
					<fieldset class="information">
						<legend>기본정보</legend>
						<div class="div1">
							<label class="lb1">아이디</label>
							<input class="inputText2 flex1" type="text">
						</div>
						<div class="div1">
							<label class="lb1">이메일</label>
							<input type="text" class="inputText2 flex1" name="memberEmail" id="memberEmail" placeholder="abcd@abcd.com">
						</div>
						<div class="div1">
							<label class="lb1">휴대폰</label>
							<input type="tel" class="inputText2 flex1"  name="memberTel" id="memberTel" placeholder="'-'를 제외하고 입력해주세요">
						</div>
						<div class="div2">
							<label class="lb1"></label>
							<span class="sp2">- 휴대폰 정보를 입력하시면, 바로결제 시 자동으로 연락처란에 입력됩니다. </span>
						</div>
						<div class="div1">
							<label class="lb1">생년월일</label>
							<input type="text" class="inputText2 flex1" name="memberBirth" id="memberBirth" placeholder="8자리 입력(예19850815)">
						</div>
					</fieldset>
					<div class="profile">
						<div id="image-preview">
							<input type="file" name="image" id="image-upload" />
						</div>
						<label for="image-upload" id="image-label">파일선택</label>
					</div>
					<fieldset class="pwdfield">
						<legend>비밀번호변경</legend>
						<div class="div1">
							<label class="lb1">현재 비밀번호</label>
							<input class="inputText2 flex1" type="password">
							<input type="Button" class="btbrown bt2 deciwidth" value="확인" title="비번확인">
						</div>
						<div class="div1">
							<label class="lb1">신규 비밀번호</label>
							<input class="inputText2 flex1" type="password">
						</div>
						<div class="div1">
							<label class="lb1">비밀번호 확인</label>
							<input class="inputText2 flex1" type="password">
						</div>
					</fieldset>
					<fieldset class="pwdfield">
						<legend>추가정보</legend>
						<div class="div1">
							<label class="lb1">닉네임</label>
							<input class="inputText2 flex1" type="text">
						</div>
						<div class="div2">
							<label class="lb1"></label>
							<span class="sp2">-닉네임을 설정하지 않으면 아이디가 닉네임으로 사용됩니다.</span>
						</div>
						<div class="div1">
							<label class="lb1">우편번호</label>
							<input type="text" class="inputText2 flex1"  ReadOnly name="postcode" id="postcode" title="우편번호" >        
							<input type="Button" class="btbrown bt2" value="우편번호 찾기" title="새창열림" onclick="execDaumPostcode()">
						</div>
						<div class="div2">
							<label class="lb1">주소</label>
							<input type="text" class="inputText2 flex1"  name="address" id="address">
						</div>
						<div class="div2">
							<label class="lb1">상세주소</label>
							<input type="text" class="inputText2 flex1"  name="addressDetail" id="addressDetail">
						</div>
					</fieldset>
					<div class="div1 vertical-container clear-both">
						<button type="submit" class="btblack bt3 flex1" id="memSubmit">변경하기</button>
						<input type="reset" class="btbrown bt4 quarterwidth" value="취소">
					</div>
					<br>
					<div class="float-right">
						<a href="#"><span class="sp2">회원탈퇴 하러가기</span></a>
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