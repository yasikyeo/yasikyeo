<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="eg" tagdir="/WEB-INF/tags" %>
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
				str+='<input type="file" name="image" class="image-upload'+(i+3)+'" id="imageinput'+(i+3)+'"/>';
			str+='</div>';
			str+='<label for="imageinput'+(i+3)+'" class="image-label'+(i+3)+'">파일첨부</label>';
		str+='</div>';
	str+='</div>';
	return str;
};
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
	 	  half: true,
	 	  targetScore: '#hint'
	});
	$('span.star3').raty({
		  score: function() {
		    return $(this).attr('data-score');
		  },
		  half: true,
		  target : '#star3',
		  targetType : 'score',
		  targetKeep : true,
	 	  targetScore: '#hint'
	});
	$('span.star4').raty({
		  score: function() {
		    return $(this).attr('data-score');
		  },
		  half: true,
		  target : '.star4',
		  targetType : 'score',
		  targetKeep : true,
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
    	active: 0,
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
		var inputimageCnt = $(this).parents(".addimagecon").find("input[type=file]").length;
		$(this).parents(".addimagecon").append(inputFileStr(inputimageCnt+1));
		var imageStr = $(this).parents(".div14").find("input[type=hidden]").val();
		
		if($(".deleteImage1").val().length<1){
			$(".deleteImage1").val(imageStr);
		}else if($(".deleteImage2").val().length<1){
			$(".deleteImage2").val(imageStr);
		}else if($(".deleteImage3").val().length<1){
			$(".deleteImage3").val(imageStr);
		}
		
		$(this).parents(".div14").remove();
	});
	
	$(document).on("click",".image-upload4",function(){
		$.uploadPreview({
		    input_field: ".image-upload4",   // Default: .image-upload
		    preview_box: ".image-preview4",  // Default: .image-preview
		    label_field: ".image-label4",    // Default: .image-label
		    label_default: "파일첨부",   // Default: Choose File
		    label_selected: "파일변경",  // Default: Change File
		    no_label: false,                 // Default: false
		    preview_default:"test-failed.png"
		  });
	});
	$(document).on("click",".image-upload5",function(){
		$.uploadPreview({
		    input_field: ".image-upload5",   // Default: .image-upload
		    preview_box: ".image-preview5",  // Default: .image-preview
		    label_field: ".image-label5",    // Default: .image-label
		    label_default: "파일첨부",   // Default: Choose File
		    label_selected: "파일변경",  // Default: Change File
		    no_label: false,                 // Default: false
		    preview_default:"test-failed.png"
		  });
	});
	$(document).on("click",".image-upload6",function(){
		$.uploadPreview({
		    input_field: ".image-upload6",   // Default: .image-upload
		    preview_box: ".image-preview6",  // Default: .image-preview
		    label_field: ".image-label6",    // Default: .image-label
		    label_default: "파일첨부",   // Default: Choose File
		    label_selected: "파일변경",  // Default: Change File
		    no_label: false,                 // Default: false
		    preview_default:"test-failed.png"
		  });
	});
	//로그인 버튼
	$("#loginbt").click(function() {
		$( ".modal" ).show();
	});

	//북마크유무
	if(${bookmarkcnt}>0){
		$("#bookmark").prop('checked', true);
	}
	$("#bookmark").change(function() {
		if($("#bookmark").is(":checked")){
			$.ajax({
				url:"<c:url value='/addBookmark.do' />",
				type:"GET",
				data:"shopNo=${param.no}", //요청 파라미터
				success:function(res){
					alert("즐겨찾기가 등록되었습니다.");					
				},
				error:function(xhr, status, error){
					alert(status+" : " + error);
				}
			});	
		}else{
			$.ajax({
				url:"<c:url value='/deleteBookmark.do' />",
				type:"GET",
				data:"shopNo=${param.no}", //요청 파라미터
				success:function(res){
					alert("즐겨찾기가 삭제되었습니다.");					
				},
				error:function(xhr, status, error){
					alert(status+" : " + error);
				}
			});	
		}
	});
	if(${orderCnt}>0){
		$(".fieldset2").show();
	}else{
		$(".fieldset2").hide();
	}
});
function pageProc(curPage){
	document.frmPage.currentPage.value=curPage;
	document.frmPage.submit();
}
</script>
<form name="frmPage" method="post" id="frmPage"
	action="<c:url value='/shop/client_shop_det.do?no=${param.no}'/>">
	<input type="hidden" name="currentPage" id="currentPage" value="${searchVO.currentPage}">
	<input type="hidden" name="searchKeyword" 
		value="${searchVO.searchKeyword }">	
