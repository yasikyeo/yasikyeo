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
	  
	  $("#memSubmit").click(function(event){
			if($("#memberTel").val().length < 1){
				alert("휴대폰 번호를 입력하세요");
				$("#memberTel").focus();
				return false;
			}else if($("#memberBirth").val().length < 8){
				alert("생년월일을 입력하세요");
				$("#memberBirth").focus();
				return false;
			}else if($("#memberNickname").val().length<1){
				alert("닉네임을 입력하세요");
				$("#memberNickname").focus();
				return false;
			}else if($("#addressDetail").val().length < 1){
				alert("상세주소를 입력하세요");
				$("#addressDetail").focus();
				return false;
			}else if($("#checkPwd").val()=="인증완료" &&
					$("#memberPwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#memberPwd").focus();
				return false;
			}else if($("#memberPwd").val()!=$("#memberPwd2").val()){
				alert("비밀번호가 일치하지 않습니다.");
				$("#memberPwd2").focus();
				return false;
			}
		});
	  
	});
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
				<legend>내 정보</legend>
				<form name="frm" method="post">
				<input type="hidden" name="checkPwd" id="checkPwd">
					<fieldset class="information">
						<legend>기본정보</legend>
						<div class="div1">
							<label class="lb1">아이디</label>
							<input class="inputText2 flex1" type="text" name="memberId" ReadOnly
								value="${memberVo.memberId }">
						</div>
						<div class="div1">
							<label class="lb1">이메일</label>
							<input type="text" class="inputText2 flex1" name="memberEmail" id="memberEmail" ReadOnly
								value="${memberVo.memberEmail }" placeholder="abcd@abcd.com">
						</div>
						<div class="div1">
							<label class="lb1">휴대폰</label>
							<input type="tel" class="inputText2 flex1"  name="memberTel" id="memberTel"
								value="${memberVo.memberTel }" placeholder="'-'를 제외하고 입력해주세요"
							>
						</div>
						<div class="div2">
							<label class="lb1"></label>
							<span class="sp2">- 휴대폰 정보를 입력하시면, 바로결제 시 자동으로 연락처란에 입력됩니다. </span>
						</div>
						<div class="div1">
							<label class="lb1">생년월일</label>
							<input type="text" class="inputText2 flex1" name="memberBirth" id="memberBirth"
							value="${memberVo.memberBirth }" placeholder="8자리 입력(예19850815)">
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
							<input class="inputText2 flex1" name="oPwd" id="oPwd" type="password">
							<input type="Button" class="btbrown bt2 deciwidth" value="확인" title="비번확인" onclick="pwd()">
						</div>
						<div class="div1">
							<label class="lb1">신규 비밀번호</label>
							<input class="inputText2 flex1" name="memberPwd" id="memberPwd" type="password">
						</div>
						<div class="div1">
							<label class="lb1">비밀번호 확인</label>
							<input class="inputText2 flex1" id="memberPwd2" type="password">
						</div>
					</fieldset>
					<fieldset class="pwdfield">
						<legend>추가정보</legend>
						<div class="div1">
							<label class="lb1">닉네임</label>
							<input class="inputText2 flex1" type="text" name="memberNickname" 
								id="memberNickname" value="${memberVo.memberNickname }">
						</div>
						<div class="div2">
							<label class="lb1"></label>
							<span class="sp2">-닉네임을 설정하지 않으면 아이디가 닉네임으로 사용됩니다.</span>
						</div>
						<div class="div1">
							<label class="lb1">우편번호</label>
							<input type="text" class="inputText2 flex1"  ReadOnly name="postcode"
							value="${memberVo.postcode }" id="postcode" title="우편번호" >        
							<input type="Button" class="btbrown bt2" value="우편번호 찾기" title="새창열림" onclick="execDaumPostcode()">
						</div>
						<div class="div2">
							<label class="lb1">주소</label>
							<input type="text" class="inputText2 flex1" ReadOnly value="${memberVo.address}" name="address" id="address">
						</div>
						<div class="div2">
							<label class="lb1">상세주소</label>
							<input type="text" class="inputText2 flex1" value="${memberVo.addressDetail }" name="addressDetail" id="addressDetail">
						</div>
					</fieldset>
					<div class="div1 vertical-container clear-both">
						<button type="submit" class="btblack bt3 flex1" id="memSubmit">변경하기</button>
						<input type="reset" class="btbrown bt4 quarterwidth" value="취소">
					</div>
					<br>
					<div class="float-right">
						<a href="<c:url value='/login/client_deleteMember.do'/>"><span class="sp2">회원탈퇴 하러가기</span></a>
					</div>
				</form>
			</fieldset>
		</div>
	</div>
</div>
<br>
<br>
<br>
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
		// 우편번호 찾기 화면을 넣을 element
		var element_layer = document.getElementById('layer');
		
		function closeDaumPostcode() {
		    // iframe을 넣은 element를 안보이게 한다.
		    element_layer.style.display = 'none';
		}
		
		function execDaumPostcode() {
		    new daum.Postcode({
		        oncomplete: function(data) {
		            // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		            var fullAddr = data.address; // 최종 주소 변수
		            var extraAddr = ''; // 조합형 주소 변수
		
		            // 기본 주소가 도로명 타입일때 조합한다.
		            if(data.addressType === 'R'){
		                //법정동명이 있을 경우 추가한다.
		                if(data.bname !== ''){
		                    extraAddr += data.bname;
		                }
		                // 건물명이 있을 경우 추가한다.
		                if(data.buildingName !== ''){
		                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                }
		                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		            }
		
		            // 우편번호와 주소 정보를 해당 필드에 넣는다.
		            document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
		            document.getElementById('address').value = fullAddr;
		
		            // iframe을 넣은 element를 안보이게 한다.
		            // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
		            element_layer.style.display = 'none';
		        },
		        width : '100%',
		        height : '100%'
		    }).embed(element_layer);
		
		    // iframe을 넣은 element를 보이게 한다.
		    element_layer.style.display = 'block';
		
		    // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
		    initLayerPosition();
		}
		
		// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
		// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
		// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
		function initLayerPosition(){
		    var width = 300; //우편번호서비스가 들어갈 element의 width
		    var height = 460; //우편번호서비스가 들어갈 element의 height
		    var borderWidth = 5; //샘플에서 사용하는 border의 두께
		
		    // 위에서 선언한 값들을 실제 element에 넣는다.
		    element_layer.style.width = width + 'px';
		    element_layer.style.height = height + 'px';
		    element_layer.style.border = borderWidth + 'px solid';
		    // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		http://localhost:9090/yasikyeo/index.do    element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
		    element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
		}
		
		function pwd(){
			
			var oPwd = document.getElementById("oPwd");
		
			if(oPwd.value=="" || oPwd.value==null){
				alert("기존 비밀번호를 입력하세요");
				oPwd.focus();
				return false;
			}
			
			var check = document.frm;
			window.open('', 'pwd',"width=450,height=250,left=50,top=50,resizable=yes,location=yes");
			check.action="<c:url value='/mypage/checkPwd.do'/>";
			check.target='pwd';
			check.submit();
			check.action="<c:url value='/mypage/client_myinfo.do'/>";
		}
</script>
<%@ include file="../inc/bottom.jsp" %>