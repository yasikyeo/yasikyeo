<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
	$(function() {
		$(".writeReview").click(function() {
			var shopno = $(this).parent("td").find(".shopno").val();
			$(location).attr("href","<c:url value='/shop/client_shop_det.do?no="+shopno+"#writeReview'/>");
		});
	});
	function pageProc(curPage){
		document.frmPage1.currentPage.value=curPage;
		document.frmPage1.submit();
	}
</script>
<form name="frmPage1" method="post" id="frmPage"
	action="<c:url value='/mypage/client_myreview_reg_possible.do'/>">
	<input type="text" name="currentPage" id="currentPage" value="${param.currentPage}">
	<input type="hidden" name="searchKeyword" 
		value="${searchVO.searchKeyword }">	
</form>
<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="<c:url value='/index.do'/>">홈</a>
			</li>
			<li>&gt;</li>
			<li>
				<a href="<c:url value='/mypage/client_mypage.do'/>">마이페이지</a>
			</li>
			<li>&gt;</li>
			<li>
				<a href="">리뷰관리</a>
			</li>
			<li>&gt;</li>
			<li style="font-weight: bold;">작성 가능한 리뷰 보기</li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="<c:url value='/mypage/client_paymentList.do'/>"><span class="tabMenu">바로결제 내역</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_myinfo.do'/>"><span class="tabMenu">내 정보</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_mypoint.do'/>"><span class="tabMenu">포인트</span></a></li>
			<li class="noteff"><a href="<c:url value='/mypage/client_myreview.do'/>"><span class="tabMenu">리뷰관리</span></a></li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>리뷰 관리</legend>
			<div>
				<div class="div3 float-left">
					<p  class="graycolor">회원님이 작성하신 리뷰에 대해 수정/삭제 가능합니다</p>
					<p  class="graycolor">리뷰에 적합하지 않은 내용은 업소 요청에 따라 비공개 될 수 있습니다.</p>
				</div>
				<div class="div3 float-right">
					<br>
					<ul>
						<a href="<c:url value='/mypage/client_myreview.do'/>"><li class="cursor-pointer">내가 작성한 리뷰보기</li></a>
						<li>|</li>
						<a href="<c:url value='/mypage/client_myreview_reg_possible.do'/>"><li class="color-orange">
						<b>작성가능한 리뷰보기</b></li></a>
					</ul>
				</div>
			</div>
			<br class="clear-both">
			<hr>
			<!-- 작성 가능 리뷰가 없을때 -->
			<c:if test="${empty orderlistAllviews}">
				<div class="align-center">
					<p>
						<img alt="" src="<c:url value='/images/temp/NotFound.jpg'/>">
					</p>
					<p class="p2">작성 가능한 리뷰가 없습니다!!</p>
					<br>
					<hr>
				</div>
			</c:if>
			<!-- 작성 가능 리뷰가 있을때 -->
			<c:if test="${!empty orderlistAllviews}">
				<div>
					<table class="table3">
						<colgroup>
							<col style="width:15%;">
							<col style="width:13%;">
							<col style="width:46%;">
							<col style="width:13%;">
							<col style="width:13%;">
						</colgroup>
						<thead>
							<tr>
								<th>날짜</th>
								<th>업소</th>
								<th>메뉴</th>
								<th colspan="2">주문금액</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="orderAlllist" items="${orderlistAllviews}">
								<tr>
									<td><fmt:formatDate value="${orderAlllist.orderlistVo.orderlistRegdate}" pattern="YYYY-MM-dd"/></td>
									<td>${orderAlllist.shopName}</td>
									<td>
										<c:set var="x" value="0"/>
										<c:forEach var="orderdet" items="${orderAlllist.orderDetList}">
											<c:if test="${x==0}">
												${orderdet.orderdetProductname}
											</c:if>			
											<c:set var="x" value="${x+1}"/>
										</c:forEach>
										<c:if test="${x>1}">
												외${x-1}개
										</c:if>
									</td>
									<td class="color-orange"><b><fmt:formatNumber value="${orderAlllist.orderlistVo.orderlistPrice}" pattern="#,###"/>원</b></td>
									<td><span class="sp3 writeReview">리뷰작성하기</span><input type="hidden" value="${orderAlllist.orderlistVo.shopNo}" class="shopno"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:if>
			<br>
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
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>