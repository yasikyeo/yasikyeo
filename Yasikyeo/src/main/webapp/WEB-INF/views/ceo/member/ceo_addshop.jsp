<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/marketmember4.css"	type="text/css" />
<title>야시켜, 사장님 회원가입</title>

		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">정보입력</div>
						<div class="show2">
							<div id="lsh">사장님께서 등록하실 업소의 상세 내용을 기재해주세요.</div>
							<div id="rsh">업소등록</div>
						</div>
						<div class="shop_info">
							<form id="shop_reg">
								<table border="3" ; width="100%" ; height="100%";>
									<tr>
										<td class="td_1">업소 카테고리</td>
										<td class="td_2"><select name="shopCategori" class="formInput">
												<option value="koreafood">한식</option>
												<option value="japanfood">일식</option>
												<option value="chinafood">중식</option>
												<option value="yangkifood">양식</option>
												<option value="etcfood">기타</option>
										</select>
										</td>
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
										<td class="td_2"><select name="shop_opentime" class="formInput3">
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
											<%for(int i=0; i<=60; i+=10){ %>
												<option value="<%=i%>m"><%=i %></option> 
											<%} %>
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
											<%for(int i=0; i<=60; i+=10){ %>
												<option value="<%=i%>m"><%=i %></option> 
											<%} %>
										</select>
									</tr>

									<tr>
										<td class="td_1">전화번호</td>
										<td class="td_2"><input type="text" class="formInput"
											name="shop_tel"></td>
									</tr>

									<tr>
										<td class="td_1">원산지정보</td>
										<td class="td_2"><input type="text" class="formInput"
											name="shop_origin"></td>
									</tr>

									<tr>
										<td class="td_1">우편번호</td>
										<td class="td_2">
											<input type="text" ReadOnly id="postcode" name="postcode" class="formInput">
											<input type="Button" class="formButton" value="우편번호 찾기" title="새창열림" onclick="execDaumPostcode()">
										</td>
									</tr>
									<tr>
										<td class="td_1">주소</td>
										<td class="td_2">
											<input type="text" ReadOnly id="address" name="address" class="formInput4">
										</td>
									</tr>
									<tr>
										<td class="td_1">상세주소</td>
										<td class="td_2">
											<input type="text" id="addressDetail" name="addressDetail" class="formInput4">
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



<%@ include file="../../inc/ceo/bottom.jsp" %>