<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
$(function () {
	$("#Condition").change(function() {
		$("#searchCondition").val($("#Condition").val());
		document.frmPage1.currentPage.value=1
		document.frmPage1.submit();
	});
	if($("#searchCondition").val().length>0){
		$("#Condition").val("${searchVO.searchCondition}");
	}
});
function pageProc(curPage){
	document.frmPage1.currentPage.value=curPage;
	document.frmPage1.submit();
}
</script>
<form name="frmPage1" method="post" id="frmPage"
	action="<c:url value='/mypage/client_mypoint.do'/>">
	<input type="text" name="currentPage" id="currentPage" value="${param.currentPage}">
	<input type="text" name="searchCondition" id="searchCondition"
		value="${searchVO.searchCondition}">
	<input type="hidden" name="searchKeyword" 
		value="${searchVO.searchKeyword}">	
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
			<li style="font-weight: bold;">포인트</li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="<c:url value='/mypage/client_paymentList.do'/>"><span class="tabMenu">바로결제 내역</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_myinfo.do'/>"><span class="tabMenu">내 정보</span></a></li>
			<li class="noteff"><a href="<c:url value='/mypage/client_mypoint.do'/>"><span class="tabMenu">포인트</span></a></li>
			<li class="hovereff"><a href="<c:url value='/mypage/client_myreview.do'/>"><span class="tabMenu">리뷰관리</span></a></li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>포인트</legend>
			<fieldset class="pointinfo">
				<legend>야시켜 포인트</legend>
				<hr>
				<div class="divpointview">
					<div class="div4 align-center">
						<p class="padding5px"><b>아이디 님의 가용포인트</b></p>
						<p class="padding5px p1"><fmt:formatNumber value="${memberVo.memberPoint}" pattern="#,###"/>P</p>
					</div>
					<hr>
					<div class="div3">
						<p><b>가용포인트</b></p>
						<p class="graycolor">적립된 포인트 중에서 현재 바로 쓸 수 있는 포인트입니다. </p>
					</div>
				</div>
			</fieldset>
			<fieldset class="poingList">
				<legend>포인트 적립/사용내역</legend>
				<table class="table2" summary="포인트 적립및 사용내역에관한 표로서 날짜 상세내역 적립or사용내역 해당포인트의 내용을 다룬다">
					<colgroup>
						<col style="width:15%;">
						<col style="width:55%;">
						<col style="width:15%;">
						<col style="width:15%;">
					</colgroup>
					<thead>
						<tr>
							<th>날짜</th>
							<th class="align-left">상세내역</th>
							<th>
								<select class="halfwidth" id="Condition">
									<option value="">전체</option>
									<option value="적립완료">적립</option>
									<option value="포인트 사용">사용</option>
								</select>
							</th>
							<th>포인트</th>
						</tr>
					</thead>
					<tbody>
						<!-- 반복시작 -->
						<c:if test="${empty pointList}">
							<tr>
								<td colspan="4">포인트 적립및 사용내역이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${!empty pointList}">
							<c:forEach var="map" items="${pointList}">
								<tr>
									<td><fmt:formatDate value="${map['ORDERLIST_REGDATE']}" pattern="YYYY-MM-dd"/></td>
									<td>${map["SHOP_NAME"]}</td>
									<td>
										<c:if test="${map['POINT_TYPE']=='적립완료'}">
											<span class="spgreenbox">${map["POINT_TYPE"]}</span>
										</c:if>
										<c:if test="${map['POINT_TYPE']=='포인트 사용'}">
											<span class="sporangebox">${map["POINT_TYPE"]}</span>
										</c:if>
									</td>
									<td><fmt:formatNumber value="${map['POINT_POINT']}" pattern="#,###"/>p</td>
								</tr>
							</c:forEach>
						</c:if>
						<!-- <tr>
							<td>2016-09-13</td>
							<td>향원</td>
							<td><span class="spgreenbox">적립완료</span></td>
							<td>21p</td>
						</tr> -->
					</tbody>
				</table>
			</fieldset>
		</fieldset>
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
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>