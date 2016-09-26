<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ceoallmenu.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmember3.css" type="text/css"/>
<title>야시켜, 사장님 업소관리 페이지</title>

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
										<details> <summary>메뉴 등록</summary>
										<div id="content">
											<div class="needpopup">
												<form id="write" method="post" action="<c:url value='/ceo/marketadmin/marketadmin.do'/>" enctype="multipart/form-data">
													<div id="productImgView"></div>
													<div>메뉴 이미지 등록 : <input type="file" name="imageUpload" id="imageUpload" onchange="handleFileSelect(0)" class="formInput1"/></div>
													<div>메뉴 이름 : <input type="text" id="food" name="productName" class="formInput2"></div>
													<div>메뉴 옵션 : <input type="text" name="productOption" class="formInput2" placeholder="작성 예) : 콜라500ml 1000/콜라1.25L 2000/사이다500ml 1500"></div>
													<div>메뉴 가격 : <input type="text" id="price" name="productPrice" class="formInput2" placeholder="작성 예 : 대 16000/중 15000/소 14000"></div><br>
													<div><label for="productExplain">메뉴 설명<br></label>
													<textarea rows="15" cols="80" name="productExplain" class="formInput" style="width: 500px; height: 170px; float: inherit;"></textarea></div><br>
													 <input type="submit" class="formInput" value="등록하기"><br>
												</div>
											</form>
										</div>
										
										</details>
									</div>
									</tr>
									<br>
									<tr>
									<div class="product clear">
										<details> <summary>메뉴 관리</summary>
										<div id="content">
											<div class="needpopup3">
												<table summary="상품목록에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
													<caption>상품 목록</caption>
													<colgroup>
														<col style="width:5%" />
														<col style="width:15%" />
														<col style="width:32%" />
														<col style="width:15%" />
														<col style="width:15%" />	
														<col style="width:9%" />
														<col style="width:9%" />			
													</colgroup>
													<thead>
													  <tr>
														<th><input type="checkbox" name="chkAll" ></th>
														<th scope="col">상품이미지</th>
														<th scope="col">상품이름</th>
														<th scope="col">가격</th>
														<th scope="col">등록일</th>
														<th scope="col">수정</th>
														<th scope="col">삭제</th>
													  </tr>
													</thead> 
													<tbody>  
													
													<!-- 반복 시작 -->
													<c:set var="i" value="0"/>
													<c:forEach var="vo" items="${pdList }" >
														<tr class="td1">
															<td>
																<input type="checkbox" 
																	name="pdItems[${i}].productNo"
																	id="chk_${i}"
																	value="${vo.productNo}" >
																<input type="hidden" 
																	name="pdItems[${i}].imageURL"
																	value="${vo.imageURL}">	
															</td>
															<td>
																<img src
															="<c:url value='/pd_images/${vo.imageURL }'/>" 
																	alt="${vo.productName }" width="50">
															</td>
															<td class="align_left">${vo.productName }</td>
															<td class="align_right">
																<fmt:formatNumber value="${vo.sellPrice }"
																pattern="#,###" />원 </td>
															<td>
																<fmt:formatDate value="${vo.regDate }"
																	pattern="yyyy-MM-dd"/></td>
															<td><a href="#">수정</a></td>
															<td><a href="#">삭제</a></td>
														</tr>
														<c:set var="i" value="${i+1}"/> 
													</c:forEach>
													<!-- 반복 끝 -->
													</tbody>
												</table>
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
											<div class="needpopup1">
												(리뷰내용을list형식으로보기,리플달기)
											</div>
										</div>
										</details>
									</div>
									</tr>
									<br>
									<tr>
									<div class="product clear">
										<details> <summary>주문 관리</summary>
										<div id="content">
											<div class="needpopup2">
												({주문내용보기(주문일시,주문번호,메뉴,주문금액,상태변경버튼(배달중,배달완료)})
											</div>
										</div>
										</details>
									</div>
									</tr>
									<br>
									
									<!-- 메뉴버튼 클릭 시 내용이 나옴 -->
									<script>
										if ($('html').hasClass('no-details')) {
											var summary = $('details summary');
											summary.siblings().wrapAll('<div class="slide"></div>');

											$('details:not(.open) summary').siblings('div').hide();

											summary.click(function() {
												$(this).siblings('div').toggle();
												$('details').toggleClass('open');
											});
										}
									</script>

								<!-- 이미지 등록시 미리보기를 보여주는 DHTML -->
								<script type="text/javascript">
								
								
    							function handleFileSelect(i) {
    									var fileselectobj = "imageUpload";
    									var previmageobj ="productImgView";
										var files = document.getElementById(fileselectobj).files[0]; //파일 객체

										var reader = new FileReader();

										//파일정보 수집        
										reader.onload = (function(theFile) {
											return function(e) {
												//이미지 뷰
												var img_view = [ '<img src="',e.target.result,'" title="',escape(theFile.name),'"width=200px height=120px"/>' ].join('');
												document.getElementById(previmageobj).innerHTML = img_view;
											};

										})(files);

										reader.readAsDataURL(files);
								}
    							
								</script>

							</table>
							
							</div>

						<br><br><br>


<%@ include file="../../inc/ceo/bottom.jsp" %>
	</div>
