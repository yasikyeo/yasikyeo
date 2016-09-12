<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>사장님 꿀팁</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dropmenu.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slideimg.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ceoallmenu.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/needpopup.min.css" type="text/css" />

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script language="javascript">
	
</script>
<!-- 모달윈도우 창 디자인 -->

<style>
a[data-needpopup-show] {
	display: inline-block;
	margin: 0 10px 10px 0;
	padding: 10px 15px;
	font-weight: bold;
	letter-spacing: 1px;
	text-decoration: none;
	color: black;
	border-radius: 3px;
	box-shadow: 0 1px 1px 1px rgba(0, 0, 0, 0.2);
}

.needpopup {
	border-radius: 6px;
	box-shadow: 0 1px 5px 1px rgba(0, 0, 0, 1);
}

.needpopup p {
	margin: 0;
}
</style>


</head>
<body>
	<div id="wrap">
		<div id="top_1">
			<div id="header">
				<div id="logo">
					<img src="${pageContext.request.contextPath}/images/logo_p.png"	width="188" height="90">
				</div>
				<div id="nav">
					<div class="menu_test">
						<ul>
							<li class="float_leftmenu"><a href="">내 업소관리</a>
								<div class="open_menu">
									<ul>
										<li><a href="">통화 수 통계 조회</a></li>
										<li><a href="">내 업소 등록</li>
										<li><a href="">업소 리뷰 관리</li>
										<li><a href="">menu_4</li>
									</ul>
								</div></li>
							<li class="float_leftmenu"><a href="">서비스 소개</a></li>
							<li class="float_leftmenu"><a href="">사장님 꿀팁</a></li>
							<li class="float_leftmenu"><a href="">이벤트</a></li>
							<li class="float_leftmenu"><a href="">고객센터</a></li>
					</div>
				</div>
			</div>
		</div>




		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">사장님 꿀팁</div>
						<div class="show2">
							<div id="lsh">사장님의 성공을 위한 알짜배기 정보를 모아 보여드립니다.</div>
						</div>
							<div id="honeytips">
								<div class="wrapper">
									<a href="#" data-needpopup-show="#custom-popup1"> 
									<img src="${pageContext.request.contextPath}/images/sum/m1.jpg" width="258px" height="170px"><br>대한민국 외식업 현주소</a>
									<a href="#" data-needpopup-show="#custom-popup2">
									<img src="${pageContext.request.contextPath}/images/sum/m2.jpg" width="258px" height="170px"><br>위생, 청결 관리가 맛을 결정짓는다</a>
									<a href="#" data-needpopup-show="#custom-popup3">
									<img src="${pageContext.request.contextPath}/images/sum/m3.jpg" width="258px" height="170px"><br>인테리어Tip</a>
									<a href="#" data-needpopup-show="#custom-popup4">
									<img src="${pageContext.request.contextPath}/images/sum/m4.jpg" width="258px" height="170px"><br>데이터로 경영하라</a>
									<a href="#" data-needpopup-show="#custom-popup5">
									<img src="${pageContext.request.contextPath}/images/sum/m5.jpg" width="258px" height="170px"><br>산지 식재료 구매 루트를 확보하라</a>
									<a href="#" data-needpopup-show="#custom-popup6">
									<img src="${pageContext.request.contextPath}/images/sum/m6.jpg" width="258px" height="170px"><br>매출향상</a>
									<a href="#" data-needpopup-show="#custom-popup7">
									<img src="${pageContext.request.contextPath}/images/sum/m7.jpg" width="258px" height="170px"><br>직접 식재료를 구해 사용하라!</a>
									<a href="#" data-needpopup-show="#custom-popup8">
									<img src="${pageContext.request.contextPath}/images/sum/m8.jpg" width="258px" height="170px"><br>고객맞춤 서비스</a>
									<a href="#" data-needpopup-show="#custom-popup9">
									<img src="${pageContext.request.contextPath}/images/sum/m9.jpg" width="258px" height="170px"><br>식재료 원가 절감이 답</a>
									<a href="#" data-needpopup-show="#custom-popup10">
									<img src="${pageContext.request.contextPath}/images/sum/m10.jpg" width="258px" height="170px"><br>맛있는 상태를 그대로 유지하라!</a>
									<a href="#" data-needpopup-show="#custom-popup11">
									<img src="${pageContext.request.contextPath}/images/sum/m11.jpg" width="258px" height="170px"><br>미래를 위한 현재의 재조명</a>
									<a href="#" data-needpopup-show="#custom-popup12">
									<img src="${pageContext.request.contextPath}/images/sum/m12.jpg" width="258px" height="170px"><br>숙성과정에서 신맛, 새콤함을 살려라</a>
	
	
									<div id='custom-popup1' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m1_context.png"></p>
									</div>
									<div id='custom-popup2' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m2_context.png"></p>
									</div>
									<div id='custom-popup3' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m3_context.png"></p>
									</div>
									<div id='custom-popup4' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m4_context.png"></p>
									</div>
									<div id='custom-popup5' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m5_context.png"></p>
									</div>
									<div id='custom-popup6' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m6_context.png"></p>
									</div>
									<div id='custom-popup7' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m7_context.png"></p>
									</div>
									<div id='custom-popup8' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m8_context.png"></p>
									</div>
									<div id='custom-popup9' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m9_context.png"></p>
									</div>
									<div id='custom-popup10' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m10_context.png"></p>
									</div>
									<div id='custom-popup11' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m11_context.png"></p>
									</div>
									<div id='custom-popup12' class="needpopup" data-needpopup-options="custom">
										<p><img src="${pageContext.request.contextPath}/images/sum/m12_context.png"></p>
									</div>
	

								</div>
	
								
								<script src="${pageContext.request.contextPath}/jquery/needpopup.min.js"></script>
								<script>
									needPopup.config.custom = {
										'removerPlace' : 'outside',
										'closeOnOutside' : false,
										onShow : function() {
											console.log('needPopup is shown');
										},
										onHide : function() {
											console.log('needPopup is hidden');
										}
									};
									needPopup.init();
								</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





		<div id="bottom_1">
			<div id="footer">
				<p>
					야시켜 | 우리가게마케팅센터 | 회사소개 이용약관 | 광고운영정책 | 개인정보취급방침 | 제휴문의<br>
					사업자등록번호 : 123-45-67890 l 통신판매업 신고번호 : 서울 당산 - 0000호 I 대표 : 거지킹 l 주소
					: 서울 영등포구 양화대교 220 3번다이빙 <br>Copyright © 2016. All Rights
					Reserved.
				</p>
			</div>
		</div>

	</div>
</body>
</html>