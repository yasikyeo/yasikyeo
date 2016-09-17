<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
	$(function() {
	    $("#tab1").tabs();
	    
	    var icons = {
	    		header: "ui-icon-difult",
	    		activeHeader: "ui-icon-active"
	    };
	    
	    $( ".accordion" ).accordion({
	    	header: "> div > .btAccodion",
	    	collapsible: true,
	    	heightStyle: "content",
	    	active: false,
	    	icons: icons
	    })
	      .sortable({
	        axis: "y",
	        handle: ".btAccodion",
	        stop: function( event, ui ) {
	          ui.item.children( ".btAccodion" ).triggerHandler( "focusout" );
	          $( this ).accordion( "refresh" );
	        }
	      });
	});
</script>
<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="">홈</a>
			</li>
			<li>&gt;</li>
			<li><b>자주묻는질문</b></li>
		</ul>
	</div>
	<!-- 자주묻는질문 기본 게피판시작 -->
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="#"><span class="tabMenu">서비스소개</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">공지사항/이벤트</span></a></li>
			<li class="noteff"><a href="#"><span class="tabMenu">자주묻는질문</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">문의하기</span></a></li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>자주 묻는 질문</legend>
			<div id="tab1" >
				<ul class="div5">
					<li class="flex1 "><a class="vertical-container" href="#tab1-1">전체보기</a></li>
					<li class="flex1 "><a class="vertical-container" href="#tab1-2">회원가입</a></li>
					<li class="flex1 "><a class="vertical-container" href="#tab1-3">바로결제</a></li>
					<li class="flex1 "><a class="vertical-container" href="#tab1-4">리뷰관리</a></li>
					<li class="flex1 "><a class="vertical-container" href="#tab1-5">이용문의</a></li>
					<li class="flex1 "><a class="vertical-container" href="#tab1-6">기타</a></li>
				</ul>
				<div id="tab1-1">
					<div class="tabheader">
						<span class="sp6">문의부분</span>제목
					</div>
					<div class="accordion">
						<div class="group">
							<div class="btAccodion"><span class="sp6">바로결제</span>바로결제가 뭔가요?</div>
						    <div>
						      <p>매번 주문 따로 결제 따로 힘드셨죠? 배달의민족 바로결제 서비스는 배달업소에서 제공하는 메뉴를 휴대폰이나 신용카드로 바로 결제할 수 있는 배달 서비스입니다. 바로결제로 시켜먹을 경우 꼬박꼬박 포인트가 적립되어 배달시켜 먹을 때마다 할인받아 주문할 수도 있습니다.</p>
						    </div>
						</div>
						<div class="group">
							<div class="btAccodion"><span class="sp6">바로결제</span>바로결제 사용 방법을 알려주세요!</div>
						    <div>
						      <p>바로결제는 크게 메뉴선택 - 배달정보 입력 - 결제의 순서로 진행됩니다.<br>
						      	<br>
								먼저 주문할 업소를 선택한 다음, 주문할 메뉴를 선택합니다. 메뉴 이미지나 버튼을 누를 경우 메뉴 상세설명이 뜨는데, 이 때 수량 및 선택옵션을 고른다음 바로 주문하려면 바로결제 버튼을, 다른 메뉴를 더 추가하려면 장바구니에 담기를 누릅니다.<br>
								<br>
								장바구니에서 고른 메뉴들을 확인 한 다음 배달 및 결제정보 입력에서 주소 및 연락처, 결제 방법을 선택합니다. (바로결제를 누를 경우 바로 배달 및 결제정보 입력으로 이동합니다) 포인트 사용을 할 경우, 보유한 포인트에서 사용할 포인트를 입력합니다.<br>
								<br>
								선택한 결제방법(휴대폰, 신용카드)에 따라 결제진행을 하면 됩니다.</p>
						    </div>
						</div>
					</div>
					<br>
					<div class="vertical-container">
						<ul class="pagination">
							<li><a href="#">&laquo;</a></li>
							<li><a href="#">1</a></li>
							<li><a class="active" href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
				</div>
				<div id="tab1-2">
					<div class="tabheader">
						<span class="sp6">문의부분</span>제목
					</div>
					<div class="accordion">
						<!-- 반복시작 -->
						<div class="group">
							<div class="btAccodion"><span class="sp6">머릿말부분1</span>제목쓰는곳1</div>
						    <div>
						      <p>컨텐츠1</p>
						    </div>
						</div>
						<div class="group">
							<div class="btAccodion"><span class="sp6">회원가입</span>회원탈퇴를 하고 싶어요. 어떻게해야되나요?</div>
						    <div>
						      <p>회원탈퇴는<br>
						        * 배달의민족 앱<br>
						          안드로이드 버전 : 상단사이드바 > 내 아이디 클릭(상단) > 내정보 수정 내 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								IOS버전 : 어플하단 the보기 > 내정보수정 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								<br>
								* 배민닷컴<br>
								배민닷컴 로그인후 우측상단 마이페이지클릭 > 내정보 > 화면 아래쪽에 회원탈퇴 버튼이 있습니다.<br> 
								<br>
								탈퇴한 이메일계정으로는 재가입이 안되며 포인트 및 주문내역 등 모든 정보가 사라집니다 ㅠㅠ<br> 
								신중하게 결정하여 탈퇴부탁드립니다.</p>
						    </div>
						</div>
						<!-- 반복끝 -->
					</div>
				</div>
				<div id="tab1-3">
					<div class="tabheader">
						<span class="sp6">문의부분</span>제목
					</div>
					<div class="accordion">
						<!-- 반복시작 -->
						<div class="group">
							<div class="btAccodion"><span class="sp6">머릿말부분1</span>제목쓰는곳1</div>
						    <div>
						      <p>컨텐츠1</p>
						    </div>
						</div>
						<div class="group">
							<div class="btAccodion"><span class="sp6">회원가입</span>회원탈퇴를 하고 싶어요. 어떻게해야되나요?</div>
						    <div>
						      <p>회원탈퇴는<br>
						        * 배달의민족 앱<br>
						          안드로이드 버전 : 상단사이드바 > 내 아이디 클릭(상단) > 내정보 수정 내 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								IOS버전 : 어플하단 the보기 > 내정보수정 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								<br>
								* 배민닷컴<br>
								배민닷컴 로그인후 우측상단 마이페이지클릭 > 내정보 > 화면 아래쪽에 회원탈퇴 버튼이 있습니다.<br> 
								<br>
								탈퇴한 이메일계정으로는 재가입이 안되며 포인트 및 주문내역 등 모든 정보가 사라집니다 ㅠㅠ<br> 
								신중하게 결정하여 탈퇴부탁드립니다.</p>
						    </div>
						</div>
						<!-- 반복끝 -->
					</div>
				</div>
				<div id="tab1-4">
					<div class="tabheader">
						<span class="sp6">문의부분</span>제목
					</div>
					<div class="accordion">
						<!-- 반복시작 -->
						<div class="group">
							<div class="btAccodion"><span class="sp6">머릿말부분1</span>제목쓰는곳1</div>
						    <div>
						      <p>컨텐츠1</p>
						    </div>
						</div>
						<div class="group">
							<div class="btAccodion"><span class="sp6">회원가입</span>회원탈퇴를 하고 싶어요. 어떻게해야되나요?</div>
						    <div>
						      <p>회원탈퇴는<br>
						        * 배달의민족 앱<br>
						          안드로이드 버전 : 상단사이드바 > 내 아이디 클릭(상단) > 내정보 수정 내 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								IOS버전 : 어플하단 the보기 > 내정보수정 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								<br>
								* 배민닷컴<br>
								배민닷컴 로그인후 우측상단 마이페이지클릭 > 내정보 > 화면 아래쪽에 회원탈퇴 버튼이 있습니다.<br> 
								<br>
								탈퇴한 이메일계정으로는 재가입이 안되며 포인트 및 주문내역 등 모든 정보가 사라집니다 ㅠㅠ<br> 
								신중하게 결정하여 탈퇴부탁드립니다.</p>
						    </div>
						</div>
						<!-- 반복끝 -->
					</div>
				</div>
				<div id="tab1-5">
					<div class="tabheader">
						<span class="sp6">문의부분</span>제목
					</div>
					<div class="accordion">
						<!-- 반복시작 -->
						<div class="group">
							<div class="btAccodion"><span class="sp6">머릿말부분1</span>제목쓰는곳1</div>
						    <div>
						      <p>컨텐츠1</p>
						    </div>
						</div>
						<div class="group">
							<div class="btAccodion"><span class="sp6">회원가입</span>회원탈퇴를 하고 싶어요. 어떻게해야되나요?</div>
						    <div>
						      <p>회원탈퇴는<br>
						        * 배달의민족 앱<br>
						          안드로이드 버전 : 상단사이드바 > 내 아이디 클릭(상단) > 내정보 수정 내 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								IOS버전 : 어플하단 the보기 > 내정보수정 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								<br>
								* 배민닷컴<br>
								배민닷컴 로그인후 우측상단 마이페이지클릭 > 내정보 > 화면 아래쪽에 회원탈퇴 버튼이 있습니다.<br> 
								<br>
								탈퇴한 이메일계정으로는 재가입이 안되며 포인트 및 주문내역 등 모든 정보가 사라집니다 ㅠㅠ<br> 
								신중하게 결정하여 탈퇴부탁드립니다.</p>
						    </div>
						</div>
						<!-- 반복끝 -->
					</div>
				</div>
				<div id="tab1-6">
					<div class="tabheader">
						<span class="sp6">문의부분</span>제목
					</div>
					<div class="accordion">
						<!-- 반복시작 -->
						<div class="group">
							<div class="btAccodion"><span class="sp6">머릿말부분1</span>제목쓰는곳1</div>
						    <div>
						      <p>컨텐츠1</p>
						    </div>
						</div>
						<div class="group">
							<div class="btAccodion"><span class="sp6">회원가입</span>회원탈퇴를 하고 싶어요. 어떻게해야되나요?</div>
						    <div>
						      <p>회원탈퇴는<br>
						        * 배달의민족 앱<br>
						          안드로이드 버전 : 상단사이드바 > 내 아이디 클릭(상단) > 내정보 수정 내 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								IOS버전 : 어플하단 the보기 > 내정보수정 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
								<br>
								* 배민닷컴<br>
								배민닷컴 로그인후 우측상단 마이페이지클릭 > 내정보 > 화면 아래쪽에 회원탈퇴 버튼이 있습니다.<br> 
								<br>
								탈퇴한 이메일계정으로는 재가입이 안되며 포인트 및 주문내역 등 모든 정보가 사라집니다 ㅠㅠ<br> 
								신중하게 결정하여 탈퇴부탁드립니다.</p>
						    </div>
						</div>
						<!-- 반복끝 -->
					</div>
				</div>
			</div>
			<!-- 자주묻는질문 기본 게피판끝 -->
			<fieldset class="fieldset1">
				<legend>자주묻는 질문 Top10</legend>
				<hr class="hr1">
				<div class="accordion">
					<!-- 반복시작 -->
					<div class="group">
						<div class="btAccodion"><span class="sp7">1</span>제목쓰는곳1</div>
					    <div>
					      <p>컨텐츠1</p>
					    </div>
					</div>
					<div class="group">
						<div class="btAccodion"><span class="sp7">2</span>회원탈퇴를 하고 싶어요. 어떻게해야되나요?</div>
					    <div>
					      <p>회원탈퇴는<br>
					        * 배달의민족 앱<br>
					          안드로이드 버전 : 상단사이드바 > 내 아이디 클릭(상단) > 내정보 수정 내 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
							IOS버전 : 어플하단 the보기 > 내정보수정 하단에 보시면 작게 회원탈퇴버튼이 있습니다.<br> 
							<br>
							* 배민닷컴<br>
							배민닷컴 로그인후 우측상단 마이페이지클릭 > 내정보 > 화면 아래쪽에 회원탈퇴 버튼이 있습니다.<br> 
							<br>
							탈퇴한 이메일계정으로는 재가입이 안되며 포인트 및 주문내역 등 모든 정보가 사라집니다 ㅠㅠ<br> 
							신중하게 결정하여 탈퇴부탁드립니다.</p>
					    </div>
					</div>
					<!-- 반복끝 -->
				</div>
			</fieldset>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>