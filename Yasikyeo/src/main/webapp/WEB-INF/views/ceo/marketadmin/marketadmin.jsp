<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ceoallmenu.css" type="text/css" />
<title>야시켜, 사장님 업소관리</title>



		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">내 업소관리</div>
						<div class="show2">
							<div id="lsh">사장님 업소에 대한 내용을 확인 및 수정할수 있는 메뉴입니다.</div>
						</div>
							<div class="marketadmins">
								
								<p>가게 별점 평균 <span class="star-rating"> <span style="width:50%"></span></span></p>
								<p>주문건 수 - 전체 : 0건, 일별 : 0건</p>
								<p>등록된 즐겨찾기 수 - 0건</p>
								<p>등록된 리뷰 수 - 0건</p>
								<br>	
								<table>
									<tr>
									<div class="product clear">
										<details> <summary>메뉴 등록 및 수정</summary>
										<div id="content">
											<div class="needpopup">
												
												메뉴 카테고리
												<select name="shop_categori" class="formInput">
													<option value="koreafood">한식</option>
													<option value="japanfood">일식</option>
													<option value="chinafood">중식</option>
													<option value="yangkifood">양식</option>
												</select>
												<br>
												가격<input type="text"><br>
												
												<select name="step" class="formInput">
													<option value="choice">선택</option>
													<option value="indispensable">필수</option>
												</select>
												<input type="text" value="이름"> <input type="text" value="가격 입력"><input type='button' onclick="Answer_Add('Answer')" value="추가" />
												

											</div>
										</div>
										</details>
									</div>
									</tr>
									<br>
									<tr>
									<div class="product clear">
										<details> <summary>리뷰 관리</summary>
										<div id="content">
											<div class="needpopup">
												(리뷰내용을list형식으로보기,리플달기)
											</div>
										</div>
										</details>
									</div>
									</tr>
									<br>
									<tr>
									<div class="product clear">
										<details> <summary>주문관리</summary>
										<div id="content">
											<div class="needpopup">
												({주문내용보기(주문일시,주문번호,메뉴,주문금액,상태변경버튼(배달중,배달완료)})
											</div>
										</div>
										</details>
									</div>
									</tr>
									
									
									<script>
										if ($('html').hasClass('no-details')) {
											var summary = $('details summary');
											summary
													.siblings()
													.wrapAll(
															'<div class="slide"></div>');

											$('details:not(.open) summary')
													.siblings('div').hide();

											summary.click(function() {
												$(this).siblings('div')
														.toggle();
												$('details')
														.toggleClass('open');
											});
										}
									</script>


							</table>
							
							</div>

						<br><br><br>



	</div>
<%@ include file="../../inc/ceo/bottom.jsp" %>