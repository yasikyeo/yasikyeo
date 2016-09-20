<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>이벤트</title>


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
						<div id="show1">이벤트</div>
						<div class="show2">
							<div id="lsh">사장님만을 위한 특별한 혜택! 지금 이벤트에 참여해보세요.</div>
						</div>
							<div class="event">
								<table>
									<tr id="t_ev1">
										<td><img src="${pageContext.request.contextPath}/images/sum/m5.jpg" width="240px" height="100px"></td>
										<td><a href="javascript:void(0);" onclick="window.open('event_popup.do', '_blank', 'width=600px, height=480px')">7월 배민아카데미 기본/고급과정</a></td>
										<td>2016/05/09 ~ 2016/05/10</td>
									</tr>
									<tr id="t_ev1">
										<td><img src="${pageContext.request.contextPath}/images/sum/m5.jpg" width="240px" height="100px"></td>
										<td><a href="javascript:void(0);" onclick="window.open('event_popup.do', '_blank', 'width=600px, height=480px')">7월 배민아카데미 기본/고급과정</a></td>
										<td>2016/05/09 ~ 2016/05/10</td>
									</tr>
									<tr id="t_ev1">
										<td><img src="${pageContext.request.contextPath}/images/sum/m5.jpg" width="240px" height="100px"></td>
										<td><a href="javascript:void(0);" onclick="window.open('event_popup.do', '_blank', 'width=600px, height=480px')">7월 배민아카데미 기본/고급과정</a></td>
										<td>2016/05/09 ~ 2016/05/10</td>
									</tr>
									<tr id="t_ev1">
										<td><img src="${pageContext.request.contextPath}/images/sum/m5.jpg" width="240px" height="100px"></td>
										<td><a href="javascript:void(0);" onclick="window.open('event_popup.do', '_blank', 'width=600px, height=480px')">7월 배민아카데미 기본/고급과정</a></td>
										<td>2016/05/09 ~ 2016/05/10</td>
									</tr>
									<tr id="t_ev1">
										<td><img src="${pageContext.request.contextPath}/images/sum/m5.jpg" width="240px" height="100px"></td>
										<td><a href="javascript:void(0);" onclick="window.open('event_popup.do', '_blank', 'width=600px, height=480px')">7월 배민아카데미 기본/고급과정</a></td>
										<td>2016/05/09 ~ 2016/05/10</td>
									</tr>
								</table>
								
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