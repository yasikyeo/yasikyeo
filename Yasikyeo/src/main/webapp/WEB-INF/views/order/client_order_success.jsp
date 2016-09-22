<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
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
					<p class="padding3px">고객님의 주문이 14시 40분 아래와 같이 성공적으로 완료 되었습니다</p>
					<p class="padding3px">마이페이지 > 바로결제내역에서 주문정보를 조회하여 보실 수 있습니다.</p>
				</div>
				<div class="div23 aris">
					<p class="p4"><label class="lb3 color-silver">주문번호</label>a12345</p>
					<p class="p4"><label class="lb3 color-silver">주문자정보</label>서울 송파구 석촌동</p>
					<p class="p4"><label class="lb3 color-silver">&nbsp;</label>010-5896-7894</p>
					<p class="p4"><label class="lb3 color-silver">요청사항</label>벨누르기전에 전화주세요.</p>
					<p class="p4"><label class="lb3 color-silver">주문내역</label>파닭, 마늘파닭</p>
					<p class="p4"><label class="lb3 color-silver">주문금액</label>35,000원</p>
					<p class="p4"><label class="lb3 color-silver">할인금액</label>3,000원(포인트결제)</p>
					<p class="p4"><label class="lb3 color-silver">총 결제금액</label><b class="arib">32000원</b></p>
				</div>
				<div class="ma-t-20px flex">
					<input class="btblack bt8 ma-r-10px flex1" type="button" value="더 주문하기">
					<input class="btgray bt8 ma-l-10px flex1" type="button" value="결제내역보기">
				</div>
			</div>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>