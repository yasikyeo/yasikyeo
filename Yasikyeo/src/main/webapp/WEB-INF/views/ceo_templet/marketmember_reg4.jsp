<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dropmenu.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slideimg.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmember3.css" type="text/css"/>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script language="javascript">

</script>

<!-- 회원 폼페이지 css -->




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
						<div id="show1">
						정보입력
						</div>
						<div class="show2">
							<div id="lsh">
							사장님께서 등록하실 업소의 상세 내용을 기재해주세요.
							</div>
							<div id="rsh">
							04 업소등록
							</div>
						</div>
						<div class="market_info">
							업소카테고리 
							<select option>
								<option value="koreafood">한식</option>
								<option value="japanfood">일식</option>
								<option value="chinafood">중식</option>
								<option value="yangkifood">양식</option>
							</select>
							업소명 <input type="text">
							업소이미지 <input type="file">
							업소소개 <input type="text">
							최소금액 <input type="text">
							오픈시간 <input type="text">
							마감시간 <input type="text">
							전화번호 <input type="text">
							배달여부 <input type="checkbox">
							원산지내용 <input type="text">
							지도좌표
							업소은행계좌 <input type="text">
							
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