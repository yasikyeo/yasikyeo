<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ceoallmenu.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmenulist.css" type="text/css"/>
<script type="text/javascript">

	$(function() {
		$("#delete").click(function(){
			if(confirm("해당 상품정보를 삭제 하시겠습니까?")){
				return true;
			}else{
				return false;
			}
		});
		
		$("input[name='chkAll']").click(function(){
			$("tbody input[type=checkbox]")
				.prop("checked", this.checked);
		});
		
		//선택한 상품 삭제
		$("#checkDel").click(function(){
			var count
			=$("tbody input[type=checkbox]:checked").length;
			
			if(count==0){
				alert("삭제하려는 상품을 먼저 체크하세요");
				return false;
			}
			
			frmList.action="<c:url value='/ceo/marketadmin/market_menuMultiDelete.do'/>";
			frmList.submit();
		});
		
		//선택한 상품 이벤트로 등록
		$("#checkCategory").click(function(){
			var count=$("tbody input[type=checkbox]:checked").length;
			
			if(count==0){
				alert("카테고리에 등록하려는 상품을 먼저 체크하세요");
				return false;
			}else if($("#categorySel").val().length<1){
				alert("카테고리를 선택하세요");
				return false;
			}
			
			frmList.action="<c:url value='/ceo/marketadmin/market_categoryAdd.do'/>";
			frmList.submit();
		});
	});


	function pageFunc(curPage){
		document.frmPage.currentPage.value=curPage;
		frmPage.submit();
	}

</script>
<title>야시켜, 사장님 업소관리 페이지</title>

			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">내 업소관리 - 메뉴목록</div>
						<div class="show2">
							<div id="lsh">사장님 업소에 대한 내용을 확인 및 수정할수 있는 페이지입니다.</div>
						</div>
							<div class="marketadmins">
								
								<p>가게 별점 평균 <span class="star-rating"> <span style="width:50%"></span></span></p>
								<p>주문건 수 - 전체 : 0건, 일별 : 0건</p>
								<p>등록된 즐겨찾기 수 - 0건</p>
								<p>등록된 리뷰 수 - 0건</p>
								<br>
								
								<form name="frmPage" method="post" action="<c:url value='/ceo/marketadmin/market_menuList.do'/>">
									<input type="hidden" name="categoriNo" value="">
									<input type="hidden" name="currentPage">	
								</form>
								
								<form name="frmList" method="post" action="<c:url value='/ceo/marketadmin/market_menuList.do'/>">
								<div class="btCg">
								<select name="categoriNo" id="categoriNo" style="width: 170px; height: 30px;">
								<option value="0" <c:if test="${vo.categoriName==null}">selected</c:if>>전체상품 </option>
								<c:set var="i" value="0"/>
									<c:forEach var="vo" items="${cgList }" >
										<option value="${vo.categoriNo }" <c:if test="${vo.categoriNo==param.categoriNo}">selected</c:if>
										>${vo.categoriName }</option>
										<c:set var="i" value="${i+1}"/> 
									</c:forEach>
								</select>
									<input type="submit" value="조회하기">	
								</div><br>
										<table border="1">
											<colgroup>
												<col width="5%">
												<col width="13%">
												<col width="30%">
												<col width="15%">
												<col width="15%">
												<col width="9%">
												<col width="9%">
											</colgroup>
											<thead>
												<tr class="list">
													<th scope="col"><input type="checkbox" name="chkAll"></th>
													<th scope="col">메뉴 이미지</th>
													<th scope="col">메뉴 이름</th>
													<th scope="col">메뉴 가격</th>
													<th scope="col">등록일</th>
													<th scope="col">수정</th>
													<th scope="col">삭제</th>
												</tr>
											</thead>
											<tbody>
										<!-- 반복 시작 -->
												<c:set var="i" value="0"/>
												<c:forEach var="vo" items="${pdList }" >
													<tr>
														<td class="td-center2">
															<input type="checkbox" name="pdItems[${i}].productNo" id="chk_${i}"
																value="${vo.productNo}" >
															<input type="hidden" 
																name="pdItems[${i}].productImage"
																value="${vo.productImage}">	
														</td>
														<td class="td-center">
															<img src
														="${pageContext.request.contextPath}/product_Image/${vo.productImage }" 
																alt="${vo.productName }" width="50%">
														</td>
														<td class="td-center2">${vo.productName }</td>
														<td class="td-center2">
															<fmt:formatNumber value="${vo.productPrice }"
															pattern="#,###" />원 </td>
														<td class="td-center2">
															<fmt:formatDate value="${vo.productRegdate }"
																pattern="yyyy-MM-dd"/></td>
														<td class="td-center2"><a href="<c:url value='market_menuUpdate.do?productNo=${vo.productNo }'/>">수정</a></td>
														<td class="td-center2"><a id="delete" href="<c:url value='market_menuDelete.do?productNo=${vo.productNo }'/>">삭제</a></td>
													</tr>
													<c:set var="i" value="${i+1}"/> 
												</c:forEach>
												<!-- 반복 끝 -->
											</tbody>
										</table>
									</div>
									<!-- 페이징 처리를 위한 div -->
<div align="center">
	<!-- 이전 블럭으로 이동 -->
	<c:if test="${pagingInfo.firstPage>1}">				
		<a href="#" 
	onclick="pageFunc(${pagingInfo.firstPage-1})">
			<img src="<c:url value='/images/first.JPG'/>" 
					alt="이전블럭으로">
		</a>				
	</c:if>
	
	<!-- 페이지 번호 추가 -->						
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" 
		begin="${pagingInfo.firstPage }" 
		end="${pagingInfo.lastPage }">
		<c:if test="${i==pagingInfo.currentPage }">					
			<span style="color:blue; font-weight: bold">
				${i}</span>
		</c:if>		
		<c:if test="${i!=pagingInfo.currentPage }">
			<a href="#" onclick="pageFunc(${i})">
				[${i}]</a>
		</c:if>		
	</c:forEach>				
	<!--  페이지 번호 끝 -->
	
	<!-- 다음 블럭으로 이동 -->
	<c:if test
	="${pagingInfo.lastPage<pagingInfo.totalPage}">				
		<a href="#" 
	onclick="pageFunc(${pagingInfo.lastPage+1})">
			<img src="<c:url value='/images/last.JPG'/>" 
					alt="다음블럭으로">
		</a>
	</c:if>
</div>

<div class="btCg">
	<input type="button" id="checkDel" value="선택한 상품 삭제"><br><br>
	선택한 상품을
	<select name="categorySel" id="categorySel" style="width: 170px; height: 30px;">
		<c:set var="i" value="0"/>
		<c:forEach var="vo" items="${cgList }" >
			<option value="${vo.categoriNo }">${vo.categoriName }</option>
			<c:set var="i" value="${i+1}"/> 
		</c:forEach>
	</select>
	<input type="button" id="checkCategory" value="등록">
</div>
</form>

							

						<br><br><br>


<%@ include file="../../inc/ceo/bottom.jsp" %>
	</div>