</form>
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
					    	<c:forEach var="product" items="${productList}">
								<c:if test="${product.productRecommend=='Y'}">
									<div class="sumnail1">
										<div class="card">
											<img alt="${product.productNo }" src="<c:url value='/product_Image/${product.productImage}'/>">
											<div class="contain3">
												<p>${product.productName }</p>
												<p><b>
													<c:set var="pricearr1" value="${product.productPrice}"/>
													<c:set var="price1" value="${fn:split(pricearr1,'/')[0]}"/>
													${price1}원
												</b></p>
											</div>
										</div>
									</div>
								</c:if>
					    	</c:forEach>
					    	<!-- /섬네일반복 -->
					    </div>
					</div>
					<!-- /추천메뉴 -->
					<!-- 카테고리반복 -->
					<c:if test="${!empty cateList}">
						<c:forEach var="cate" items="${cateList}">
							<div class="group1">
								<div class="btAccodion1">
									<div class="inline-block">
										<b>${cate.categoriName}</b>
										<p class="sp2">${cate.categoriExplain}</p>
									</div>
								</div>
							    <div class="accordion2">
							    	<c:forEach var="product" items="${productList}">
							    		<c:if test="${product.categoriNo==cate.categoriNo}">
											<!-- 메뉴반복 -->
									    	<div class="group2 menu1">
												<div class="btAccodion2" id="${product.productNo }">
													<span class="productName">${product.productName}</span>
													<p class="sp2">${product.productExplain}</p>
												</div>
											    <div>
											    	  <!-- 컨텐츠내용 -->
												      <p>
												      	<img class="img1" alt="${product.productImage}" src="<c:url value='/product_Image/${product.productImage}'/>">
												      	<span class="font0-8em">${product.productExplain}</span>
												      </p>
												      <!-- 옵션반복 -->
												      <div class="paddingCol20px font0-9em">
													      <p><b>가격<span class="color-orange">(필수선택)</span></b></p>
													      <p>
													      	<c:set var="pricearr" value="${product.productPrice}"/>
													      	<c:set var="price" value="${fn:split(pricearr,'/')}"/>
													      	<c:set var="a" value="0"/>
													      	<c:forEach var="pri" items="${price}">
														      	<c:set var="a" value="${a+1}"/>
														      	<c:set var="pri1" value="${fn:split(pri,' ')[0]}"/>
														      	<c:set var="pri2" value="${fn:split(pri,' ')[1]}"/>
														      	<label>
														      		<c:if test="${empty pri2}">
															      		<input type="radio" name="price" id="pr${a}" value="${pri1}">
															      		<fmt:formatNumber value="${pri1}" pattern="#,###" type="number"/>원
														      		</c:if>
														      		<c:if test="${!empty pri2}">
															      		<input type="radio" name="price" id="pr${a}" value="${pri1}/${pri2}">${pri1}
															      		<fmt:formatNumber value="${pri2}" pattern="#,###" type="number"/>원
														      		</c:if>
														      	</label>
													      	</c:forEach>
													      </p>
												      </div>
												      <!-- /옵션반복 -->
												      <!-- 추가선택 -->
												      <div class="paddingCol20px font0-9em">
													      <p><b>추가선택<span class="color-orange">(추가로 1개 선택가능)</span></b></p>
													      <p>
													      	<c:set var="optarr" value="${product.productOption}"/>
													      	<c:set var="option" value="${fn:split(optarr,'/')}"/>
													      	<c:set var="i" value="0"/>
													      	<c:forEach var="opt" items="${option}">
													      	<c:set var="i" value="${i+1}"/>
													      	<c:set var="opt1" value="${fn:split(opt,' ')[0]}"/>
													      	<c:set var="opt2" value="${fn:split(opt,' ')[1]}"/>
														      	<label>
														      		<input type="checkbox" id="op${i}" value="${opt1}/${opt2}">${opt1}<fmt:formatNumber value="${opt2}" pattern="#,###" type="number"/>원
														      	</label>
													      	</c:forEach>
													      </p>
												      </div>
											      	  <!-- /추가선택 -->
											      	  <div class="paddingCol20px flex">
											      	  	<input class="flex3 btblack padding15px font1-2em cartadd" type="button" value="장바구니 담기">
											      	  	<input class="flex1 btgray padding15px font1-2em" type="reset" value="취소">
											      	  </div>
											    </div>
											</div>
									    	<!-- /메뉴반복 -->
							    		</c:if>
							    	</c:forEach>
							    </div>
							</div>
							<!-- /카테고리반복 -->
						</c:forEach>
					</c:if>
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
						<legend class="font1-4em" id="writeReview"><b>리뷰작성하기</b></legend>
						<span class="sp8 btAccodion3"></span>
						<form class="form1" action="<c:url value='/addreview.do' />" method="post" enctype="multipart/form-data">
							<p class="p4">
								<span class="align-middle">별점</span>
								<span class="star3" data-score="5"></span>
								<input type="hidden" name="reviewStarscore" id="star3">
							</p>
							<p class="p4">닉네임 <b>${memberVo.memberNickname}</b><input type="hidden" value="${memberVo.memberNickname}" name="reviewNickname"></p>
							<textarea class="ta1" wrap="virtual" placeholder="솔직한 의견도 좋지만 무조건적인 비방글은 삼가주세요
