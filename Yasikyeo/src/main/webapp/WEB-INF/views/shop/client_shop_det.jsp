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
    	header: "> div > .btAccodion",
    	collapsible: true,
    	heightStyle: "content",
    	active: false,
    	icons: icons
	    }).sortable({
	        axis: "y",
	        handle: ".btAccodion",
	        stop: function( event, ui ) {
	          ui.item.children( ".btAccodion" ).triggerHandler( "focusout" );
	          $( this ).accordion( "refresh" );
	        }
	});
	$( ".accordion2" ).accordion({
    	header: "> div > .btAccodion",
    	collapsible: true,
    	heightStyle: "content",
    	active: false,
    	icons: icons
	    }).sortable({
	        axis: "y",
	        handle: ".btAccodion",
	        stop: function( event, ui ) {
	          ui.item.children( ".btAccodion" ).triggerHandler( "focusout" );
	          $( this ).accordion( "refresh" );
	        }
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
							<img alt="" src="<c:url value='/images/menu.png'/>">
							<span class="font1-1em"><b>메뉴</b></span>
						</a>
					</div>
					<div class="flex flex1 align-center bgbrown ">
						<a class="padding15px flex1" href="#review">
							<img alt="" src="<c:url value='/images/edit.png'/>">
							<span class="font1-1em"><b>리뷰</b></span>
						</a>
					</div>
				</div>
				<div class="accordion1 contain3">
					<!-- 카테고리반복 -->
					<div class="group1">
						<div class="btAccodion">
							<div class="inline-block">
								<b>모밀 Set</b>
								<p class="sp2">- 곱배기 추가시 2,000원</p>
							</div>
						</div>
					    <div class="accordion2">
					    	<div class="group2">
								<div class="btAccodion">
									<span>1.만두+냉모밀1</span>
									<b>11,000원</b>
									<img alt="카트" src="">
								</div>
							    <div>
							      <p>컨텐츠</p>
							    </div>
							</div>
					    </div>
					</div>
					<!-- 카테고리반복 -->
					<div class="group">
						<div class="btAccodion">
							<div class="inline-block">
								<b>모밀 Set</b>
								<p class="sp2">- 곱배기 추가시 2,000원</p>
							</div>
						</div>
					    <div>
					      <p>컨텐츠</p>
					    </div>
					</div>
					<!-- 카테고리반복 -->
					<br>
				</div>				
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