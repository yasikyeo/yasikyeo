<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>야시켜, 사장님 회원가입</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dropmenu.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmember2.css" type="text/css"/>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>


</head>
<body>
	<div id="wrap">
		<div id="top_1">
			<div id="header">
				<div id="logo"> <img src="${pageContext.request.contextPath}/images/logo_p.png" width="188" height="90"> </div>
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
						<div id="show1">
						이용약관 및 정책
						</div>
						<div class="show2">
							<div id="lsh">
							아래의 이용약관을 읽고 동의해주세요.
							</div>
							<div id="rsh">
							02 약관동의
							</div>
						</div>
						<div id="allcheck">
							<input type="checkbox">사장님사이트 이용약관,개인정보 수집•이용에 모두 동의합니다.
						</div>
						<div class="checkarticle1">
							<b>야시켜 사장님사이트 이용약관</b><br>
							<iframe src="provision1.do" width="100%" height="300px" name="ㅇㅇ"></iframe>
							<div id="checkb1">
								<p>위 야시켜 사장님사이트 이용약관에 동의합니다. <input type="checkbox"> 동의함 </p> 
							</div>
						</div>
						<div class="checkarticle2">
							<b>개인정보 수집·이용 동의</b><br><br>
							<iframe src="provision2.do" width="100%" height="300px"></iframe>
							<div id="checkb2">
								<p>위 개인정보 수집 및 이용에 동의 합니다. <input type="checkbox"> 동의함</p> 
							</div>
						</div>
							<div id="buttonset">							
								<a href="marketmember_reg3.do"><input type="submit" value="동의 후 다음 단계로" name="next" class="next_button"></a>
								<a href="javascript:history.back();"><input type="button" value="이전 단계로" name="back" class="back_button"></a>
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