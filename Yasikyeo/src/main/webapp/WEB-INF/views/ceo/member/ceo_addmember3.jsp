<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmember3.css" type="text/css"/>
<title>야시켜, 사장님 회원가입</title>

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
								<a href="<c:url value='/ceo/member/ceo_addmember4.do'/>"><input type="submit" value="계속 진행하기" name="next" class="next_button"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




 
<%@include file="../../inc/ceo/bottom.jsp" %>