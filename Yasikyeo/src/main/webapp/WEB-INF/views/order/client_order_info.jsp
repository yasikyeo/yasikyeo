<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
	$(function() {
		$(".adlist").hide();
		$(".sp14").click(function() {
			$(".adlist").toggle("slow");
		});
		
		if(${memberVo.memberPoint}<1000){
			$("#usepoint").attr("readonly","readonly");
		}
		$("#usepoint").focus(function() {
			$("#ck3").prop('checked', false);
			$("#orderlistPaypoint").val("0");
			$(".point").text("-0원");
			$(".tp").text(numberWithCommas(${sessionScope.totalMprice})+"원");
			$("#orderlistCargeprice").val("${sessionScope.totalMprice}");
		});
		$("#ck3").click(function() {
			if ($("#usepoint").val()<1000) {
				alert("1000포인트 이상만 사용가능합니다.");
				event.preventDefault();
			}else if(($("#usepoint").val()%100)>0){
				alert("100단위로 입력해주세요");
				event.preventDefault();
			}else if($("#usepoint").val()>${memberVo.memberPoint}){
				alert("가용포인트인 ${memberVo.memberPoint}P을 넘을수 없습니다.");
				event.preventDefault();
			}else if($("#usepoint").val()>${sessionScope.totalMprice}){
				alert("상품가격 ${sessionScope.totalMprice}을 넘을수 없습니다.");
				$("#usepoint").val("${sessionScope.totalMprice}");
				event.preventDefault();
			}
		});
		
		$("#ck3").change(function() {
			if($("#ck3").is(":checked")){
				$("#orderlistPaypoint").val($("#usepoint").val());
				$(".point").text("-"+numberWithCommas($("#usepoint").val())+"원");
				$("#orderlistCargeprice").val(${sessionScope.totalMprice}-$('#usepoint').val());
				$(".tp").text(numberWithCommas((${sessionScope.totalMprice}-$('#usepoint').val()))+"원");
			}else{
				$("#orderlistPaypoint").val("0");
				$(".point").text("-0원");
				$("#orderlistCargeprice").val("${sessionScope.totalMprice}");
				$(".tp").text(numberWithCommas(${sessionScope.totalMprice})+"원");
			}
		});
		
		$("#message").keyup(function() {
			var messagelength = $("#message").val().length;
			$("#messagelen").text(messagelength);
		});
		
		$.ajax({
			url:"<c:url value='/getAddrApi1.do'/>"									// 고객사 API 호출할 Controller URL
			,type:"post"
			,data:$("#frmZip1").serialize() 								// 요청 변수 설정
			,dataType:"xml"												// 데이터 결과 : XML
			,success:function(xmlStr){									// xmlStr : 주소 검색 결과 XML 데이터
				var errCode= $(xmlStr).find("errorCode").text();		// 응답코드
				var errDesc= $(xmlStr).find("errorMessage").text();		// 응답메시지
				totalCount= $(xmlStr).find("totalCount").text();		// 응답메시지
				
				if(errCode != "0"){ 									// 응답에러시 처리
					alert(errCode+"="+errDesc);
				}else{
					if(xmlStr!= null){
						makeList2(xmlStr);								// 결과 XML 데이터 파싱 및 출력
					}
				}
			}
			,error: function(xhr,status, error){
				alert("에러발생 - "+status +":" + error);										// AJAX 호출 에러
			}
		});
		
		$(".addre").click(function() {
			var address = $(this).text();
			var spAddress = address.split(" ");
			$(".select1").val(spAddress[0]);
			if($(".select1").val()==null){
				alert("배달가능지역이 아닙니다.");
				$(".select1").val("0");
			}else{
				$(".adredet").val(address.substring(spAddress[0].length+1));
				$("#orderlistAddress").val(address);
			}
		});
		$(".select1").change(function() {
			$(".adredet").val("");
			$("#orderlistAddress").val($(".select1").val()+" "+$(".adredet").val());
		});
		$(".adredet").blur(function() {
			$("#orderlistAddress").val($(".select1").val()+" ${sessionScope.si} ${sessionScope.gu} "+$(".adredet").val());
		});
		$("#orderfrom").submit(function() {
			if($("#orderlistTel").val().length<1){
				alert("휴대폰번호를 입력해주세요");
				$("#orderlistTel").focus();
				return false;
			}else if($(".select1").val()==0){
				alert("동을 선택해주세요");
				$(".select1").focus();
				return false;
			}else if($(".adredet").val().length<1){
				alert("상세주소를 입력해주세요");
				$(".adredet").focus();
				return false;
			}
		});
	});
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	function makeList2(xmlStr){
		
		// jquery를 이용한 XML 결과 데이터 파싱
		var dong=new Array();
		var index3=0;
		var bool=false;
		$(xmlStr).find("juso").each(function(){
			var don = $(this).find("roadAddrPart2").text();
			var index1=don.indexOf("(");
			var index2=don.indexOf(")");
			don = don.substring((index1+1),index2).split(",");
			
			if ($.inArray(don[0], dong) == -1) {  // result 에서 값을 찾는다.  //값이 없을경우(-1)
				dong.push(don[0]);                // result 배열에 값을 넣는다.
				
				var divresult = '<option value="'+don[0]+'">'+don[0]+'</option>'
				$(".select1").append(divresult);				
			}
		});
	}
