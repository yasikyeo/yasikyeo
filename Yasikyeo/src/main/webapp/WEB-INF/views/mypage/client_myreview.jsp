<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<%@ taglib prefix="eg" tagdir="/WEB-INF/tags" %>
<script type="text/javascript">
	$(function() {
		$("tr").click(function() {
			var shopNo = $(this).find(".shopno").val();
			var reviewNo = $(this).find(".reviewno").val();
			$(location).attr("href","<c:url value='/shop/client_shop_det.do?no="+shopNo+"#review"+reviewNo+"'/>");
		});
	});
	function pageProc(curPage){
		document.frmPage1.currentPage.value=curPage;
		document.frmPage1.submit();
	}
</script>
<form name="frmPage1" method="post" id="frmPage"
	action="<c:url value='/mypage/client_myreview_reg_possible.do'/>">
	<input type="hidden" name="currentPage" id="currentPage" value="${param.currentPage}">
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
			<li style="font-weight: bold;">내가 작성한 리뷰 보기</li>
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
						<li class="color-orange"><b><a href="<c:url value='/mypage/client_myreview.do'/>">내가 작성한 리뷰보기</a></b></li>
						<li>|</li>
						<li class="cursor-pointer"><a href="<c:url value='/mypage/client_myreview_reg_possible.do'/>">작성가능한 리뷰보기</a></li>
					</ul>
				</div>
			</div>
			<br class="clear-both">
			<hr>
			<c:if test="${empty reviewMap}">
				<!-- 리뷰가 없을때 -->
				<div class="align-center">
					<p>
						<img alt="" src="<c:url value='/images/temp/NotFound.jpg'/>">
					</p>
					<p class="p2">리뷰 작성 내역이 없습니다!!</p>
					<br>
					<hr>
				</div>
			
			</c:if>
			<c:if test="${!empty reviewMap}">
				<!-- 리뷰가 있을때 -->
				<div>
					<table class="table3">
						<colgroup>
							<col style="width:15%;">
							<col style="width:15%;">
							<col style="width:70%;">
						</colgroup>
						<thead>
							<tr>
								<th>날짜</th>
								<th>업소</th>
								<th>내용</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="map" items="${reviewMap}">
								<tr>
									<td><fmt:formatDate value="${map['REVIEW_REGDATE']}" pattern="YYYY-MM-dd"/></td>
									<td>${map['SHOP_NAME']}</td>
									<td><eg:to-string var="textValue" value="${map['REVIEW_CONTENT']}"/>
										${textValue}<input type="hidden" value="${map['REVIEW_NO']}" class="reviewno">
										<input type="hidden" value="${map['SHOP_NO']}" class="shopno">
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
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
			</c:if>
		</fieldset>
	</div>
	
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>