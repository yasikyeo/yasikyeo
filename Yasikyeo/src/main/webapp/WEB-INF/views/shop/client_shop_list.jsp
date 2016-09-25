<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery.raty.js'/>"></script>
<script type="text/javascript">
$.fn.raty.defaults.path = "<c:url value='/images'/>";
$(function () {
	$('div.star1').raty({
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
	$(".divshop").click(function() {
		$(location).attr("href","<c:url value='/shop/client_shop_det.do'/>")
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
			<li><b>${param.menu}</b></li>
			<li>|</li>
			<li><b>${sessionScope.si}&nbsp;${sessionScope.gu}&nbsp;${sessionScope.dong}</b>를 중심으로 총 <span class="color-orange"><b>${findShop}</b></span>곳을 찾았습니다.</li>
			<li>
				<select class="selectoption2">
					<option>기본정렬로 보기</option>
					<option>주문 순으로 보기</option>
					<option>평점 순으로 보기</option>
					<option>즐겨찾기 순으로 보기</option>
				</select>
			</li>
		</ul>
	</div>
	<div class="div12">
		<!-- 반복시작 -->
		<c:if test="${!empty shopList}">
			<div class="shopcontain1 shopcontain2 shopcontain3">
				<div class="divshop">
					<div class="div13">
						<img alt="상점이미지" src="<c:url value='/shop_Image/${shopList.shopImage}'/>">
					</div>
					<div class="div7">
						<p><b>${shopList.shopName}</b></p>
						<div class="padding3px star1" data-score="${shopList.shopAvgreview}"></div>
						<p class="padding3px sp2">${shopList.address}</p>
						<div class="padding3px description1">리뷰<span>${shopList.shopReviewcnt}</span>사장님댓글<span>${shopList.shopCeoreplycnt}</span></div>
						<div class="padding3px">
							<span class="spaquabox">바로결제</span>
							<span class="spaquabox">만나서결제</span>
						</div>
					</div>
				</div>
				<!-- <div class="modal1">
					<div class="modal-content1">현재 운영시간이 아닙니다</div>
				</div> -->
			</div>
			<!-- 반복끝 -->
		</c:if>
		<div class="shopcontain1 shopcontain2 shopcontain3">
			<div class="divshop">
				<div class="div13">
					<img alt="상점이미지" src="">
				</div>
				<div class="div7">
					<p><b>피자스토리 원플러스원</b></p>
					<div class="padding3px star1" data-score="3.6"></div>
					<p class="padding3px sp2">주소들어갈부분</p>
					<div class="padding3px description1">리뷰<span>4</span>사장님댓글<span>3</span></div>
					<div class="padding3px">
						<span class="spaquabox">바로결제</span>
						<span class="spaquabox">만나서결제</span>
					</div>
				</div>
			</div>
		</div>
		<div class="shopcontain1 shopcontain2 shopcontain3">
			<div class="divshop">
				<div class="div13">
					<img alt="상점이미지" src="">
				</div>
				<div class="div7">
					<p><b>피자스토리 원플러스원</b></p>
					<div class="padding3px star1" data-score="3.6"></div>
					<p class="padding3px sp2">주소들어갈부분</p>
					<div class="padding3px description1">리뷰<span>4</span>사장님댓글<span>3</span></div>
					<div class="padding3px">
						<span class="spaquabox">바로결제</span>
						<span class="spaquabox">만나서결제</span>
					</div>
				</div>
			</div>
		</div>
		<div class="shopcontain1 shopcontain2 shopcontain3">
			<div class="divshop">
				<div class="div13">
					<img alt="상점이미지" src="">
				</div>
				<div class="div7">
					<p><b>피자스토리 원플러스원</b></p>
					<div class="padding3px star1" data-score="3.6"></div>
					<p class="padding3px sp2">주소들어갈부분</p>
					<div class="padding3px description1">리뷰<span>4</span>사장님댓글<span>3</span></div>
					<div class="padding3px">
						<span class="spaquabox">바로결제</span>
						<span class="spaquabox">만나서결제</span>
					</div>
				</div>
			</div>
		</div>
		<br class="clear-both">
 		<div class="vertical-container">
 			<ul class="pagination">
 				<li><a href="#">&laquo;</a></li>
 				<li><a href="#">1</a></li>
 				<li><a class="active" href="#">2</a></li>
 				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
 				<li><a href="#">5</a></li>
				<li><a href="#">6</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
		<br>
	</div>
</div>
<%@ include file="../inc/bottom.jsp" %>