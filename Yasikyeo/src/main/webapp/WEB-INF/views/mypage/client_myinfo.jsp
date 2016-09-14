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
						<div class="fullwidth">
							<label class="lb2">아이디</label>
							<input type="button" value="버튼">
							<input class="autowidth" type="text" name="member_Id" id="member_Id">
						</div>
					</fieldset>
					<div class="profile">
						<div id="image-preview">
							<input type="file" name="image" id="image-upload" />
						</div>
						<label for="image-upload" id="image-label">파일선택</label>
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