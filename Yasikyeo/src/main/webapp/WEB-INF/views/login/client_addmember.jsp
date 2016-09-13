<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<!-- http://localhost:9090/yasikyeo/login/client_addmember.do -->
<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="<c:url value='/index.do'/>">홈</a>
			</li>
			<li>&gt;</li>
			<li style="font-weight: bold;">회원가입</li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>회원가입</legend>
			<form name="frm" method="post">
				<input type="hidden" id="authNum">
				<input type="hidden" id="chkId">
				<div>
					<label class="lb1">아이디</label>
					<input type="text" style="width: 20%" name="memberId" id="memberId"><span id="message"></span>
				</div>
				<div>
					<label class="lb1">이름</label>
					<input type="text" name="memberName" id="memberName">
				</div>
				<div>
					<label class="lb1">이메일</label>
					<input type="text" style="width: 60.5%" name="memberEmail" id="memberEmail" placeholder="abcd@abcd.com">
					<input type="button" style="width: 12%" onclick="email()" value="메일인증">
				</div>
				<div>
					<label class="lb1">닉네임</label>
					<input type="text" name="memberNickname" id="memberNickname">
				</div>
				<div>
					<label class="lb1">비밀번호</label>
					<input type="text" name="memberPwd" id="memberPwd" placeholder="4~20자로 입력해주세요">
				</div>
				<div>
					<label class="lb1">비밀번호확인</label>
					<input type="text" id="memberPwd2" placeholder="비밀번호를 재입력 해주세요.">
				</div>
				<div>
					<label class="lb1">휴대폰</label>
					<input type="text" name="memberTel" id="memberTel" placeholder="'-'를 제외하고 입력해주세요">
				</div>
				<div>
					<label class="lb1">생년월일</label>
					<input type="text" name="memberBirth" id="memberBirth" placeholder="8자리 입력(예19850815)">
				</div>
				<div>
					<label class="lb1">우편번호</label>
					<input type="text" ReadOnly name="postcode" id="postcode" title="우편번호" style="width: 15%">        
					<input type="Button" value="우편번호 찾기" title="새창열림" onclick="execDaumPostcode()"><br>
					<label class="lb1">주소</label>
					<input type="text" name="address" id="address"><br>
					<label class="lb1">상세주소</label>
					<input type="text" name="addressDetail" id="addressDetail">
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
					<button type="submit" id="memSubmit">완료</button>
				</div>
			</form>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
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
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
    
    $(document).ready(function(){
		$("#memSubmit").click(function(event){
			if($("#memberName").val().length < 1){
				alert("이름을 입력하세요");
				$("#memberName").focus();
				return false;
			}else if($("#authNum").val()!="인증완료"){
				alert("이메일 인증을 해주세요");
				$("#memberEmail").focus();
				return false;
			}else if($("#memberNickname").val().lenght<1){
				alert("닉네임을 입력하세요");
				$("#memberNickname").focus();
				return false;
			}else if($("#memberPwd").val().length<1){
				alert("비밀번호를 입력하세요");
				$("#memberPwd").focus();
				return false;
			}else if($("#memberPwd2").val()!=$("#memberPwd2").val()){
				alert("비밀번호가 일치하지 않습니다.");
				$("#memberPwd2").focus();
				return false;
			}
		});
		
		$("#memberId").keyup(function(){
			//1 <= 해당 아이디가 존재하는 경우
			//2 <= 존재하지 않는 경우
			if(validate_member_Id($("#memberId").val()) && 
				$("#memberId").val().length>=2){
				$.ajax({
					url:"<c:url value='/login/ajaxCheckUserid.do'/>",
					type:"GET",
					data:"member_Id="+$("#memberId").val(),
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
	});
    
	function validate_member_Id(member_Id){
		var pattern = new RegExp(/^[a-zA-Z0-9_]+$/g);
		
		return pattern.test(member_Id);		
	}
	
	function email(){
		
		var email = document.getElementById("memberEmail");
	
		if(email.value=="" || email.value==null){
			alert("이메일 주소를 입력하세요");
			email.focus();
			return false;
		}
		
		var check = document.frm;
		window.open('', 'email',"width=450,height=250,left=50,top=50,resizable=yes,location=yes");
		check.action="<c:url value='/login/emailAuth.do'/>";
		check.target='email';
		check.submit();
		check.action="<c:url value='/login/client_addmember.do'/>";
	}
</script>
<%@ include file="../inc/bottom.jsp" %>