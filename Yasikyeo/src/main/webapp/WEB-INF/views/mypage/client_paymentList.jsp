<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
$(function() {
	$(".table1 tr").click(function() {
		var orderlistNo = $(this).find("#orderlistNo").text();
		$(location).attr("href","<c:url value='/mypage/client_baro_det.do?orderlistNo="+orderlistNo+"'/>");
	});
});
function pageProc(curPage){
	document.frmPage1.currentPage.value=curPage;
	document.frmPage1.submit();
}
</script>
<form name="frmPage1" method="post" id="frmPage"
	action="<c:url value='/mypage/client_paymentList.do'/>">
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
			<li style="font-weight: bold;">바로결제 내역</li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="noteff"><a href="<c:url value='/mypage/client_paymentList.do'/>"><span class="tabMenu">바로결제 내역</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_myinfo.do'/>"><span class="tabMenu">내 정보</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_mypoint.do'/>"><span class="tabMenu">포인트</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_myreview.do'/>"><span class="tabMenu">리뷰관리</span></a></li>
		</ul>
		<div class="fieldsetContain">
			<fieldset>
				<legend>바로결제 내역</legend>
				<table class="table1" summary="바로결제내역에 관한 표로서 주문일시, 주문번호, 업소명, 주문금액, 진행상태등의 내용을 다룬다">
					<colgroup>
						<col style="width:20%;">
						<col style="width:18%;">
						<col style="width:38%;">
						<col style="width:12%;">
						<col style="width:12%;">
					</colgroup>
					<thead>
						<tr>
							<th>주문일시</th>
							<th>주문번호</th>
							<th>업소명</th>
							<th>주문금액</th>
							<th>진행상태</th>
						</tr>
					</thead>
					<tbody>
						<!-- 반복시작 -->
						<c:if test="${empty orderlistview}">
							<tr><td colspan="5">결제내역이 없습니다.</td></tr>
						</c:if>
						<c:if test="${!empty orderlistview}">
							<c:forEach var="map" items="${orderlistview}">
								<tr>
									<td><fmt:formatDate value="${map['ORDERLIST_REGDATE'] }" pattern="YYYY.MM.dd a h:mm"/></td>
									<td class="color-orange" id="orderlistNo">${map["ORDERLIST_NO"] }</td>
									<td>${map["SHOP_NAME"] }</td>
									<td class="color-orange"><b><fmt:formatNumber value="${map['ORDERLIST_PRICE'] }" pattern="#,###"/>원</b></td>
									<td>
										<c:if test="${map['ORDERLIST_STATE']=='접수대기' }">
											<span class="spgreenbox">${map["ORDERLIST_STATE"] }</span>
										</c:if>
										<c:if test="${map['ORDERLIST_STATE']=='배달완료' }">
											<span class="sporangebox">${map["ORDERLIST_STATE"] }</span>
										</c:if>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</fieldset>
		</div>
	</div>
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
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>