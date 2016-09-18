<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>야시켜 사장님사이트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dropmenu.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" type="text/css" />

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<!-- 슬라이드 자바 스크립트 불러옴-->
<script src="${pageContext.request.contextPath}/js/jquery.slides.min.js"></script>

</head>
<body>
	<div id="wrap">
		<div id="top_1">
			<div id="header">
				<div id="logo"> <a href="test.do"><img src="${pageContext.request.contextPath}/images/logo_p.png" width="188" height="90"></a> </div>
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
							<li class="float_leftmenu"><a href="serviceintro.do">서비스 소개</a></li>
							<li class="float_leftmenu"><a href="honeytip.do">사장님 꿀팁</a></li>
							<li class="float_leftmenu"><a href="ceo_event.do">이벤트</a></li>
							<li class="float_leftmenu"><a href="cuscenter.do">고객센터</a></li>
					</div>
				</div>
			</div>
		</div>




		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div class="container">
    						<div id="slides">
      							<img src="${pageContext.request.contextPath}/images/test1.png" alt="이미지1" width="800" height="470">
							    <img src="${pageContext.request.contextPath}/images/test2.png" alt="이미지2" width="800" height="470">
							    <img src="${pageContext.request.contextPath}/images/test3.png"alt="이미지3" width="800" height="470">
    						</div>
    						
    						<div id="conlogin">
    							<div id="alignlogin">
	    							<input type="text" maxlength="100" value="ID 입력" name="username" onclick="textClear(this);" class="input">
	    							<br><input type="password" maxlength="100" value="비밀번호 입력" name="password" onclick="textClear(this);" class="input">
	    							<br><p><input type="checkbox"> <a href="">아이디 저장 ID/PW찾기 |</a> <a href="marketmember_reg.do">회원가입</a></p>
									<br><input type="submit" value="로그인" name="login" class="login_button" />
								</div>
							</div>
							
    						<script>
							$(function() {
								$('#slides').slidesjs({
									width: 940, height: 528, play: {active: true, auto: true, interval: 4000, swap: true}
								});
							});
							</script>
							<script type="text/javascript">
								function textClear(element){
									if(element.value !='')
									{
										element.value = '';
									}
								}
								
								function link1(){
									location.href="http://www.naver.com";
								}
								function link2(){
									location.href="http://www.naver.com";
								}
								function link3(){
									location.href="http://www.naver.com";
								}
								function link4(){
									location.href="http://www.naver.com";
								}
								function link5(){
									location.href="http://www.naver.com";
								}
								function link6(){
									location.href="http://www.naver.com";
								}
							</script>
    					</div>
    						<div id="info">
								<div id="info_1" onclick="link1()"><!-- 업소등록 확인 --></div>
								<div id="info_2" onclick="link2()"><!-- 업소정보 수정 --></div>
								<div id="info_3" onclick="link3()"><!-- 정산내역 확인 --></div>
							</div>
							<div id="dinfo">
								<div id="info_4">
								<b>공지사항</b>
								<hr>
								<b> [공지]9월 야시켜아카데미 고급과정 선정자발표</b>
								<p>2016.08.25<br>
								사장님의 성장을 돕는 교육프로그램 9월 야시켜아카데미 고급과정 교육에 참여할 사장님을 공개합니다!</p>
								<br>
								<hr>
								<b>[공지] 우리가게 청결 자랑하기 이벤트 당첨자발표</b>
								<p>2016.08.25<br>
								청결왕 프로젝트 시즌2 <우리가게 청결 자랑하기> 이벤트 당첨자를 공개합니다.</p>
								
								</div>
								<div id="info_5">
								<img src="${pageContext.request.contextPath}/images/info5testimg.jpg" width="377.60" height="325" onclick="link4()">
								</div>
								
								<div class="info_group">
									<div id="info_6">
									<img src="${pageContext.request.contextPath}/images/info6testimg.jpg" width="377.60" height="160" onclick="link5()">
									</div>
									<div id="info_7">
									<img src="${pageContext.request.contextPath}/images/info7testimg.jpg" width="377.60" height="160" onclick="link6()">
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>




 
		<div id="bottom_1">
			<div id="footer">
			<p>
			야시켜 | 우리가게마케팅센터  |  회사소개 이용약관  |  광고운영정책  |  개인정보취급방침  |  제휴문의<br>
			사업자등록번호 : 123-45-67890 l 통신판매업 신고번호 : 서울 당산 - 0000호 I 대표 : 거지킹 l 주소 : 서울 영등포구 양화대교 220 3번다이빙
			<br>Copyright © 2016. All Rights Reserved.
			</p>
			</div>
		</div>

	</div>
</body>
</html>