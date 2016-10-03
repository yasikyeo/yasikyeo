<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
$(function() {
	$("#showPaylist").click(function() {
		$(location).attr("href","<c:url value='/mypage/client_paymentList.do'/>");
	});
	$("#addorder").click(function() {
		$(location).attr("href","<c:url value='/shop/client_shop_det.do?no=${orderlistVo.shopNo}'/>");
	});
});
</script>
<div class="mainSection">
	<br>
	<br>
	<div class="fieldsetContain">
		<fieldset>
			<legend>주문완료</legend>
			<ul class="ul3">
				<li>1.메뉴 선택</li>
				<li>&gt;</li>
				<li>2.배달/결제정보</li>
				<li>&gt;</li>
				<li>3.결제</li>
				<li>&gt;</li>
				<li class="color-orange">4.주문완료</li>
			</ul>
			<div class="div16">
				<div class="div22">
					<p class="tp padding3px"><b>결제성공</b></p>
					<p class="padding3px">감사합니다..</p>
					<p class="padding3px">고객님의 주문이 <fmt:formatDate value="${orderlistVo.orderlistRegdate}" pattern="dd일 ah시mm분"/> 아래와 같이 성공적으로 완료 되었습니다</p>
					<p class="padding3px">마이페이지 > 바로결제내역에서 주문정보를 조회하여 보실 수 있습니다.</p>
				</div>
				<div class="div23 aris">
					<p class="p4"><label class="lb3 color-silver">주문번호</label>${orderlistVo.orderlistNo}</p>
					<p class="p4"><label class="lb3 color-silver">주문자정보</label>${orderlistVo.orderlistAddress}</p>
					<p class="p4"><label class="lb3 color-silver">&nbsp;</label>${orderlistVo.orderlistTel}</p>
					<p class="p4"><label class="lb3 color-silver">요청사항</label>${orderlistVo.orderlistMessage}</p>
					<p class="p4"><label class="lb3 color-silver">주문내역</label>
						<c:set var="i" value="0"/>
						<c:forEach var="orderdet" items="${orderDetList}">
							<c:if test="${i==0}">
								${orderdet.orderdetProductname}
							</c:if>
							<c:if test="${i>0}">
								, ${orderdet.orderdetProductname}
							</c:if>
						<c:set var="i" value="${i+1}"/>
						</c:forEach>
					</p>
					<p class="p4"><label class="lb3 color-silver">주문금액</label><fmt:formatNumber value="${orderlistVo.orderlistPrice}" pattern="#,###"/></p>
					<p class="p4"><label class="lb3 color-silver">할인금액</label><fmt:formatNumber value="${orderlistVo.orderlistPaypoint}" pattern="#,###"/>원(포인트결제)</p>
					<p class="p4"><label class="lb3 color-silver">총 결제금액</label><b class="arib"><fmt:formatNumber value="${orderlistVo.orderlistCargeprice}" pattern="#,###"/>원</b></p>
				</div>
				<div class="ma-t-20px flex">
					<input class="btblack bt8 ma-r-10px flex1" type="button" value="더 주문하기" id="addorder">
					<input class="btgray bt8 ma-l-10px flex1" type="button" value="결제내역보기" id="showPaylist">
				</div>
			</div>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>