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
	function pageProc(curPage){
		document.frmPage.currentPage.value=curPage;
		document.frmPage.submit();
	}
</script>
<form name="frmPage" method="post" 
	action="<c:url value='/shop/client_shop_list.do?menu=${param.menu}'/>">
	<input type="hidden" name="currentPage">
	<input type="hidden" name="searchCondition" 
		value="${param.searchCondition }">
	<input type="hidden" name="searchKeyword" 
		value="${searchVO2.searchKeyword }">	
</form>
<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="">홈</a>
			</li>
			<li>&gt;</li>
			<li><b>${param.menu}</b></li>
			<li>|</li>
			<li><b>${sessionScope.si}&nbsp;${sessionScope.gu}&nbsp;${sessionScope.dong}</b>를 중심으로 총 <span class="color-orange"><b>${pagingInfo.totalRecord}</b></span>곳을 찾았습니다.</li>
			<li>
				<select class="selectoption2" name="searchCondition">
					<option>기본정렬로 보기</option>
					<option>주문 순으로 보기</option>
					<option>평점 순으로 보기</option>
					<option>즐겨찾기 순으로 보기</option>
				</select>
			</li>
		</ul>
	</div>
	<div class="div12">
		<c:if test="${empty shopList}">
			<div class="align-center">해당 업소를 찾을수 없습니다.</div>
		</c:if>
		<c:if test="${!empty shopList}">
		<!-- 반복시작 -->
		<c:forEach var="shop" items="${shopList}">
			<div class="shopcontain1 shopcontain2 shopcontain3">
				<div class="divshop">
					<img class="div13" alt="상점이미지" src="<c:url value='/shop_Image/${shop.shopImage}'/>">
					<div class="div7">
						<p><b>${shop.shopName}</b></p>
						<div class="padding3px star1" data-score="${shop.shopAvgreview}"></div>
						<p class="padding3px sp2">
							<!-- 주소가 긴 경우 일부만 보여주기 -->
							<c:if test="${fn:length(shop.address)>13}">
								${fn:substring(shop.address, 0,13)}...
							</c:if>
							<c:if test="${fn:length(shop.address)<=13}">
								${shop.address}
							</c:if>
						</p>
						<div class="padding3px description1">리뷰<span>${shop.shopReviewcnt}</span>사장님댓글<span>${shop.shopCeoreplycnt}</span></div>
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
		</c:forEach>
		</c:if>
		<br class="clear-both">
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
<%@ include file="../inc/bottom.jsp" %>