<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/marketmember4.css"	type="text/css" />
<title>야시켜, 사장님 회원가입</title>

		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">정보입력</div>
						<div class="show2">
							<div id="lsh">사장님께서 등록하실 업소의 상세 내용을 기재해주세요.</div>
							<div id="rsh">업소등록</div>
						</div>
						<div class="shop_info">
							<form id="shop_reg" method="post" action="<c:url value='/ceo/member/ceo_addshop.do'/>"  enctype="multipart/form-data">
								<table border="3" ; width="100%" ; height="100%";>
									<tr>
										<td class="td_1">업소 카테고리</td>
										<td class="td_2"><select name="shopCategori" class="formInput">
												<option value="koreafood">한식</option>
												<option value="japanfood">일식</option>
												<option value="chinafood">중식</option>
												<option value="yangkifood">양식</option>
												<option value="etcfood">기타</option>
										</select>
										</td>
									</tr>

									<tr>
										<td class="td_1">업소명</td>
										<td class="td_2"><input type="text" class="formInput4" name="shopName"></td>
									</tr>

									<tr>
										<td class="td_1">업소이미지</td>
										<td class="td_2">
											<input type="text" id="shopImage" class="file_input_textbox" readonly="readonly">
											<div class="file_input_div">
												<input type="button" value="이미지 업로드" class="file_input_button" /> <input type="file"
													class="file_input_hidden" name="imageUpload" id="imageUpload"
													onchange="javascript: document.getElementById('shopImage').value = this.value" />
											</div>
											</tr>
									<tr>
										<td class="td_1">업소소개</td>
										<td class="td_2">
											<textarea rows="15" cols="80" name="shopExplain" class="formInput" style="width: 350px; height: 170px;"></textarea>
										</td>
									</tr>

									<tr>
										<td class="td_1">최소배달금액</td>
										<td class="td_2"><input type="text" class="formInput" name="shopMinprice"></td>
									</tr>

									<tr>
										<td class="td_1">오픈 & 마감시간</td>
										<td class="td_2"><input type="time" class="formInput" name="shopOpentime">
										<input type="time" class="formInput" name="shopClosetime">
										</td>
									</tr>

									<tr>
										<td class="td_1">전화번호</td>
										<td class="td_2"><input type="text" class="formInput" name="shopTel"></td>
									</tr>

									<tr>
										<td class="td_1">원산지정보</td>
										<td class="td_2"><input type="text" class="formInput" name="shopOrigin"></td>
									</tr>
									
									<tr>
										<td class="td_1">사업자등록번호</td>
										<td class="td_2"><input type="text" class="formInput"
											name="shopLicense"></td>
									</tr>

									<tr>
										<td class="td_1">우편번호</td>
										<td class="td_2">
											<input type="text" ReadOnly id="postcode" name="postcode" class="formInput">
											<input type="Button" class="formButton" value="우편번호 찾기" title="새창열림" onclick="execDaumPostcode()">
										</td>
									</tr>
									<tr>
										<td class="td_1">주소</td>
										<td class="td_2">
											<input type="text" ReadOnly id="address" name="address" class="formInput4">
										</td>
									</tr>
									<tr>
										<td class="td_1">상세주소</td>
										<td class="td_2">
											<input type="text" id="addressDetail" name="addressDetail" class="formInput4">
										</td>
									</tr>

									<tr>
										<td class="td_1">업소은행계좌</td>
										<td class="td_2"><select name="shopAccountname" class="formInput">
												<option value="kb">국민</option>
												<option value="sh">신한</option>
												<option value="wr">우리</option>
												<option value="nh">농협</option>
										</select> <input type="text" class="formInput" name="shopAccount"></td>
									</tr>
								</table>
							<div id="buttonset">
								<input type="submit" value="업소등록" class="next_button">
							</div>
							</form>
							<div id="post" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;"></div>
							<img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
						</div>
					</div>
				</div>
			</div>
		</div>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('post');

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
			}else if($("#memberName").val().length < 1){
				alert("이름을 입력하세요.");
				$("#memberName").focus();
				return false;
			}else if($("#authNum").val()!="인증완료"){
				alert("이메일 인증을 하세요.");
				$("#memberEmail").focus();
				return false;
			}else if($("#memberNickname").val().lenght<1){
				alert("닉네임을 입력하세요.");
				$("#memberNickname").focus();
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
			
			var am = "am";
			var pm = "pm";
			
			var openAmpm = 0;
			var closeAmpm = 0;
			var shopOpentime = 0;
			var shopOpentime2 = 0;
			var shopClosetime = 0;
			var shopClosetime2 = 0;
			
			if($("#openAmpm").val()==am){
				openAmpm = 0;
			}else{
				openAmpm = 12;
			}
			if($("#closeAmpm").val()==am){
				closeAmpm = 0;
			}else{
				closeAmpm = 12;
			}
			
			var shopOpentime = $("#shopOpentime").val();
			var shopOpentime2 = $("#shopOpentime2").val();
			var shopClosetime = $("#shopClosetime").val();
			var shopClosetime2 = $("#shopClosetime2").val();
			
			var totalOpentime = openAmpm + shopOpentime + "-" + shopOpentime2; 
			var totalClosetime = closeAmpm + shopClosetime + "-" + shopClosetime2;
			
			$("#shopOpentime").val(totalOpentime);
			$("#shopClosetime").val(totalClosetime);
			
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
</script>


<%@ include file="../../inc/ceo/bottom.jsp" %>