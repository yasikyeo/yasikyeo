<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
$(function() {
	$(".bt9").click(function() {
		$(location).attr("href","<c:url value='/mypage/client_paymentList.do'/>");
	});
	$("#orderSameShop").click(function() {
		$(location).attr("href","<c:url value='/shop/client_shop_det.do?no="+${OrderListView["SHOP_NO"]}+"'/>");
	});
	
});
</script>
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
				<legend>바로결제 내역 상세</legend>
				<div class="flex">
					<div class="flex5 ">
						<p class="p4"><b class="lb3">주문날짜</b><fmt:formatDate value="${OrderListView['ORDERLIST_REGDATE']}" pattern="YYYY-MM-DD a h:mm"/></p>
						<p class="p4"><b class="lb3">주문번호</b>${OrderListView["ORDERLIST_NO"]}</p>
						<p class="p4"><b class="lb3">업소명</b>${OrderListView['SHOP_NAME']}</p>
					</div>
					<div class="flex1  vertical-container">
						<input class="btorange bt8 fullwidth" type="button" value="같은 업소 주문하기" id="orderSameShop">
					</div>
				</div>
				<div class="div24">
					<p class="p6"><b class="font15px">법적고지</b></p>
					<p class="p6">야시켜는 상품판매의 당사자가 아니며 상품판매와 관련한 일체의 책임은 각 업소에게 있습니다. 배달의민족 서비스는 결제정보의 중개 또는 통신판매중개 시스템의 제공만을 대상으로 하고 배달의민족 서비스의 이용자와 업소 간의 거래관계, 구매내용 및 업소에 게재된 상품정보, 거래조건 등에 대해서는 어떠한 보증이나 책임도 부담하지 않으며 상품의 광고, 주문, 배송 및 환불 등과 관련한 의무와 책임은 각 업소에 있습니다.</p>
				</div>
				<div class="vertical-container div25">
					<c:if test="${OrderListView['ORDERLIST_STATE']=='배달완료'}">
						<span class="color-orange font1-1em">
							<img class="align-middle img3" src="<c:url value='/images/checked.png'/>"><b>${OrderListView['ORDERLIST_STATE']}</b>
						</span>
						<span class="font14px color-silver">배달이 완료되었습니다.</span>
					</c:if>
					<c:if test="${OrderListView['ORDERLIST_STATE']!='배달완료'}">
						<span class="color-green font1-1em">
							<img class="align-middle img3" src="<c:url value='/images/checked-g.png'/>"><b>${OrderListView['ORDERLIST_STATE']}</b>
						</span>
						<span class="font14px color-silver">주문이 완료되었습니다.</span>
					</c:if>
				</div>
				<table class="table7" summary="">
					<colgroup>
						<col style="width: 70%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
					</colgroup>
					<thead>
						<tr>
							<th>메뉴상세</th>
							<th>수량</th>
							<th>가격</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="orderDet" items="${orderDetList}">
							<tr>
								<td>
									<p><b>${orderDet.orderdetProductname}</b></p>
									<p class="font14px">가격 : ${orderDet.orderdetSelectproduct }(+<fmt:formatNumber value="${orderDet.orderdetSelectprice}" pattern="#,###"/>)</p>
									<c:if test="${!empty orderDet.orderdetOption}">
										<p class="font14px">추가선택 : ${orderDet.orderdetOption}(+<fmt:formatNumber value="${orderDet.orderdetOptionprice}" pattern="#,###"/>)</p>
									</c:if>
								</td>
								<td class="align-middle">${orderDet.orderdetQty}개</td>
								<td class="align-middle"><fmt:formatNumber value="${orderDet.orderdetTotalprice}" pattern="#,###"/>원</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="2">주문합계</td>
							<td><fmt:formatNumber value="${OrderListView['ORDERLIST_PRICE']}" pattern="#,###"/>원</td>
						</tr>
					</tbody>
				</table>
				<fieldset class="fieldset4">
					 <legend>결제정보</legend>
					 <div class="flex">
					 	<div class="flex3 div26">
					 		 <p class="p6"><b class="lb4">주문금액</b><fmt:formatNumber value="${OrderListView['ORDERLIST_PRICE']}" pattern="#,###"/>원</p>
					 		 <p class="p6"><b class="lb4">연락처</b>${OrderListView['ORDERLIST_TEL']}</p>
					 		 <p class="p6"><b class="lb4">배송주소</b>${OrderListView['ORDERLIST_ADDRESS']}</p>
					 		 <p class="p6"><b class="lb4">요청사항</b>${OrderListView['ORDERLIST_MESSAGE']}</p>
					 	</div>
					 	<div class="flex1 div27">
					 		<p class="p6">최종금액</p>
					 		<p class="p6"><b class="font1-4em align-textb"><fmt:formatNumber value="${OrderListView['ORDERLIST_CARGEPRICE']}" pattern="#,###"/></b>원</p>
					 		<c:if test="${OrderListView['ORDERLIST_PAYPOINT']>0}">
						 		<p class="p6 font14px">사용포인트</p>
						 		<p class="p6 font14px ">- <fmt:formatNumber value="${OrderListView['ORDERLIST_PAYPOINT']}" pattern="#,###"/><sub class="font0-8em align-textb">P</sub></p>
					 		</c:if>
					 		<c:if test="${OrderListView['ORDERLIST_PAYPOINT']==0}">
						 		<br>
					 		</c:if>
					 		<p class="p6 font14px">적립포인트</p>
					 		<p class="p6 font14px ">+ <fmt:formatNumber value="${OrderListView['ORDERLIST_SAVEPOINT']}" pattern="#,###"/> <sub class="font0-8em align-textb">P</sub></p>
					 	</div>
					 </div>
					 <input class="btblack bt9" type="button" value="목록">
				</fieldset>
			</fieldset>
		</div>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>