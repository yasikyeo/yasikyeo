<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery.uploadPreview.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
<script type="text/javascript">
$(document).ready(function() {
	CKEDITOR.replace('editor',{
		customConfig: ' '
	});
	CKEDITOR.editorConfig = function( config ) {
		config.width = 755;     // 500 pixels wide.
	};
	
	  $.uploadPreview({
	    input_field: "#image-upload1",   // Default: .image-upload
	    preview_box: ".image-preview1",  // Default: .image-preview
	    label_field: "#image-label1",    // Default: .image-label
	    label_default: "파일첨부",   // Default: Choose File
	    label_selected: "파일변경",  // Default: Change File
	    no_label: false,                 // Default: false
	    preview_default:"test-failed.png"
	  });
	  $.uploadPreview({
	    input_field: "#image-upload2",   // Default: .image-upload
	    preview_box: ".image-preview2",  // Default: .image-preview
	    label_field: "#image-label2",    // Default: .image-label
	    label_default: "파일첨부",   // Default: Choose File
	    label_selected: "파일변경",  // Default: Change File
	    no_label: false,                 // Default: false
	    preview_default:"test-failed.png"
	  });
	  $.uploadPreview({
	    input_field: "#image-upload3",   // Default: .image-upload
	    preview_box: ".image-preview3",  // Default: .image-preview
	    label_field: "#image-label3",    // Default: .image-label
	    label_default: "파일첨부",   // Default: Choose File
	    label_selected: "파일변경",  // Default: Change File
	    no_label: false,                 // Default: false
	    preview_default:"test-failed.png"
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
			<li><b>문의하기</b></li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="#"><span class="tabMenu">서비스소개</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">공지사항/이벤트</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">자주묻는질문</span></a></li>
			<li class="noteff"><a href="#"><span class="tabMenu">문의하기</span></a></li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>문의하기</legend>
			<div class="div6">
				<ul class="div3 float-right">
					<li class="color-orange"><b>1:1문의하기</b></li>
					<li>|</li>
					<li><a href="#">나의문의내역보기</a></li>
				</ul>
				<br class="clear-both">
			</div>
			<form action="">
				<div class="div1">
					<label class="lb1">이름</label>
					<input class="inputText2 flex1" type="text">
				</div>
				<div class="div1">
					<label class="lb1">이메일주소<span class="color-orange">&#186;</span></label>
					<input class="inputText1 flex2" type="text">&nbsp;@&nbsp;
					<input class="inputText2 flex3" type="text">
				</div>
				<div class="div1">
					<label class="lb1">휴대폰번호<span class="color-orange">&#186;</span></label>
					<select class="selectoption1 flex1">
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select>
					<input class="inputText2 flex3" type="text" placeholder="'-'를제외하고 입력해주세요">
				</div>
				<div class="div1">
					<label class="lb1">상담분류<span class="color-orange">&#186;</span></label>
					<select class="selectoption1 flex1">
						<option>상담분류</option>
						<option>오류문의</option>
						<option>회원정보문의</option>
						<option>리뷰문의</option>
						<option>업소정보문의</option>
						<option>이벤트</option>
						<option>기타</option>
					</select>
				</div>
				<div class="div1">
					<label class="lb1">제목<span class="color-orange">&#186;</span></label>
					<input class="inputText2 flex1" type="text">
				</div>
				<div class="div1">
					<label class="lb1">문의내용<span class="color-orange">&#186;</span></label>
					<textarea rows="20" cols="105" name="editor" id="editor"></textarea>
				</div>
				<div class="div1">
					<label class="lb1">&nbsp;</label>
					<div class="profile1 flex1">
						<div class="image-preview1">
							<input type="file" name="image" id="image-upload1" />
						</div>
						<label for="image-upload1" id="image-label1">파일첨부</label>
					</div>
					<div class="profile1 flex1">
						<div class="image-preview2">
							<input type="file" name="image" id="image-upload2" />
						</div>
						<label for="image-upload2" id="image-label2">파일첨부</label>
					</div>
					<div class="profile1 flex1">
						<div class="image-preview3">
							<input type="file" name="image" id="image-upload3" />
						</div>
						<label for="image-upload3" id="image-label3">파일첨부</label>
					</div>
				</div>
				<div class="div2">
					<label class="lb1">&nbsp;</label>
					<label class="sp2">이미지 파일 (GIF,PNG,JPG)을 기준으로 최대 10MB이하, 최대 3개까지 등록가능 합니다.</label>
				</div>
				<!-- 비회원이나 로그인을 안했을때만 -->
				<div class="div1">
					<label class="lb1">비밀번호<span class="color-orange">&#186;</span></label>
					<input class="inputText2 flex3" type="password">
				</div>
				<div class="div2">
					<label class="lb1">&nbsp;</label>
					<label class="sp2">비회원은 비밀번호를 입력해야 나의 문의내역을 확인하실 수 있습니다.</label>
				</div>
				<!-- 비회원이나 로그인을 안했을때만 끝-->
				<div class="div1">
					<button type="submit" class="btblack bt3 flex1">문의하기</button>
				</div>
			</form>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>