<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>야시켜, 사장님 회원가입</title>


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/dropmenu.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login.css" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/marketmember4.css"
	type="text/css" />

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script language="javascript">
	
</script>


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
						<div id="show1">정보입력</div>
						<div class="show2">
							<div id="lsh">사장님께서 등록하실 업소의 상세 내용을 기재해주세요.</div>
							<div id="rsh">04 업소등록</div>
						</div>
						<div class="shop_info">
							<form id="shop_reg">
								<table border="3" ; width="100%" ; height="100%";>

									<tr>
										<td class="td_1">업소 카테고리</td>
										<td class="td_2"><select name="shop_categori"
											class="formInput">
												<option value="koreafood">한식</option>
												<option value="japanfood">일식</option>
												<option value="chinafood">중식</option>
												<option value="yangkifood">양식</option>
										</select></td>
									</tr>

									<tr>
										<td class="td_1">업소명</td>
										<td class="td_2"><input type="text" class="formInput"
											name="shop_name"></td>
									</tr>

									<tr>
										<td class="td_1">업소이미지</td>
										<td class="td_2">
											<input type="text" id="fileName" class="file_input_textbox" readonly="readonly">
											<div class="file_input_div">
												<input type="button" value="이미지 업로드"
													class="file_input_button" /> <input type="file"
													class="file_input_hidden"
													onchange="javascript: document.getElementById('fileName').value = this.value" />
											</div>
											</tr>
									<tr>
										<td class="td_1">업소소개</td>
										<td class="td_2">
											<textarea rows="15" cols="80" class="formInput" style="width: 350px; height: 170px;"></textarea>
										</td>
									</tr>

									<tr>
										<td class="td_1">최소배달금액</td>
										<td class="td_2"><input type="text" class="formInput"
											name="shop_minprice"></td>
									</tr>

									<tr>
										<td class="td_1">오픈 & 마감시간</td>
										<td class="td_2"><select name="shop_opentime"
											class="formInput3">
												<option value="am">오전</option>
												<option value="pm">오후</option>
										</select> <select name="shop_opentime" class="formInput3">
												<option value="1h">1</option>
												<option value="2h">2</option>
												<option value="3h">3</option>
												<option value="4h">4</option>
												<option value="5h">5</option>
												<option value="6h">6</option>
												<option value="7h">7</option>
												<option value="8h">8</option>
												<option value="9h">9</option>
												<option value="10h">10</option>
												<option value="11h">11</option>
												<option value="12h">12</option>
										</select> <select name="shop_opentime" class="formInput3">

										</select> & <select name="shop_closetime" class="formInput3">
												<option value="am">오전</option>
												<option value="pm">오후</option>
										</select> <select name="shop_opentime" class="formInput3">
												<option value="1h">1</option>
												<option value="2h">2</option>
												<option value="3h">3</option>
												<option value="4h">4</option>
												<option value="5h">5</option>
												<option value="6h">6</option>
												<option value="7h">7</option>
												<option value="8h">8</option>
												<option value="9h">9</option>
												<option value="10h">10</option>
												<option value="11h">11</option>
												<option value="12h">12</option>
										</select> <select name="shop_opentime" class="formInput3">

										</select>
									</tr>

									<tr>
										<td class="td_1">전화번호</td>
										<td class="td_2"><input type="text" class="formInput"
											name="shop_tel"></td>
									</tr>

									<tr>
										<td class="td_1">배달여부</td>
										<td class="td_2"><input type="radio" class="formInput"
											name="shop_delivery" value="true">가능 <input
											type="radio" class="formInput" name="shop_delivery"
											value="false">불가</td>
									</tr>

									<tr>
										<td class="td_1">원산지내용</td>
										<td class="td_2"><input type="text" class="formInput"
											name="shop_origin"></td>
									</tr>

									<tr>
										<td class="td_1">지도좌표</td>
										<td class="td_2">
											<a href="javascript:void(0);" onclick="window.open('daummap.do', '_blank', 'width=1080px, height=680px')">
											<input type="button" value="지도창 띄우기" id="formbutton"></a>
										</td>
									</tr>

									<tr>
										<td class="td_1">업소은행계좌</td>
										<td class="td_2"><select name="shop_categori"
											class="formInput">
												<option value="kb">국민</option>
												<option value="sh">신한</option>
												<option value="wr">우리</option>
												<option value="nh">농협</option>
										</select> <input type="text" class="formInput" name="shop_account"></td>
									</tr>
								</table>
							</form>
							<div id="buttonset">
								<input type="submit" value="업소등록" name="next"
									class="next_button">
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