</script>
<div class="mainSection">
<form id="frmZip1" method="post" action="<c:url value='/login/client_addmember.do'/>">
	<input type="hidden" id="currentPage" name="currentPage" value="1"/>				<!-- 요청 변수 설정 (현재 페이지) -->
    <input type="hidden" id="countPerPage" name="countPerPage" value="5000"/>				<!-- 요청 변수 설정 (페이지당 출력 개수) -->
    <input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE2MDcxODIyMDcxMzEzODg5"/>
	<input type="text" id="dong" name="keyword" value="${sessionScope.gu}">
</form>
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
			<form class="flex" action="<c:url value='/order/client_order.do'/> " method="post" id="orderfrom">
				 <!-- 좌측 -->
				 <div class="flex3 pad-right15px ">
				 	<fieldset class="fieldset3">
				 		<legend>01.배달정보</legend>
				 		<div class="div16">
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">휴대폰</label>
				 				<input class="inputText1 flex4" type="text" value="${memberVo.memberTel}" onfocus = "this.select()"  name="orderlistTel" id="orderlistTel">
				 			</div>
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">주소</label>
				 				<select class="flex2 inputText2 select1">
				 					<option value="0">주소선택</option>
				 				</select>
				 				<input class="inputText1 flex4 adredet" type="text" placeholder="나머지 주소를 입력해 주세요">
				 			</div>
				 				<input type="text" name="orderlistAddress" id="orderlistAddress">
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">&nbsp;</label>
				 				<b>최근배송주소 </b><span class="sp14">▼</span><span class="sp15">최근배송주소 중 하나를 선택할수 있습니다</span>
				 			</div>
				 			<div class="vertical-container paddingCol5px">
				 				<label class="align-middle lb2">&nbsp;</label>
				 				<div class="div17 flex1 adlist">
				 					<p><span class="addre">당산동1가 서울특별시 영등포구 당산동1가 동화빌딩</span></p>
				 					<p><span class="addre">당산동2가 서울특별시 영등포구 당산동1가 동화빌딩</span></p>
				 					<p><span class="addre">당산동3가 서울특별시 영등포구 당산동1가 동화빌딩</span></p>
				 					<p><span class="addre">권선동 서울특별시 영등포구 당산동1가 동화빌딩</span></p>
				 				</div>
				 			</div>
				 			<div class="vertical-container paddingCol5px relative">
				 				<label class="align-middle lb2">요청사항</label>
				 				<input class="inputText1 flex1" type="text" placeholder="예) 벨 누르시기 전에 전화주세요." maxlength="40" id="message" name="orderlistMessage">
				 				<span class="sp17"><span id="messagelen">0</span>/40</span>
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
				 				<b class="float-right"><fmt:formatNumber value="${sessionScope.totalMprice}" pattern="#,###"/>원</b>
				 			</div>
				 			<div class="paddingCol5px relative clear-both">
				 				<b>야시켜 포인트 결제</b>
				 			</div>
				 			<div class="div18">
				 				<div class="inline-block">
					 				<p class="font13px">가용포인트 
					 					<b class="color-orange">
					 						${memberVo.memberPoint}P
					 					</b></p>
					 				<p class="sp16">1,000이상,100단위로 사용가능</p>
				 				</div>
				 				<input class="inputText1 pointinput" type="number" min="0" max="${memberVo.memberPoint}" step="100" id="usepoint" value="0" onfocus = "this.select()">
				 				<input id="ck3" class="cmn-toggle cmn-toggle-yes-no" type="checkbox">
								<label for="ck3" data-on="사용하기" data-off="사용하기"></label>
				 			</div>
				 		</div>
				 	</fieldset>
				 </div>
				 <!-- 우측 -->
				 <div class="flex2 pad-left15px ">
				 	<fieldset class="fieldset3">
				 		<legend>03.결제방법선택</legend>
				 		<div class="div19">
				 			<c:if test="${!empty sessionScope.ordermenuList}">
				 				<c:set var="i" value="0"></c:set>
				 				<c:forEach var="menu" items="${sessionScope.ordermenuList}">
				 				<c:set var="i" value="${i+1}"></c:set>
						 			<div class="div20">
						 				<p class="relative p6 clear-both">${menu.orderdetProductname }<b class="float-right font15px"><fmt:formatNumber value="${menu.orderdetTotalprice}" pattern="#,###"/> 원</b></p>
						 				<p class="relative p6 clear-both">가격 : ${menu.orderdetSelectproduct}<span class="float-right"><fmt:formatNumber value="${menu.orderdetSelectprice}" pattern="#,###"/>원 x ${menu.orderdetQty}</span></p>
						 				<c:if test="${!empty menu.orderdetOption}">
							 				<p class="relative p6 clear-both">추가선택 : ${menu.orderdetOption}<span class="float-right"><fmt:formatNumber value="${menu.orderdetOptionprice}" pattern="#,###"/>원 x ${menu.orderdetQty}</span></p>
						 				</c:if>
						 			</div>
				 				</c:forEach>
				 			</c:if>
				 			<div class="div21">
				 				<p class="relative p6 clear-both">수량<b class="float-right font15px">${i}개</b></p>
				 				<p class="relative p6 clear-both">총 상품금액<b class="float-right color-orange font15px"><fmt:formatNumber value="${sessionScope.totalMprice}" pattern="#,###"/>원</b></p>
				 				<p class="relative p6 clear-both"><input type="text" name="orderlistPrice"  value="${sessionScope.totalMprice}"></p>
				 				<p class="relative p6 clear-both">포인트 결제<b class="float-right font15px point">-0원</b></p>
				 				<p class="relative p6 clear-both"><input type="text" name="orderlistPaypoint" id="orderlistPaypoint" value="0"></p>
				 			</div>
				 			<div class="div21">
				 				<p class="relative clear-both p6"><b class="float-right">최종결제금액</b></p>
				 				<p class="relative clear-both p6"><input type="text" name="orderlistCargeprice" id="orderlistCargeprice" value="${sessionScope.totalMprice}"></p>
				 				<p class="relative clear-both p6"><b class="float-right color-orange tp"><fmt:formatNumber value="${sessionScope.totalMprice}" pattern="#,###"/>원 </b></p>
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