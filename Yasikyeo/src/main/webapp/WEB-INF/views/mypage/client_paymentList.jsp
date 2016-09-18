<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
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
						<tr>
							<td>2016.09.13 오후 7:58</td>
							<td class="color-orange">BEGRC00434</td>
							<td>피자나라치킨공주 신내점</td>
							<td class="color-orange"><b>1,6000원</b></td>
							<td><span class="spgreenbox">배달완료</span></td>
						</tr>
						
					</tbody>
				</table>
			</fieldset>
		</div>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>