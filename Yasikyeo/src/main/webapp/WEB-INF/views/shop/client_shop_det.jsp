<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery.raty.js'/>"></script>
<script type="text/javascript">
$.fn.raty.defaults.path = "<c:url value='/images'/>";
$(function () {
	$('span.star2').raty({
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
    	header: "> div .btAccodion2",
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
	$("input[type=reset]").click(function() {
		$(this).parents(".group2").find(".btAccodion2").click();
	});
	
	$(".sumnail1").click(function(){
		var selector=$(this).find("img").attr("alt");
		selector="#"+selector;
		
		$(selector).parents(".group1").find(".btAccodion1").click();
		$(selector).click();
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
			<li><b>메뉴</b></li>
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
				<li class="font17px"><b>업소명</b></li>
				<li>|</li>
				<li>주소들어가는부분</li>
				<li>|</li>
				<li>
					<span class="star2" data-score="3.6"></span>
					<b>X명</b>
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
					<p class="paddingCol3px"><b>원산지</b></p>
					<p class="paddingCol3px">도우(국내산),불고기(국내산)</p>
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
			</div>
		</div>
		<div class="flex1">
			<!-- 업소상세정보영역 -->
			<div class="contain2">
				<div class="border-bottom1 font16px padding10px"><b>업소상세정보</b></div>
				<dl class="font13px padding10px dl1">
					<dt>최소금액</dt>
					<dd class="ma-l-60px">12,000원 부터</dd>
					<dt>운영시간</dt>
					<dd class="ma-l-60px">낮 12:00 ~ 익일 새벽 01:00</dd>
					<dt>전화번호</dt>
					<dd class="ma-l-60px color-orange"><b>050-6381-5910</b></dd>
					<dt>업소소개</dt>
					<dd class="ma-l-60px">새로운 신개념 치킨과 피자의 러브스토리^^ 치킨과피자 더이상 고민하시지 말고 둘다 드실수 있습니다! 정성있는맛과 좋은가격 좋은품질 모두다 완벽한 피치스토리 느껴보십시요</dd>
				</dl>
			</div>
			<!-- 장바구니영역 -->
			<div class="contain2 ma-t-20px"  data-spy="affix" data-offset-top="784">
				<div class="border-bottom1 font16px padding10px"><b>장바구니</b></div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../inc/bottom.jsp" %>