(한글 15자 이상 최대 400자 까지 작성 가능합니다.)" name="reviewContent"></textarea>
							<p class="overflow-hidden"><span class="float-right sp2">0/400</span></p>
							<p class="p4">
								<b class="align-middle">사진첨부</b>
								<span class="sp2 align-middle">이미지 파일 (GIF,PNG,JPG)을 기준으로 최대 10MB이하, 최대 3개까지 등록가능 합니다.</span>
							</p>
							<div class="div1">
								<div class="profile2 flex1">
									<div class="image-preview1">
										<input type="file" name="img1" id="image-upload1" accept=".gif, .jpg, .png"/>
									</div>
									<label for="image-upload1" id="image-label1">파일첨부</label>
								</div>
								<div class="profile2 flex1">
									<div class="image-preview2">
										<input type="file" name="img2" id="image-upload2" accept=".gif, .jpg, .png"/>
									</div>
									<label for="image-upload2" id="image-label2">파일첨부</label>
								</div>
								<div class="profile2 flex1">
									<div class="image-preview3">
										<input type="file" name="img3" id="image-upload3" accept=".gif, .jpg, .png"/>
									</div>
									<label for="image-upload3" id="image-label3">파일첨부</label>
								</div>
							</div>
							<input type="hidden" value="${memberVo.memberNo}" name="memberNo">
							<input type="hidden" value="${param.no}" name="shopNo">
							<div class="flex">
								<input class="flex3 btblack bt3" type="submit" value="리뷰 작성 완료">
								<input class="flex1 btbrown bt3" type="button" value="취소">
							</div>
						</form>
					</fieldset>
				</div>
				<!-- /리뷰작성하기 -->
				<div class="contain3">
					<c:forEach var="map" items="${reviewMap}">
						<!-- 리뷰내용 -->
						<div class="contain3 font16px ma-b-15px reviewcontain" id="review"+${map['REVIEW_NO']}>
							<div class="flex">
								<div class="flex1 img2">
									<img class="fullwidth" alt="profil" src="<c:url value='/profile_Image/${map["MEMBER_IMAGE"]}'/> ">
								</div>
								<div class="flex5 paddingCol5px">
									<ul class="ul2">
										<li><b class="font16px">
											<c:if test="${fn:length(map['REVIEW_NICKNAME'])>4}">
												${fn:substring(map['REVIEW_NICKNAME'], 0,4)}...
											</c:if>
											<c:if test="${fn:length(map['REVIEW_NICKNAME'])<=4}">
												${map['REVIEW_NICKNAME']}
											</c:if>
											</b>
										</li>
										<li>|</li>
										<li><fmt:formatDate value="${map['REVIEW_REGDATE']}" pattern="YYYY-MM-dd"/></li>
										<c:if test="${map['MEMBER_NO']==memberVo.memberNo}">
											<li><span class="btbrown1 deletebt">삭제</span></li>
											<li><span class="btbrown1 updatebt">수정</span></li>
										</c:if>
									</ul>
									<div class="review">
										<p class="star2" data-score="${map['REVIEW_STARSCORE']}"></p>
										<eg:to-string var="textValue" value="${map['REVIEW_CONTENT']}"/>
										<p><c:out value="${textValue}"/> </p>
										<!-- 리뷰이미지 -->
										<c:if test="${!empty map['REVIEW_IMAGE1']}">
											<p class="p5">
												<img alt="리뷰 이미지" src="<c:url value='/review_Image/${map["REVIEW_IMAGE1"]}'/> ">
											</p>
										</c:if>
										<c:if test="${!empty map['REVIEW_IMAGE2']}">
											<p class="p5">
												<img alt="리뷰 이미지" src="<c:url value='/review_Image/${map["REVIEW_IMAGE2"]}'/> ">
											</p>
										</c:if>
										<c:if test="${!empty map['REVIEW_IMAGE3']}">
											<p class="p5">
												<img alt="리뷰 이미지" src="<c:url value='/review_Image/${map["REVIEW_IMAGE3"]}'/> ">
											</p>
										</c:if>
									</div>
									<form class="form1 f3" action="<c:url value='/updatereview.do'/>" method="post" enctype="multipart/form-data">
										<p class="p4">
											<span class="align-middle">별점</span>
											<span class="star4" data-score="5"></span>
											<input type="hidden" name="reviewVo.reviewStarscore" class="star4">
										</p>
										<p class="p4">닉네임 <b>${map['REVIEW_NICKNAME']}</b></p>
										<textarea class="ta2" wrap="virtual" name="reviewVo.reviewContent"><c:out value="${textValue}"/></textarea>
										<p class="overflow-hidden"><span class="float-right sp2">0/400</span></p>
										<p class="p4">
											<b class="align-middle">사진첨부</b>
											<span class="sp2 align-middle">이미지 파일 (GIF,PNG,JPG)을 기준으로 최대 10MB이하, 최대 3개까지 등록가능 합니다.</span>
										</p>
										<div class="fullwidth addimagecon">
											<c:set var="x" value="3"/>
											<c:if test="${!empty map['REVIEW_IMAGE1']}">
												<c:set var="x" value="${x-1}"/>
												<!-- 이미지 -->
												<div class="div14 paddingtype1 align-middle">
													<span class="sp11">&times;</span>
													<img alt="" src="<c:url value='/review_Image/${map["REVIEW_IMAGE1"]}'/>">
													<input type="hidden" name="reviewVo.reviewImage1" value="${map['REVIEW_IMAGE1']}">
												</div>
												<!-- 이미지 -->
											</c:if>
											<c:if test="${!empty map['REVIEW_IMAGE2']}">
												<c:set var="x" value="${x-1}"/>
												<!-- 이미지 -->
												<div class="div14 paddingtype1 align-middle">
													<span class="sp11">&times;</span>
													<img alt="" src="<c:url value='/review_Image/${map["REVIEW_IMAGE2"]}'/>">
													<input type="hidden" name="reviewVo.reviewImage2" value="${map['REVIEW_IMAGE2']}">
												</div>
												<!-- 이미지 -->
											</c:if>
											<c:if test="${!empty map['REVIEW_IMAGE3']}">
												<c:set var="x" value="${x-1}"/>
												<!-- 이미지 -->
												<div class="div14 paddingtype1 align-middle">
													<span class="sp11">&times;</span>
													<img alt="" src="<c:url value='/review_Image/${map["REVIEW_IMAGE3"]}'/>">
													<input type="hidden" name="reviewVo.reviewImage3" value="${map['REVIEW_IMAGE3']}">
												</div>
												<!-- 이미지 -->
											</c:if>
											<c:forEach begin="1" end="${x}" var="z">
												<div class="inputimgcon1 paddingtype1 align-middle">
													<div class="profile2">
														<div class="image-preview${z+3}">
															<input type="file" name="image" class="image-upload${z+3}" id="imageinput${z+3}"/>
														</div>
														<label for="imageinput${z+3}" class="image-label${z+3}">파일첨부</label>
													</div>
												</div>
											</c:forEach>
										</div>
										<input type="hidden" name="deleteImage1" class="deleteImage1">
										<input type="hidden" name="deleteImage2" class="deleteImage2">
										<input type="hidden" name="deleteImage3" class="deleteImage3">
										<input type="hidden" name="reviewVo.reviewNo" value="${map['REVIEW_NO']}" class="reviewNo">
										<input type="hidden" name="reviewVo.reviewNickname" value="${memberVo.memberNickname}">
										<input type="hidden" name="reviewVo.shopNo" value="${map['SHOP_NO']}">
										<div class="flex clear-both">
											<input class="flex3 btblack bt3" type="submit" value="리뷰 작성 완료">
											<input class="flex1 btbrown bt3" type="button" value="취소">
										</div>
									</form>
								</div>
							</div>
							<c:forEach var="repl" items="${reviewReply}">
								<c:if test="${repl.reviewNo==map['REVIEW_NO']}">
									<!-- 리플내용 -->
									<div class="flex">
										<div class="flex1">
										</div>
										<div class="flex5 bgbrown padding10px ma-l-10px">
											<ul class="ul2">
												<li><b class="font16px">사장님</b></li>
												<li>|</li>
												<li><fmt:formatDate value="${repl.replyRegdate}" pattern="YYYY-MM-dd"/></li>
											</ul>
											<p>${repl.replyContent}</p>
										</div>
									</div>
									<!-- 리플내용 -->
								</c:if>
							</c:forEach>
						</div>
						<!-- 리뷰내용 -->
					</c:forEach>
				</div>
				<div class="vertical-container">
		 			<ul class="pagination">
		 				<!-- 이전 블럭으로 이동 -->
						<c:if test="${pagingInfo.firstPage>1 }">	
		 					<li><a href="#" onclick="pageProc(${pagingInfo.firstPage-1})">&laquo;</a></li>
						</c:if>
						<!-- 페이지 번호 추가 -->						
						<!-- [1][2][3][4][5][6][7][8][9][10] -->
						<c:forEach var="i" begin="${pagingInfo.firstPage }" 
							end="${pagingInfo.lastPage }">	 
							<c:if test="${i==pagingInfo.currentPage }">
								<li><a class="active">${i}</a></li>
							</c:if>		
							<c:if test="${i!=pagingInfo.currentPage }">
								<li><a href="#" onclick="pageProc(${i})">${i}</a></li>
							</c:if>
						</c:forEach>	
						<!--  페이지 번호 끝 -->
		 				<!-- 다음 블럭으로 이동 -->
						<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">	
							<li><a href="#" onclick="pageProc(${pagingInfo.lastPage+1})">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
				<br>
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
					<b>장바구니 <span class="color-orange" id="cartcnt"></span></b>
				</div>
				<!-- 로그인을 안했을때 -->
				<c:if test="${empty sessionScope.memberId }">
					<div class="div28">
						<p>바로결제를 하시려면</p>
						<p>로그인을 해주세요<p>
					</div>
					<input class="btblack bt8" type="submit" value="로그인하기" id="loginbt">
				</c:if>
				<!-- /로그인을 안했을때 -->
				<c:if test="${!empty sessionScope.memberId }">
				<!-- 장바구니메뉴추가부분 -->
					<form class="font14px cartform" action="<c:url value='/order/client_order_info.do'/>" method="post">
						<!-- 각 메뉴 -->
						<!-- <div class="accordion2 cartmenu">
							<div class="padding10px">
								<span class="sp12">탕수육+짬뽕</span>
								<input class="textsize1 cnt" type="number" min="1" value="1">개
								<input class="align-middle bt7" type="button" value="X">
							</div>
							<div class="border-bottom1">
								<p class="btAccodion2">
									<b class="sp13 result1">
										14,000원
									</b>
								</p>
								<div class="padding10px div15">
									<span class="float-left"><b>가격:</b></span>
									<span class="float-right pric1">+ 14,000원</span>
									<span class="float-left"><b>추가선택: 한그릇 곱배기 추가</b></span>
									<span class="float-right pric2">+ 1,000원</span>
								</div>
							</div>
						</div> -->
						<!-- /각 메뉴 -->
						<!-- 주문합계부분 -->
						<%-- <div id="cartsumdiv">
							<div class="padding10px align-right">
								<p><b class="font15px">주문합계</b></p>
								<p class="color-orange font18px"><b id="totalprice1">54,000</b>원</p>
								<p class="color-silver font13px">[최소주문금액:
								<fmt:formatNumber pattern="#,###" value="${shop.shopMinprice}"/>원]</p>
							</div>
							<!-- 주문합계부분 -->
							<input class="btbrown bt8" type="submit" value="주문하기">
						</div> --%>
					</form>
				<!-- 장바구니메뉴추가부분 -->
				</c:if>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function() {
	$(".f3").hide();
	$(".updatebt").click(function() {
		$(this).parents(".reviewcontain").find(".f3").toggle();
		$(this).parents(".reviewcontain").find(".review").toggle();
	});
	$(".deletebt").click(function() {
		var reviewNo = $(this).parents(".reviewcontain").find(".reviewNo").val();
		$(location).attr("href","<c:url value='/deletereview.do?reviewNo="+reviewNo+"'/>");
	});
});
$(document).on("change",".cnt",function () {
	var cnt = $(this).val();
	var price1=$(this).parents(".cartmenu").find(".pric1").text();
	price1=price1.replace(/[^0-9]/g,"");
	var price2=$(this).parents(".cartmenu").find(".pric2").text();
	price2=price2.replace(/[^0-9]/g,"");

	var menuPrice=(cnt*price1)+(cnt*price2);
	$(this).parents(".cartmenu").find(".detTotalprice").val(menuPrice);
	menuPrice = numberWithCommas(menuPrice);
	var menuPriceObj = $(this).parents(".cartmenu").find(".result1");
	menuPriceObj.text(menuPrice+"원");
	
	findtotalsum();
});
//장바구니담기
$(document).on("click",".cartadd",function () {
	var cartmenucnt = $('.cartmenu').length;
	$("#cartcnt").text((cartmenucnt+1)+"개");
	
	var productName = $(this).parents(".menu1").find(".productName").text();
	var pric1=$(this).parents(".menu1").find("input[type=radio]:checked").val();
	var pric2=$(this).parents(".menu1").find("input[type=checkbox]:checked").val();
	var price1=pric1.split("/");
	var pricestr=price1[0];
	var price=price1[1];
	var str ="";
	var hiddenstr="";
	var menuprice=0;
	if(pric2!=null){
		var price2=pric2.split("/");
		var optstr=price2[0];
		var optprice=price2[1];
		if(price==null){
			menuprice=parseInt(pricestr)+parseInt(optprice);
			str = cartmenu(cartmenucnt,productName,(parseInt(pricestr)+parseInt(optprice)),pricestr," ",optprice,optstr);
		}else{
			menuprice=parseInt(price)+parseInt(optprice);
			str = cartmenu(cartmenucnt,productName,(parseInt(price)+parseInt(optprice)),price,pricestr,optprice,optstr);
		}
	}else{
		if(price==null){
			menuprice=pricestr;
			str = cartmenu(cartmenucnt,productName,pricestr,pricestr,"");
		}else{
			menuprice=price;
			str = cartmenu(cartmenucnt,productName,price,price,pricestr);
		}
	}
	$(".cartform").prepend(str);
	
	
	if(cartmenucnt>0){
		var totalprice=$("#totalprice").text().replace(/[^0-9]/g,"");
		totalprice=parseInt(totalprice)+parseInt(menuprice);
		$("#totalmenuprice").val(totalprice);
		$("#totalprice").text(numberWithCommas(totalprice));
	}
	if(cartmenucnt<1){
		var divSumStr=cartsum(menuprice);
		$(".cartform").append(divSumStr);
	}
//------------------------------------------------------	
//아코디언	
	var icons = {
    		header: "ui-icon-difult",
    		activeHeader: "ui-icon-active"
    };
	$(".accordion2").accordion({
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
//---------------------------------------------------------------
	$("input[type=hidden]").hide();
});
//------------장바구니 X 버튼 클릭시---------------------------------
$(document).on("click",".btmenuclose",function(){
	$(this).parents(".cartmenu").remove();
	var cartmenucnt = $('.cartmenu').length;
	$("#cartcnt").text((cartmenucnt)+"개");
	
	if(cartmenucnt>0){
		findtotalsum();
	}
	if(cartmenucnt<1){
		$("#cartcnt").text("");
		$("#cartsumdiv").remove();
	}
	
});
function findtotalsum(){
	var totalprice = 0;
	$(".result1").each(function() {
		totalprice+=parseInt($(this).text().replace(/[^0-9]/g,""));
	});
	
	var totalPriceObj = $("#cartsumdiv").find("#totalprice");
	
	$("#cartsumdiv").find("#totalmenuprice").val(totalprice);
	totalprice = numberWithCommas(totalprice);
	
	totalPriceObj.text(totalprice);
}
function cartmenu(cartcnt,menu,price,price1,pricestr,price2,option) {
	var cartmenustr='';
	cartmenustr+='<div class="accordion2 cartmenu">';
		cartmenustr+='<div class="padding10px">';
			cartmenustr+='<span class="sp12">'+menu+'</span>';
			cartmenustr+='<input class="textsize1 cnt" type="number" min="1" value="1" name="orderDetList['+cartcnt+'].orderdetQty">개';
			cartmenustr+='<input class="align-middle bt7 btmenuclose" type="button" value="X">';
		cartmenustr+='</div>';
		cartmenustr+='<div class="border-bottom1">';
			cartmenustr+='<p class="btAccodion2">';
				cartmenustr+='<b class="sp13 result1">';
					cartmenustr+=numberWithCommas(price)+'원';
				cartmenustr+='</b>';
			cartmenustr+='</p>';
			cartmenustr+='<div class="padding10px div15">';
				cartmenustr+='<span class="float-left"><b>가격:'+pricestr+'</b></span>';
				cartmenustr+='<span class="float-right pric1">+ '+numberWithCommas(price1)+'원</span>';
				cartmenustr+='<div class="cartnum'+cartcnt+'"></div>';
				if(price2!=null){
					cartmenustr+='<span class="float-left"><b>추가선택: '+option+'</b></span>';
					cartmenustr+='<span class="float-right pric2">+ '+numberWithCommas(price2)+'원</span>';
					cartmenustr+='<input type="hidden" name="orderDetList['+cartcnt+'].orderdetOption" value="'+option+'" class="displaynone"><br>';
					cartmenustr+='<input type="hidden" name="orderDetList['+cartcnt+'].orderdetOptionprice" value="'+price2+'" class="displaynone"><br>';
				}
				cartmenustr+='<input type="hidden" name="orderDetList['+cartcnt+'].orderdetProductname" value="'+menu+'" class="displaynone"><br>';
				cartmenustr+='<input type="hidden" name="orderDetList['+cartcnt+'].orderdetSelectproduct" value="'+pricestr+'" class="displaynone"><br>';
				cartmenustr+='<input type="hidden" name="orderDetList['+cartcnt+'].orderdetSelectprice" value="'+price1+'" class="displaynone"><br>';
				cartmenustr+='<input type="hidden" name="orderDetList['+cartcnt+'].orderdetTotalprice" value="'+price+'" class="detTotalprice displaynone"><br>';
			cartmenustr+='</div>';
		cartmenustr+='</div>';
	cartmenustr+='</div>';
	return cartmenustr;
}
function cartsum(totalprice){
	var cartsum='';
	 cartsum+='<div id="cartsumdiv">';
		 cartsum+='<div class="padding10px align-right">';
			 cartsum+='<p><b class="font15px">주문합계</b></p>';
			 cartsum+='<p class="color-orange font18px"><b id="totalprice">'+numberWithCommas(totalprice)+'</b>원</p>';
			 cartsum+='<input type="hidden" name="totalmenuprice" value="'+totalprice+'" id="totalmenuprice" class="displaynone"><br>';
			 cartsum+='<input type="hidden" name="shopno" value="'+${shop.shopNo}+'" id="shopno" class="displaynone"><br>';
			 cartsum+='<p class="color-silver font13px">[최소주문금액:';
			 cartsum+='<fmt:formatNumber pattern="#,###" value="${shop.shopMinprice}"/>원]</p>';
		 cartsum+='</div>';
		 cartsum+='<input class="btbrown bt8" type="submit" value="주문하기">';
	 cartsum+='</div>';
	 return cartsum;
}
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

</script>
<%@ include file="../inc/bottom.jsp" %>