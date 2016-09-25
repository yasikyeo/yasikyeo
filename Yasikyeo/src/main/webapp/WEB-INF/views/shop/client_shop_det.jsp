<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery.raty.js'/>"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery.uploadPreview.min.js'/>"></script>
<script type="text/javascript">
$.fn.raty.defaults.path = "<c:url value='/images'/>";
function inputFileStr(i) {
	var str='';
	str+='<div class="inputimgcon1 paddingtype1 align-middle">';
		str+='<div class="profile2">';
			str+='<div class="image-preview'+(i+3)+'">';
				str+='<input type="file" name="image" id="image-upload'+(i+3)+'" />';
			str+='</div>';
			str+='<label for="image-upload'+(i+3)+'" id="image-label'+(i+3)+'">파일첨부</label>';
		str+='</div>';
	str+='</div>';
	return str;
};
var sp11clickcount=0;
$(document).ready(function () {
	$('span.star2').raty({
		readOnly: true,  
		score: function() {
		    return $(this).attr('data-score');
		  },
	 	 /*  half: true, */
	 	 /*  hints: ['a', null, '', undefined, '*_*'], */
	 	 /*   target : '#hint', 
	 	  targetType : 'score',
	 	  targetFormat : 'Rating: {score}', */
	 	  targetScore: '#hint'
	});
	$('span.star3').raty({
		  score: function() {
		    return $(this).attr('data-score');
		  },
	 	  targetScore: '#hint'
	});
	$('p.star2').raty({
		readOnly: true,
		  score: function() {
		    return $(this).attr('data-score');
		  },
	 	  targetScore: '#hint'
	});
	var icons = {
    		header: "ui-icon-difult",
    		activeHeader: "ui-icon-active"
    };
	$( ".accordion1" ).accordion({
    	header: "> div > .btAccodion1",
    	collapsible: true,
    	heightStyle: "content",
    	active: 0,
    	icons: icons
	    }).sortable({
	        axis: "y",
	        handle: ".btAccodion1",
	        stop: function( event, ui ) {
	          ui.item.children( ".btAccodion1" ).triggerHandler( "focusout" );
	          $( this ).accordion( "refresh" );
	        }
	});
	$( ".accordion2" ).accordion({
    	header: "> div > .btAccodion2",
    	collapsible: true,
    	heightStyle: "content",
    	active: true,
    	icons: icons
	    }).sortable({
	        axis: "y",
	        handle: ".btAccodion2",
	        stop: function( event, ui ) {
	          ui.item.children( ".btAccodion2" ).triggerHandler( "focusout" );
	          $( this ).accordion( "refresh" );
	        }
	});
	$( ".accordion3" ).accordion({
    	header: "> .btAccodion3",
    	collapsible: true,
    	heightStyle: "content",
    	active: true,
    	icons: icons
	    }).sortable({
	        axis: "y",
	        handle: ".btAccodion3",
	        stop: function( event, ui ) {
	          ui.item.children( ".btAccodion3" ).triggerHandler( "focusout" );
	          $( this ).accordion( "refresh" );
	        }
	});
	
	$("input[type=reset]").click(function() {
		$(this).parents(".group2").find(".btAccodion2").click();
	});
	
	$(".sumnail1").click(function(){
		var selector=$(this).find("img").attr("alt");
		selector="#"+selector;
		
		$(selector).parents(".group1").find(".btAccodion1").click();
		$(selector).click();
	});
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

	  $(".sp11").click(function() {
		$(this).parents(".div14").remove();
		sp11clickcount++;
		alert(sp11clickcount);
		$(".addimagecon").append(inputFileStr(sp11clickcount));
	});
	
	$(document).on("click","#image-upload4",function(){
		$.uploadPreview({
		    input_field: "#image-upload4",   // Default: .image-upload
		    preview_box: ".image-preview4",  // Default: .image-preview
		    label_field: "#image-label4",    // Default: .image-label
		    label_default: "파일첨부",   // Default: Choose File
		    label_selected: "파일변경",  // Default: Change File
		    no_label: false,                 // Default: false
		    preview_default:"test-failed.png"
		  });
	});
	$(document).on("click","#image-upload5",function(){
		$.uploadPreview({
		    input_field: "#image-upload5",   // Default: .image-upload
		    preview_box: ".image-preview5",  // Default: .image-preview
		    label_field: "#image-label5",    // Default: .image-label
		    label_default: "파일첨부",   // Default: Choose File
		    label_selected: "파일변경",  // Default: Change File
		    no_label: false,                 // Default: false
		    preview_default:"test-failed.png"
		  });
	});
	$(document).on("click","#image-upload6",function(){
		$.uploadPreview({
		    input_field: "#image-upload6",   // Default: .image-upload
		    preview_box: ".image-preview6",  // Default: .image-preview
		    label_field: "#image-label6",    // Default: .image-label
		    label_default: "파일첨부",   // Default: Choose File
		    label_selected: "파일변경",  // Default: Change File
		    no_label: false,                 // Default: false
		    preview_default:"test-failed.png"
		  });
	});

});
</script>
<div class="mainSection">
	<div class="location1">
		<ul>
			<li>
				<a href="">홈</a>
			</li>
			<li>&gt;</li>
			<li><b>${shop.shopCategori}</b></li>
			<li>
				<label class="switch">
					<input type="checkbox" id="bookmark">
					<span class="slider round"></span>
				</label>
				<label for="bookmark" class="cursor-pointer"><b>즐겨찾기</b></label>
			</li>
		</ul>
	</div>
	<div class="contain1">
		<div>
			<ul class="ul1 align-middle">
				<li class="font17px"><b>${shop.shopName}</b></li>
				<li>|</li>
				<li>${shop.address}</li>
				<li>|</li>
				<li>
					<span class="star2" data-score="${shop.shopAvgreview}"></span>
					<b>${shop.shopReviewcnt}명</b>
				</li>
				<li><span class="spbrownbox padding3px">포인트적립</span></li>
			</ul>
		</div>
	</div>
	<div class="ma-t-20px flex">
		<div class="ma-r-30px flex3">
			<!-- 메뉴영역 -->
			<div class="contain2">
				<div class="flex">
					<div class="flex flex1 align-center" id="menu">
						<a class="padding15px flex1">
							<img alt="메뉴" src="<c:url value='/images/menu.png'/>">
							<span class="font1-1em"><b>메뉴</b></span>
						</a>
					</div>
					<div class="flex flex1 align-center bgbrown ">
						<a class="padding15px flex1" href="#review">
							<img alt="리뷰" src="<c:url value='/images/edit.png'/>">
							<span class="font1-1em"><b>리뷰</b></span>
						</a>
					</div>
				</div>
				<div class="accordion1 contain3">
					<!-- 추천메뉴 -->
					<div class="group1">
						<div class="btAccodion1">
							<div class="inline-block">
								<b>추천메뉴</b>
							</div>
						</div>
					    <div>
					    	<!-- 섬네일반복 -->
							<div class="sumnail1">
								<div class="card">
									<img alt="m2" src="">
									<div class="contain3">
										<p>리치골드피자</p>
										<p><b>15,000원</b></p>
									</div>
								</div>
							</div>
					    	<!-- /섬네일반복 -->
					    	<!-- 섬네일반복 -->
							<div class="sumnail1">
								<div class="card">
									<img alt="m2" src="">
									<div class="contain3">
										<p>리치골드피자</p>
										<p><b>15,000원</b></p>
									</div>
								</div>
							</div>
					    	<!-- /섬네일반복 -->
					    	<!-- 섬네일반복 -->
							<div class="sumnail1">
								<div class="card">
									<img alt="m2" src="">
									<div class="contain3">
										<p>리치골드피자</p>
										<p><b>15,000원</b></p>
									</div>
								</div>
							</div>
					    	<!-- /섬네일반복 -->
					    	<!-- 섬네일반복 -->
							<div class="sumnail1">
								<div class="card">
									<img alt="m2" src="">
									<div class="contain3">
										<p>리치골드피자</p>
										<p><b>15,000원</b></p>
									</div>
								</div>
							</div>
					    	<!-- /섬네일반복 -->
					    </div>
					</div>
					<!-- /추천메뉴 -->
					<!-- 카테고리반복 -->
					<div class="group1">
						<div class="btAccodion1">
							<div class="inline-block">
								<b>모밀 Set</b>
								<p class="sp2">- 곱배기 추가시 2,000원</p>
							</div>
						</div>
					    <div class="accordion2">
							<!-- 메뉴반복 -->
					    	<div class="group2">
								<div class="btAccodion2" id="m1">
									<span>1.만두+냉모밀1</span>
									<p class="sp2">설명1</p>
								</div>
							    <div>
							    	  <!-- 컨텐츠내용 -->
								      <p>
								      	<img class="img1" alt="메뉴" src="">
								      	<span class="font0-8em">설명1</span>
								      </p>
								      <!-- 옵션반복 -->
								      <div class="paddingCol20px font0-9em">
									      <p><b>가격<span class="color-orange">(필수선택)</span></b></p>
									      <p>
									      	<label><input type="radio" name="op1">15,000원</label>
									      	<label><input type="radio" name="op1">17,000원</label>
									      </p>
								      </div>
								      <!-- /옵션반복 -->
								      <!-- 추가선택 -->
								      <div class="paddingCol20px font0-9em">
									      <p><b>추가선택<span class="color-orange">(1개이상 선택가능)</span></b></p>
									      <p>
									      	<label><input type="checkbox" name="op2">공기밥1,000원</label>
									      	<label><input type="checkbox" name="op3">사리추가2,000원</label>
									      </p>
								      </div>
							      	  <!-- 추가선택 -->
							      	  <div class="paddingCol20px flex">
							      	  	<input class="flex3 btblack padding15px font1-2em" type="button" value="장바구니 담기">
							      	  	<input class="flex1 btgray padding15px font1-2em" type="reset" value="취소">
							      	  </div>
							    </div>
							</div>
					    	<!-- /메뉴반복 -->
					    	<!-- 메뉴반복 -->
					    	<div class="group2">
								<div class="btAccodion2"  id="m2">
									<span>1.만두+냉모밀1</span>
									<p class="sp2">설명1</p>
								</div>
							    <div>
							    	  <!-- 컨텐츠내용 -->
								      <p>
								      	<img class="img1" alt="메뉴" src="">
								      	<span class="font0-8em">설명1</span>
								      </p>
								      <!-- 옵션반복 -->
								      <div class="paddingCol20px font0-9em">
									      <p><b>가격<span class="color-orange">(필수선택)</span></b></p>
									      <p>
									      	<label><input type="radio" name="op1">15,000원</label>
									      	<label><input type="radio" name="op1">17,000원</label>
									      </p>
								      </div>
								      <!-- /옵션반복 -->
								      <!-- 추가선택 -->
								      <div class="paddingCol20px font0-9em">
									      <p><b>추가선택<span class="color-orange">(1개이상 선택가능)</span></b></p>
									      <p>
									      	<label><input type="checkbox" name="op2">공기밥1,000원</label>
									      	<label><input type="checkbox" name="op3">사리추가2,000원</label>
									      </p>
								      </div>
							      	  <!-- 추가선택 -->
							      	  <div class="paddingCol20px flex">
							      	  	<input class="flex3 btblack padding15px font1-2em" type="button" value="장바구니 담기">
							      	  	<input class="flex1 btgray padding15px font1-2em" type="reset" value="취소">
							      	  </div>
							    </div>
							</div>
					    	<!-- /메뉴반복 -->
					    </div>
					</div>
					<!-- /카테고리반복 -->
					<div class="group1">
						<div class="btAccodion1">
							<div class="inline-block">
								<b>모밀 Set</b>
								<p class="sp2">- 곱배기 추가시 2,000원</p>
							</div>
						</div>
					    <div class="accordion2">
					    	<div class="group2">
								<div class="btAccodion2"  id="m3">
									<span>1.만두+냉모밀1</span>
								</div>
							    <div>
							      <p>컨텐츠</p>
							    </div>
							</div>
					    </div>
					</div>
					<!-- 카테고리반복 -->
					<br>
				</div>				
				<!-- 원산지영역 -->
				<div class="contain4">
					<p class="paddingCol5px"><b>원산지</b></p>
					<p class="paddingCol5px">${shop.shopOrigin}</p>
				</div>
				<!-- 원산지영역 -->
			</div>
			<!-- 리뷰영역 -->
			<div class="contain2 ma-t-20px">
				<div class="flex">
					<div class="flex flex1 align-center bgbrown">
						<a class="padding15px flex1" href="#menu">
							<img alt="" src="<c:url value='/images/menu.png'/>">
							<span class="font1-1em"><b>메뉴</b></span>
						</a>
					</div>
					<div class="flex flex1 align-center" id="review">
						<a class="padding15px flex1">
							<img alt="" src="<c:url value='/images/edit.png'/>">
							<span class="font1-1em"><b>리뷰</b></span>
						</a>
					</div>
				</div>
				<!-- 리뷰작성하기 -->
				<div class="border-bottom1">
					<fieldset class="fieldset2 accordion3">
						<legend class="font1-4em"><b>리뷰작성하기</b></legend>
						<span class="sp8 btAccodion3"></span>
						<form class="form1" action="">
							<p class="p4">
								<span class="align-middle">별점</span>
								<span class="star3" data-score="5"></span>
							</p>
							<p class="p4">닉네임 <b>csu1190</b></p>
							<textarea class="ta1" wrap="virtual" placeholder="솔직한 의견도 좋지만 무조건적인 비방글은 삼가주세요
