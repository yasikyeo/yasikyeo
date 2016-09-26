<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/marketmember4.css"	type="text/css" />
<title>야시켜, 사장님 업소정보 수정</title>

		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">업소정보수정</div>
						<div class="show2">
							<div id="lsh">사장님께서 수정하실 업소의 상세 내용을 기재해주세요.</div>
							<div id="rsh">업소정보수정</div>
						</div>
						<div class="shop_info">
							<form id="shop_reg" method="post" action="<c:url value='/ceo/member/ceo_updateshop.do'/>"  enctype="multipart/form-data">
								<table border="3" ; width="100%" ; height="100%";>
									<tr>
										<td class="td_1">업소 카테고리</td>
										<td class="td_2"><select id="shopCategori" name="shopCategori" class="formInput">
												<option value="치킨" <c:if test="${ceoShopVo.shopCategori=='치킨' }">selected</c:if>>치킨</option>
												<option value="피자" <c:if test="${ceoShopVo.shopCategori=='피자' }">selected</c:if>>피자</option>
												<option value="중국집" <c:if test="${ceoShopVo.shopCategori=='중국집' }">selected</c:if>>중국집</option>
												<option value="패스트푸드" <c:if test="${ceoShopVo.shopCategori=='패스트푸드' }">selected</c:if>>패스트푸드</option>
												<option value="돈까스,일식" <c:if test="${ceoShopVo.shopCategori=='돈까스/일식' }">selected</c:if>>돈까스,일식</option>
												<option value="찜,탕" <c:if test="${ceoShopVo.shopCategori=='찜/탕' }">selected</c:if>>찜,탕</option>
												<option value="족발,보쌈" <c:if test="${ceoShopVo.shopCategori=='족발/보쌈' }">selected</c:if>>족발,보쌈</option>
												<option value="한식,분식" <c:if test="${ceoShopVo.shopCategori=='한식/분식' }">selected</c:if>>한식,분식</option>
												<option value="도시락" <c:if test="${ceoShopVo.shopCategori=='도시락' }">selected</c:if>>도시락</option>
												<option value="야식" <c:if test="${ceoShopVo.shopCategori=='야식' }">selected</c:if>>야식</option>
										</select>
										</td>
									</tr>

									<tr>
										<td class="td_1">업소명</td>
										<td class="td_2"><input type="text" class="formInput4" name="shopName" value="${ceoShopVo.shopName}"></td>
									</tr>

									<tr>
										<td class="td_1">업소이미지</td>
										<td class="td_2">
											<input type="text" id="shopImage" class="file_input_textbox" readonly="readonly">
											<div class="file_input_div">
												<input type="button" value="이미지 업로드" class="file_input_button" /> <input type="file"
													class="file_input_hidden" name="imageUpload" id="imageUpload" onchange="handleFileSelect(0)" class="formInput1" />
											</div>
											<div id="productImgView"></div>
											</tr>
									<tr>
										<td class="td_1">업소소개</td>
										<td class="td_2">
											<textarea rows="15" cols="80" name="shopExplain" class="formInput" style="width: 350px; height: 170px;"
											>${ceoShopVo.shopExplain }</textarea>
										</td>
									</tr>

									<tr>
										<td class="td_1">최소배달금액</td>
										<td class="td_2"><input type="text" class="formInput" name="shopMinprice" value="${ceoShopVo.shopMinprice }"></td>
									</tr>

									<tr>
										<td class="td_1">오픈 & 마감시간</td>
										<td class="td_2"><input type="time" class="formInput" name="shopOpentime" value="${ceoShopVo.shopOpentime }">
										<input type="time" class="formInput" name="shopClosetime" value="${ceoShopVo.shopClosetime }">
										</td>
									</tr>

									<tr>
										<td class="td_1">전화번호</td>
										<td class="td_2"><input type="text" class="formInput" name="shopTel" value="${ceoShopVo.shopTel }"></td>
									</tr>

									<tr>
										<td class="td_1">원산지정보</td>
										<td class="td_2"><input type="text" class="formInput" name="shopOrigin" value="${ceoShopVo.shopOrigin }"></td>
									</tr>
									
									<tr>
										<td class="td_1">사업자등록번호</td>
										<td class="td_2"><input type="text" class="formInput" name="shopLicense" value="${ceoShopVo.shopLicense }"></td>
									</tr>

									<tr>
										<td class="td_1">우편번호</td>
										<td class="td_2">
											<input type="text" ReadOnly id="postcode" name="postcode" class="formInput" value="${ceoShopVo.postcode }">
											<input type="Button" class="formButton" value="우편번호 찾기" title="새창열림" onclick="execDaumPostcode()">
										</td>
									</tr>
									<tr>
										<td class="td_1">주소</td>
										<td class="td_2">
											<input type="text" ReadOnly id="address" name="address" class="formInput4" value="${ceoShopVo.address }">
										</td>
									</tr>
									<tr>
										<td class="td_1">상세주소</td>
										<td class="td_2">
											<input type="text" id="addressDetail" name="addressDetail" class="formInput4" value="${ceoShopVo.addressDetail }">
										</td>
									</tr>

									<tr>
										<td class="td_1">업소은행계좌</td>
										<td class="td_2"><select name="shopAccountname" class="formInput" value="${ceoShopVo.shopAccountname}">
												<option value="국민" <c:if test="${ceoShopVo.shopAccountname=='국민' }">selected</c:if>>국민</option>
												<option value="신한" <c:if test="${ceoShopVo.shopAccountname=='신한' }">selected</c:if>>신한</option>
												<option value="우리" <c:if test="${ceoShopVo.shopAccountname=='우리' }">selected</c:if>>우리</option>
												<option value="농협" <c:if test="${ceoShopVo.shopAccountname=='농협' }">selected</c:if>>농협</option>
										</select> <input type="text" class="formInput" name="shopAccount" value="${ceoShopVo.shopAccount }"></td>
									</tr>
								</table>
							<div id="buttonset">
								<input type="submit" value="수정하기" class="next_button">
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
    
	function handleFileSelect(i) {
			var fileselectobj = "imageUpload";
			var previmageobj ="productImgView";
			var files = document.getElementById(fileselectobj).files[0]; //파일 객체

			var reader = new FileReader();

			//파일정보 수집        
			reader.onload = (function(theFile) {
				return function(e) {
					//이미지 뷰
					var img_view = [ '<img src="',e.target.result,'" title="',escape(theFile.name),'"width=200px height=120px"/>' ].join('');
					document.getElementById(previmageobj).innerHTML = img_view;
				};

			})(files);

			reader.readAsDataURL(files);
			
			document.getElementById('shopImage').value = document.getElementById('imageUpload').value;
	}
	

</script>


<%@ include file="../../inc/ceo/bottom.jsp" %>