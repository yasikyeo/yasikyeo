<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>고객센터</title>


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/dropmenu.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slideimg.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login.css" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ceoallmenu.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/needpopup.min.css"
	type="text/css" />

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	
</script>

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
					<img src="${pageContext.request.contextPath}/images/logo_p.png"
						width="188" height="90">
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
						<div id="show1">공지사항</div>
						<div class="show2">
							<div id="lsh">사장님께 알려드리는 공지사항입니다. 꼭 확인해주세요~</div>
						</div>
						<div id="ceo_notice">
							<table>
								<colgroup>
									<col style="width: 5%;" />
									<col style="width: 75%;" />
									<col style="width: 20%;" />
								</colgroup>

								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">등록일</th>
								</tr>
								<tr>
									<td id="t_cus1">9</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 사장님사이트 개인정보취급방침
											일부 변경에 관한 안내</summary>
											<div id="content">
												안녕하세요. 야시켜 사장님사이트 개인정보취급방침을 일부 변경하게 되어 이를 알려드리고자 합니다.<br>
												<br> ■ 개인정보취급방침 일부 변경(시행일 : 2016년 9월 23일)<br> 이번
												개인정보취급방침 개정의 주요한 부분은 아래와 같습니다.<br> <br> 정보통신망 이용촉진
												및 정보보호에 관한 법률 개정이 2016년 9월 23일에 시행됨에 따라, 개인정보 관련 법령 용어와
												개인정보처리방침의 용어를 통일하기 위해 아래와 같이 변경합니다.<br> <br> ①
												“취급” -> “처리” <br> ② “누출” -> “유출”<br> ③ “개인정보관리책임자”
												-> “개인정보보호책임자”<br> ④ “개인정보취급방침” -> “개인정보처리방침”<br>
												<br> - 공고일자 : 2016년 09월 13일<br> - 시행일자 : 2016년 09월
												23일<br> <br> 앞으로도 고객님의 개인정보를 안전하게 보호하는 야시켜가 되겠습니다.
												<br><br> 감사합니다.
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-13</td>
								</tr>
								<tr>
									<td id="t_cus1">8</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 야시켜 9월 시스템 정기점검
											안내</summary>
											<div id="content">
												안녕하세요. 야시켜입니다. 안정된 서비스 제공을 위하여 야시켜<br> 9월 시스템 정기점검이 진행될
												예정입니다. 시스템 점검 중에는 바로결제 서비스, 사장님사이트,<br> 우리가게마케팅센터 이용이
												제한되오니 많은 양해 부탁드립니다.<br>
												<br> ■ 시스템 점검일시<br> - 2016년 9월 19일<br>
												<br> 목요일 오전 04시 ~ 08시 30분 (4시간30분) 관련하여 궁금하신 사항은 야시켜<br>
												고객센터로 문의하시면 친절하게 답변드리도록 하겠습니다. 더 좋은 서비스 제공을 위해<br> 최선을
												다하겠습니다.<br><br> 감사합니다.
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-13</td>
								</tr>
								<tr>
									<td id="t_cus1">7</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 야시켜 주류 판매 개시 안내</summary>
											<div id="content">
												안녕하세요. 야시켜입니다. <br> <br> 이제 야시켜에서 주류를
												판매할 수 있게 되었습니다.<br> 치맥, 피맥 등 배달음식과 환상의 궁합을 자랑하는 주류 판매로
												매출을 올려보세요!<br><br> ■ 주류 배달 시 구매자의 성인여부를 반드시 확인해주세요!<br><br> 주류 판매가
												시작되면 전화 주문 / 주류 배달 시 구매자의 성인여부를 반드시 확인하고 주류를 배달하여야 하며,<br> 주류
												구매자가 청소년일 경우 가져가신 주류는 반드시 자체적으로 반환 처리 하셔야 합니다.<br> 만약 청소년에게 주류를
												배달판매 하였을 경우 청소년 보호법에 의거 영업정지, 벌금부과 등의 형사처벌을 받을 수 있으니 꼭 구매자의
												성인여부를 확인하세요.<br><br> 혼자 술을 즐겨 마시는 ‘혼술족’, 가을철 나들이를 떠난 ‘피크닉족’ 의 마음을
												사로잡을 주류판매!<br> 사장님사이트에서 미리 주류 메뉴를 등록하고, 풍성한 가을을 맞이하세요.<br><br> 감사합니다.
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-13</td>
								</tr>
								<tr>
									<td id="t_cus1">6</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 원산지 정보 올바르게 표시하세요.</summary>
											<div id="content">
												안녕하세요, 야시켜입니다.<br><br>
												믿고 먹을 수 있는 건강한 먹거리 문화 정착을 위해 정부에서는 '원산지표시법'을 시행하고 있습니다.<br>
												<br> 원산지 정보가 실제와 다를 경우 처벌의 대상이 될 수 있습니다.<br> 수시로 원산지가 바뀌는
												식자재(수산물 등)를 취급하고 있다면 원산지 정보 표기에 조금 더 신경을 써주세요.<br><br> 매장에 원산지 정보가 올바르게 표시되고 있는지 다시 한번 확인하시고 업데이트 하세요!<br>
												이 외 궁금하신 사항은 야시켜 고객센터로 문의 주시면 친절히 안내드리겠습니다.<br><br> 감사합니다.
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-13</td>
								</tr>
								<tr>
									<td id="t_cus1">5</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 추석 연휴 바로결제 정산 일정 안내</summary>
											<div id="content">
												안녕하세요, 야시켜입니다.<br><br>
												9/14(수) ~ 9/16(금) 추석 연휴로 인해 정산 내역에 대한 검수 진행이 어려워 <br>
												바로결제 정산일이 아래와 같이 변경되오니, 이 점 참고 부탁드립니다. <br><br>
												
												[추석연휴 기간 정산 안내]<br>
												■ 주문기간 : 9월 5일(월) ~ 9월 11일(일) <br>
												■ 정산일 : 9월 14일(수) -> 9월 19일(월)<br><br>
												
												연휴기간에만 일시적으로 정산일이 변경되었으며 차주 정산일자는 9월 21일(수) 입니다.<br>
												관련하여 궁금하신 사항은 야시켜 고객센터로 문의하시면 친절하게 답변드리도록 하겠습니다.<br>
												더 좋은 서비스 제공을 위해 최선을 다하겠습니다.<br><br> 감사합니다.
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-13</td>
								</tr>
								<tr>
									<td id="t_cus1">4</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 허위리뷰 작성은 명백한 불법행위입니다.</summary>
											<div id="content">
												안녕하세요, 야시켜입니다.<br><br> 
												
												최근 일부 배달앱 등록업소를 대상으로<br>
												불법 대행업체가 접근해 허위로 후기를 작성해주겠다는 제안을 하고 있다는<br>
												제보 및 신고가 접수되고 있습니다.<br><br>
												
												후기 조작은 배달음식 시장의
												공정하고 건전한 질서를 어지럽히는 중대한 위법 행위로<br> 야시켜는 이 문제에 대해 엄정하고 단호하게 대처할
												예정입니다.<br><br> 또한, 허위 리뷰 작성은 불법 대행업체뿐만 아니라,<br> 이에 동의하고 동조한 업소 역시 위법 행위에
												따른 법적 책임이 따를 수 있는 만큼,<br> 허위 리뷰 작성으로 인한 불이익이
												없으시도록 유의하시기 바랍니다.<br><br>
												
												감사합니다.
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-13</td>
								</tr>
								<tr>
									<td id="t_cus1">3</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 식품의약품안전처 '식품기본안전수칙'</summary>
											<div id="content">
											안녕하세요 야시켜입니다.<br><br>
											<img src="${pageContext.request.contextPath}/images/foodsafe.jpg"><br><br>
											감사합니다.
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-12</td>
								</tr>
								<tr>
									<td id="t_cus1">2</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 시스템 업그레이드 작업 안내</summary>
											<div id="content">
											안녕하세요. 야시켜입니다<br><br>
											보다 안정적인 서비스 제공을 위하여 아래와 같이 시스템 업그레이드가 진행될 예정입니다.<br> 
											시스템 업그레이드 작업 중에는 바로결제 서비스, 사장님사이트, 우리가게마케팅센터 이용이 제한되오니 많은 양해 부탁드립니다. <br><br>
		
											■ 작업일시<br>
											2016년 9월 12일 목요일 오전 5시 ~ 08시 30분(3시간 30분)<br><br>
											
											관련하여 궁금하신 사항은 고객센터로 문의하시면 친절하게 답변드리도록 하겠습니다.<br>
											더 좋은 서비스 제공을 위해 최선을 다하겠습니다.<br><br>
											
											감사합니다.
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-11</td>
								</tr>
								<tr>
									<td id="t_cus1">1</td>
									<td id="t_cus2">
										<div class="product clear">
											<details> <summary>[공지] 행정경계구역 적용기준 변경 안내</summary>
											<div id="content">
												안녕하세요. 야시켜입니다.<br><br>
												
												행정경계구역 적용 기준이 변경되어 안내 드립니다. <br>
												
												■ 시행일<br>
												2016-09-12(목)<br><br>
												
												■ 변경 내용<br>
												기존에 시/도 경계에 위치한 업소의 광고 노출이 제한되었으나, <br>
												업소의 광고 주소가 시/도 경계에 위치하더라도 광고 노출 반경에 포함되어 있다면<br>
												광고가 노출 될 수 있도록 변경 되었습니다. <br><br>
												
												앞으로도 사장님들께 더 나은 야시켜 서비스를 드릴 수 있도록 최선을 다하겠습니다. <br><br>
												
												감사합니다.
												
											</div>
											</details>
										</div>
									</td>
									<td id="t_cus1">2016-09-10</td>
								</tr>

								<script>
									if ($('html').hasClass('no-details')) {
										var summary = $('details summary');
										summary.siblings().wrapAll(
												'<div class="slide"></div>');

										$('details:not(.open) summary')
												.siblings('div').hide();

										summary.click(function() {
											$(this).siblings('div').toggle();
											$('details').toggleClass('open');
										});
									}
								</script>

							</table>


						</div>

						<div id="bottom_1">
							<div id="footer">
								<p>
									야시켜 | 우리가게마케팅센터 | 회사소개 이용약관 | 광고운영정책 | 개인정보취급방침 | 제휴문의<br>
									사업자등록번호 : 123-45-67890 l 통신판매업 신고번호 : 서울 당산 - 0000호 I 대표 : 거지킹
									l 주소 : 서울 영등포구 양화대교 220 3번다이빙 <br>Copyright © 2016. All
									Rights Reserved.
								</p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>







	</div>
</body>
</html>