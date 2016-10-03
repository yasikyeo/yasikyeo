<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ceoallmenu.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmenulist.css" type="text/css"/>
<title>야시켜, 사장님 업소관리 페이지</title>

			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">내 업소관리 - 메뉴수정</div>
						<div class="show2">
							<div id="lsh">사장님 업소에 등록된 메뉴를 수정하는 페이지입니다.</div>
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
									 <summary>메뉴 수정</summary>
										<div id="content">
											<div class="needpopup">
												<form id="write" method="post" action="<c:url value='/ceo/marketadmin/market_menuUpdate.do'/>" enctype="multipart/form-data">
												<input type="hidden" name="productNo" value="${ceoProductVo.productNo }">
													<div id="productImgView"></div>
													<div>메뉴 이미지 변경 : <input type="file" name="imageUpload" id="imageUpload" onchange="handleFileSelect(0)" class="formInput1"/></div>
													<div>메뉴 이름 : <input type="text" id="food" name="productName" class="formInput2" value="${ceoProductVo.productName}" ></div>
													<div>메뉴 옵션 : <input type="text" name="productOption" class="formInput2" value="${ceoProductVo.productOption}"
													 placeholder="작성 예) : 콜라500ml 1000/콜라1.25L 2000/사이다500ml 1500"></div>
													<div>메뉴 가격 : <input type="text" id="price" name="productPrice" class="formInput2" value="${ceoProductVo.productPrice}"
													 placeholder="작성 예 : 대 16000/중 15000/소 14000"></div><br>
													<div><label for="productExplain">메뉴 설명<br></label>
													<textarea rows="15" cols="80" name="productExplain" class="formInput" style="width: 500px; height: 170px; float: inherit;">${ceoProductVo.productExplain }</textarea></div><br>
													 <input type="submit" class="formInput" value="수정하기"><br>
												</div>
											</form>
										</div>
									</div>
									</tr>
									
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
