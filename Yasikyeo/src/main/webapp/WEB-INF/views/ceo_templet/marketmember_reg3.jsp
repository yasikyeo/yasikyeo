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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmember3.css" type="text/css"/>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script language="javascript">

	function setDate(FORM, year, month, day) {
		
	}
</script>

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
						정보입력
						</div>
						<div class="show2">
							<div id="lsh">
							가입하신 정보는 회원님의 동의 없이 공개되지 않으며, 개인정보 보호정책에 의해 보호를 받습니다.
							</div>
							<div id="rsh">
							03 정보입력
							</div>
						</div>
						<div class="infoinput">
							<form id="hostinfo">
								<table border="3"; width="100%"; height="100%";>
									<tr>
										<td class="td_1" rowspan="4">사장님 정보</td>
										<td class="td_2">사장님 성함</td>
										<td class="td_3"><input type="text" class="formInput" id="name" name="name"></td>
									</tr>
									
									<tr>
										<td class="td_2">휴대폰 번호</td>
										<td class="td_3">
											<select name="phone1" class="formInput">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select><input type="text" class="formInput" id="phone2" name="phone2"> <input type="text" class="formInput" id="phone3" name="phone3">
										</td>
									</tr>
									
									<tr>
										<td class="td_2">생년월일</td>
										<td class="td_3">
											<select name="year" class="formInput">
												<option value="selectYear">년도</option>
												</select>
												<select name="month" class="formInput">
												<option value="selectMonth">월</option>
												</select>
												<select name="day" class="formInput">
												<option value="selectDay">일</option>
											</select>
										</td>
									</tr>
									
									<tr>
										<td class="td_2">이메일주소</td>
										<td class="td_3">
											<input type="text" class="formInput" id="email1" name="email1">@ <input type="text" class="formInput" id="email2" name="email2">
											<select name="emailchoice" class="formInput">
												<option value="email2">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="hanmail.com">hanmail.com</option>
											</select>
										</td>
									</tr>
									
									
								</table>
								
							</form>
							<form id="marketinfo">
								<table border="3"; width="100%"; height="100%";>
									<tr>
										<td class="td_1" width="10%" rowspan="1">내 업소 정보</td>
										<td class="td_2">										
											사업자등록번호
										</td>
										<td class="td_3">
											<input type="text" class="formInput" id="busnum" name="busnum">
										</td>
									</tr>
								</table>
							</form>
							<form id="accountinfo">
								<table border="3"; width="100%"; height="100%";>
									<tr>
										<td class="td_1" width="10%" rowspan="3">계정 정보</td>
										<td class="td_2">
										아이디
										</td>
										<td class="td_3">
											<input type="text" class="formInput" id="id" name="id"> <input type="button" class="formInput" id="idcheck" name="idcheck" value="중복확인"><br>
										</td>
									</tr>
									
									<tr>
										<td class="td_2">
										비밀번호 입력 
										</td>
										<td class="td_3">
											<input type="password" class="formInput" id="password" name="password"><br>
										</td>
									</tr>
									
									<tr>
										<td class="td_2">
										비밀번호 확인
										</td>
										<td class="td_3">
											<input type="password" class="formInput" id="passwordc" name="passwordc"><br>
										</td>
									</tr>
								</table>
							</form>
							<div id="buttonset">	
								<a href="marketmember_reg4.do"><input type="submit" value="계속 진행하기" name="next" class="next_button"></a>
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