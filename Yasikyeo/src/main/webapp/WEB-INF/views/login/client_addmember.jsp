<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<!-- http://localhost:9090/yasikyeo/login/client_addmember.do -->
<script type="text/javascript">
$(function() {
	$("#ifram1").click(function() {
		$(".fieldsetContain:LAST-CHILD").after(iframstr("이용약관",3));
	});
	$("#ifram2").click(function() {
		$(".fieldsetContain:LAST-CHILD").after(iframstr("개인정보수집 및 이용",4));
	});
	$("#ifram3").click(function() {
		$(".fieldsetContain:LAST-CHILD").after(iframstr("전자금융거래 이용약관",5));
	});
	$(document).on("click","#btclo",function(){
		alert("눌림");
		$(this).parents(".fieldsetContain").remove();
	});
	
});
function iframstr(typestr,i) {
	var str = "";
	var i="<c:url value='/etc/provision"+i+".html'/>";
	alert(i);
	str+='<div class="fieldsetContain">';
	str+='<h2 class="paddingCol10px">'+typestr+'<input class="bt7 float-right" type="button" value="X" id="btclo"></h2>';
	str+='<iframe class="bord-1ss" src="'+i+'" width="950px" height="200px"></iframe>';
	str+='</div>';
	return str;
}
</script>
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
			<ul class="ul3">
				<li class="color-orange">#은 필수 항목입니다.</li>
			</ul>
			<form name="frm" method="post">
				<input type="text" id="authNum">
				<input type="text" id="chkId">
				<div class="div1">
					<label class="lb1">아이디 <span class="color-orange">#</span></label>
					<input type="text" class="inputText1 flex1" name="memberId" id="memberId" placeholder="4글자이상 입력해주세요"><span class="sp1" id="message"></span>
				</div>
				<div class="div1">
					<label class="lb1">이메일 <span class="color-orange">#</span></label>
					<input type="text" class="inputText2 flex1" name="memberEmail" id="memberEmail" placeholder="abcd@abcd.com">
					<input type="button" class="bt1 deciwidth" onclick="email()" value="메일인증">
				</div>
				<div class="div1">
					<label class="lb1">비밀번호 <span class="color-orange">#</span></label>
					<input type="password" class="inputText1 flex1"  name="memberPwd" id="memberPwd" placeholder="4~20자로 입력해주세요">
				</div>
				<div class="div1">
					<label class="lb1">비밀번호확인 <span class="color-orange">#</span></label>
					<input type="password" class="inputText1 flex1"  id="memberPwd2" placeholder="비밀번호를 재입력 해주세요.">
				</div>
				<div class="div1">
					<label class="lb1">휴대폰 <span class="color-orange">#</span></label>
					<input type="text" class="inputText1 flex1"  name="memberTel" id="memberTel" placeholder="'-'를 제외하고 입력해주세요">
				</div>
				<div class="div1">
					<label class="lb1">생년월일 <span class="color-orange">#</span></label>
					<input type="text" class="inputText1 flex1" name="memberBirth" id="memberBirth" placeholder="8자리 입력(예19850815)">
				</div>
				<div class="div1">
					<label class="lb1">닉네임 </label>
					<input type="text" class="inputText1 flex1"  name="memberNickname" id="memberNickname" placeholder="-닉네임을 설정하지 않으면 아이디가 닉네임으로 사용됩니다.">
				</div>
				<div class="div1">
					<label class="lb1">우편번호 </label>
					<input type="number" class="inputText2 flex1"  ReadOnly name="postcode" id="postcode" title="우편번호" >        
					<input type="Button" class="bt1" value="우편번호 찾기" title="새창열림" onclick="execDaumPostcode()"><br>
				</div>
				<div class="div2">
					<label class="lb1">주소 </label>
					<input type="text" class="inputText1 flex1"  name="address" id="address"><br>
				</div>
				<div class="div2">
					<label class="lb1">상세주소 </label>
					<input type="text" class="inputText1 flex1"  name="addressDetail" id="addressDetail">
				</div>
				<div class="div1">
					<label class="lb1">약관동의</label>
					<div class="div1 checkboxContainer">
					<label class="align-middle"><input type="checkbox" class="align-middle"> 이용약관동의</label>
					<a class="a1 align-middle cursor-pointer" id="ifram1">내용보기▶</a>
					</div>
					<div class="div1 checkboxContainer">
					<label class="align-middle"><input type="checkbox" class="align-middle"> 전자금융거래 이용약관</label>
					<a class="a1 align-middle cursor-pointer" id="ifram2">내용보기▶</a>
					</div>
					<div class="div1 checkboxContainer">
					<label class="align-middle"><input type="checkbox" class="align-middle"> 개인정보 수집·이용동의</label>
					<a class="a1 align-middle cursor-pointer" id="ifram3">내용보기▶</a>
					</div>
				</div>
				<div class="div1 vertical-container">
					<button type="submit" class="sub1 fullwidth" id="memSubmit">완료</button>
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
			if($("#memberId").val().length < 1){
				alert("아이디를 입력하세요.");
				$("#memberId").focus();
				return false;
				event.stopPropagation();
				event.preventDefault();
			}else if($("#authNum").val()!="인증완료"){
				alert("이메일 인증을 하세요.");
				$("#memberEmail").focus();
				return false;
			}else if($("#memberPwd").val().length<1){
				alert("비밀번호를 입력하세요.");
				$("#memberPwd").focus();
				return false;
			}else if($("#memberPwd2").val()!=$("#memberPwd2").val()){
				alert("비밀번호가 일치하지 않습니다.");
				$("#memberPwd2").focus();
				return false;
			}
		});
		
		 $("#memberId").keyup(function(){
				if(validate_member_Id($("#memberId").val()) && $("#memberId").val().length>=4){
					$.ajax({
						url:"<c:url value='/login/ajaxCheckMemberId.do'/>",
						type:"GET",
						data:"memberId="+$("#memberId").val(),
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
    
	function validate_member_Id(memberId){
		var pattern = new RegExp(/^[a-z0-9_]+$/g);
		
		return pattern.test(memberId);		
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