(한글 15자 이상 최대 400자 까지 작성 가능합니다.)"></textarea>
							<p class="overflow-hidden"><span class="float-right sp2">0/400</span></p>
							<p class="p4">
								<b class="align-middle">사진첨부</b>
								<span class="sp2 align-middle">이미지 파일 (GIF,PNG,JPG)을 기준으로 최대 10MB이하, 최대 3개까지 등록가능 합니다.</span>
							</p>
							<div class="div1">
								<div class="profile2 flex1">
									<div class="image-preview1">
										<input type="file" name="image" id="image-upload1" />
									</div>
									<label for="image-upload1" id="image-label1">파일첨부</label>
								</div>
								<div class="profile2 flex1">
									<div class="image-preview2">
										<input type="file" name="image" id="image-upload2" />
									</div>
									<label for="image-upload2" id="image-label2">파일첨부</label>
								</div>
								<div class="profile2 flex1">
									<div class="image-preview3">
										<input type="file" name="image" id="image-upload3" />
									</div>
									<label for="image-upload3" id="image-label3">파일첨부</label>
								</div>
							</div>
							<div class="flex">
								<input class="flex3 btblack bt3" type="submit" value="리뷰 작성 완료">
								<input class="flex1 btbrown bt3" type="button" value="취소">
							</div>
						</form>
					</fieldset>
				</div>
				<!-- /리뷰작성하기 -->
				<div class="contain3">
					<!-- 리뷰내용 -->
					<div class="contain3 font16px ma-b-15px">
						<div class="flex">
							<div class="flex1 img2">
								<img class="fullwidth" alt="profil" src="">
							</div>
							<div class="flex5 paddingCol5px">
								<ul class="ul2">
									<li><b class="font16px">아이디4글자이후**</b></li>
									<li>|</li>
									<li>2016-01-01</li>
								</ul>
								<p class="star2" data-score="3.6"></p>
								<p>리뷰내용<br>
								리뷰내용<br>
								리뷰내용<br>
								리뷰내용<br>
								</p>
								<!-- 리뷰이미지 -->
								<p class="p5">
									<img alt="리뷰 이미지" src="">
								</p>
							</div>
						</div>
						<!-- 리플내용 -->
						<div class="flex">
							<div class="flex1">
							</div>
							<div class="flex5 bgbrown padding10px ma-l-10px">
								<ul class="ul2">
									<li><b class="font16px">사장님</b></li>
									<li>|</li>
									<li>2016-01-01</li>
								</ul>
								<p>아이디4글자이후**님,감사합니다.</p>
							</div>
						</div>
						<!-- 리플내용 -->
					</div>
					<!-- 리뷰내용 -->
					<!-- 리뷰내용 -->
					<div class="contain3 font16px ma-b-15px">
						<div class="flex">
							<div class="flex1 img2">
								<img class="fullwidth" alt="profil" src="">
							</div>
							<div class="flex5 paddingCol5px">
								<ul class="ul2">
									<li><b class="font16px">아이디4글자이후**</b></li>
									<li>|</li>
									<li>2016-01-01</li>
								</ul>
								<p class="star2" data-score="3.6"></p>
								<p>리뷰내용<br>
								리뷰내용<br>
								리뷰내용<br>
								리뷰내용<br>
								</p>
								<!-- 리뷰이미지 -->
								<p class="p5">
									<img alt="리뷰 이미지" src="">
								</p>
							</div>
						</div>
						<!-- 리플내용 -->
						<div class="flex">
							<div class="flex1">
							</div>
							<div class="flex5 bgbrown padding10px ma-l-10px">
								<ul class="ul2">
									<li><b class="font16px">사장님</b></li>
									<li>|</li>
									<li>2016-01-01</li>
								</ul>
								<p>아이디4글자이후**님,감사합니다.</p>
							</div>
						</div>
						<!-- 리플내용 -->
					</div>
					<!-- 리뷰내용 -->
					<!-- 리뷰내용 -->
					<div class="contain3 font16px ma-b-15px">
						<div class="flex">
							<div class="flex1 img2">
								<img class="fullwidth" alt="profil" src="">
							</div>
							<div class="flex5 paddingCol5px">
								<ul class="ul2">
									<li><b class="font16px">아이디4글자이후**</b></li>
									<li>|</li>
									<li>2016-01-01</li>
									<li><span class="btbrown1">삭제</span></li>
									<li><span class="btbrown1">수정</span></li>
								</ul>
								<div class="review">
									<p class="star2" data-score="3.6"></p>
									<p>리뷰내용<br>
									리뷰내용<br>
									리뷰내용<br>
									리뷰내용<br>
									</p>
									<!-- 리뷰이미지 -->
									<p class="p5">
										<img alt="리뷰 이미지" src="">
									</p>
								</div>
								<form class="form1" action="">
									<p class="p4">
										<span class="align-middle">별점</span>
										<span class="star3" data-score="5"></span>
									</p>
									<p class="p4">닉네임 <b>csu1190</b></p>
									<textarea class="ta2" wrap="virtual"></textarea>
									<p class="overflow-hidden"><span class="float-right sp2">0/400</span></p>
									<p class="p4">
										<b class="align-middle">사진첨부</b>
										<span class="sp2 align-middle">이미지 파일 (GIF,PNG,JPG)을 기준으로 최대 10MB이하, 최대 3개까지 등록가능 합니다.</span>
									</p>
									<div class="fullwidth addimagecon">
										<!-- 이미지 -->
										<div class="div14 paddingtype1 align-middle">
											<span class="sp11">&times;</span>
											<img alt="" src="<c:url value='/images/temp/a.jpg'/>">
										</div>
										<!-- 이미지 -->
										<!-- 이미지 -->
										<div class="div14 paddingtype1 align-middle">
											<span class="sp11">&times;</span>
											<img alt="" src="<c:url value='/images/temp/a.jpg'/>">
										</div>
										<!-- 이미지 -->
										<!-- 이미지 -->
										<div class="div14 paddingtype1 align-middle">
											<span class="sp11">&times;</span>
											<img alt="" src="<c:url value='/images/temp/a.jpg'/>">
										</div>
										<!-- 이미지 -->
									</div>
									<div class="flex clear-both">
										<input class="flex3 btblack bt3" type="submit" value="리뷰 작성 완료">
										<input class="flex1 btbrown bt3" type="button" value="취소">
									</div>
								</form>
							</div>
						</div>
						<!-- 리플내용 -->
						<div class="flex">
							<div class="flex1">
							</div>
							<div class="flex5 bgbrown padding10px ma-l-10px">
								<ul class="ul2">
									<li><b class="font16px">사장님</b></li>
									<li>|</li>
									<li>2016-01-01</li>
								</ul>
								<p>아이디4글자이후**님,감사합니다.</p>
							</div>
						</div>
						<!-- 리플내용 -->
					</div>
					<!-- 리뷰내용 -->
				</div>
			</div>
		</div>
		<div class="flex1">
			<!-- 업소상세정보영역 -->
			<div class="contain2">
				<div class="border-bottom1 font16px padding10px"><b>업소상세정보</b></div>
				<dl class="font13px padding10px dl1">
					<dt>최소금액</dt>
					<dd class="ma-l-60px">
					<fmt:formatNumber pattern="#,###" value="${shop.shopMinprice}"/>
					원 부터
					</dd>
					<dt>운영시간</dt>
					<dd class="ma-l-60px">
					${shop.shopOpentime}
					~ ${shop.shopClosetime}
					</dd>
					<dt>전화번호</dt>
					<dd class="ma-l-60px color-orange"><b>${shop.shopTel}</b></dd>
					<dt>업소소개</dt>
					<dd class="ma-l-60px">${shop.shopExplain}</dd>
				</dl>
			</div>
			<!-- 장바구니영역 -->
			<div class="contain2 ma-t-20px"  data-spy="affix" data-offset-top="772">
				<div class="border-bottom1 font16px padding10px">
					<b>장바구니 <span class="color-orange">X개</span></b>
				</div>
				
				<!-- 장바구니메뉴추가부분 -->
				<form class="font14px" action="<c:url value='/order/client_order_info.do'/> ">
					<!-- 각 메뉴 -->
					<div class="accordion2">
						<div class="padding10px">
							<span class="sp12">탕수육+짬뽕</span>
							<input class="textsize1 " type="text">개
							<input class="align-middle bt7" type="button" value="X">
						</div>
						<div class="border-bottom1">
							<p class="btAccodion2"><b class="sp13">14,000원</b></p>
							<div class="padding10px div15">
								<span class="float-left"><b>가격:</b></span>
								<span class="float-right">+ 14,000원</span>
							</div>
						</div>
					</div>
					<!-- 각 메뉴 -->
					<!-- 주문합계부분 -->
					<div>
						<div class="padding10px align-right">
							<p><b class="font15px">주문합계</b></p>
							<p class="color-orange font18px"><b>54,000</b>원</p>
							<p class="color-silver font13px">[최소주문금액:10,000원]</p>
						</div>
						<!-- 주문합계부분 -->
						<input class="btbrown bt8" type="submit" value="주문하기">
					</div>
				</form>
				<!-- 장바구니메뉴추가부분 -->
				
			</div>
		</div>
	</div>
</div>
<%@ include file="../inc/bottom.jsp" %>