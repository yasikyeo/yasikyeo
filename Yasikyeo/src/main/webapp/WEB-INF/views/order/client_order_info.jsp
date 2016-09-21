<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<div class="mainSection">
	<br>
	<br>
	<div class="fieldsetContain">
		<fieldset>
			<legend>배달/결재정보</legend>
			<ul class="ul3">
				<li>1.메뉴 선택</li>
				<li>&gt;</li>
				<li class="color-orange">2.배달/결제정보</li>
				<li>&gt;</li>
				<li>3.결제</li>
				<li>&gt;</li>
				<li>4.주문완료</li>
			</ul>
			<form class="flex" action="">
				 <!-- 좌측 -->
				 <div class="flex3 pad-right15px ">
				 	<fieldset class="fieldset3">
				 		<legend>01.배달정보</legend>
				 		<div class="div16">
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">휴대폰</label>
				 				<input class="inputText1 flex4" type="text">
				 			</div>
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">주소</label>
				 				<select class="flex2 inputText2 select1">
				 					<option>주소들~~</option>
				 					<option>주소들~~</option>
				 				</select>
				 				<input class="inputText1 flex4" type="text" placeholder="나머지 주소를 입력해 주세요">
				 			</div>
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">&nbsp;</label>
				 				<b>최근배송주소 </b><span class="sp14">▼</span><span class="sp15">최근배송주소 중 하나를 선택할수 있습니다</span>
				 			</div>
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">&nbsp;</label>
				 				<div class="div17 flex1">
				 					<p><span>주소1</span></p>
				 					<p><span>주소2</span></p>
				 					<p><span>주소3</span></p>
				 				</div>
				 			</div>
				 			<div class="vertical-container paddingCol5px relative">
				 				<label class="align-middle lb2">요청사항</label>
				 				<input class="inputText1 flex1" type="text" placeholder="예) 벨 누르시기 전에 전화주세요." maxlength="50">
				 				<span class="sp17">0/50</span>
				 			</div>
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">&nbsp;</label>
				 				<span class="sp16">*주류 통신판매 금지 조항에 따라 술은 주문하거나 판매할 수 없습니다</span>
				 			</div>
				 		</div>
				 	</fieldset>
				 	<fieldset class="fieldset3">
				 		<legend>02.할인적용</legend>
				 		<div class="div16">
				 			<div class="paddingCol5px relative">
				 				<b class="float-left">주문금액</b>
				 				<b class="float-right">44,000원</b>
				 			</div>
				 			<div class="paddingCol5px relative clear-both">
				 				<b>야시켜 포인트 결제</b>
				 			</div>
				 			<div class="div18">
				 				<div class="inline-block">
					 				<p class="font13px">가용포인트 <b class="color-orange">xP</b></p>
					 				<p class="sp16">1,000이상,100단위로 사용가능</p>
				 				</div>
				 				<input class="inputText1 pointinput" type="text">
				 				<input id="cmn-toggle-8" class="cmn-toggle cmn-toggle-yes-no" type="checkbox">
								<label for="cmn-toggle-8" data-on="사용하기" data-off="사용하기"></label>
				 			</div>
				 		</div>
				 	</fieldset>
				 </div>
				 <!-- 우측 -->
				 <div class="flex2 pad-left15px ">
				 	<fieldset class="fieldset3">
				 		<legend>03.결제방법선택</legend>
				 		<div class="div19">
				 			<div class="div20">
				 				<p class="relative p6">오마이립<b class="float-right">22,000원</b></p>
				 				<p class="relative p6">가격 : 일반 M<b class="float-right">22,000원 x 1</b></p>
				 			</div>
				 			<div class="div20">
				 				<p class="relative p6">오마이립<b class="float-right">22,000원</b></p>
				 				<p class="relative p6">가격 : 일반 M<b class="float-right">22,000원 x 1</b></p>
				 			</div>
				 			<div class="div20">
				 				<p class="relative p6">오마이립<b class="float-right">22,000원</b></p>
				 				<p class="relative p6">가격 : 일반 M<b class="float-right">22,000원 x 1</b></p>
				 			</div>
				 			<div class="div21">
				 				<p class="relative p6">수량<b class="float-right">2개</b></p>
				 				<p class="relative p6">총 상품금액<b class="float-right color-orange">44,000원</b></p>
				 				<p class="relative p6">포인트 결제<b class="float-right ">-0원</b></p>
				 			</div>
				 			<div class="div21">
				 				<p class="relative clear-both p6"><b class="float-right">최종결제금액</b></p>
				 				<p class="relative clear-both p6"><b class="float-right color-orange tp">44,000원 </b></p>
				 			</div>
				 		</div>
				 		<input class="btbrown fullwidth bt8 ma-t-20px" type="submit" value="결제하기">
				 	</fieldset>
				 </div>			
			</form>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>