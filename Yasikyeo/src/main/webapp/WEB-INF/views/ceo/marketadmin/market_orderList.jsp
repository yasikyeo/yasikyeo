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
			
			frmList.action="<c:url value='/ceo/marketadmin/market_menuList.do'/>";
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
						<div id="show1">내 업소관리 - 주문내역</div>
						<div class="show2">
							<div id="lsh">사장님 업소에 주문내역을 확인하는 페이지입니다.</div>
						</div>
							<div class="marketadmins">
								
								<p>가게 별점 평균 <span class="star-rating"> <span style="width:50%"></span></span></p>
								<p>주문건 수 - 전체 : 0건, 일별 : 0건</p>
								<p>등록된 즐겨찾기 수 - 0건</p>
								<p>등록된 리뷰 수 - 0건</p>
								<br>
									<table border="1">
											<colgroup>
												<col width="5%">
												<col width="5%">
												<col width="10%">
												<col width="10%">
												<col width="20%">
												<col width="20%">
												<col width="9%">
												<col width="9%">
											</colgroup>
											<thead>
												<tr class="list">
													<th scope="col"><input type="checkbox" name="chkAll"></th>
													<th scope="col">주문번호</th>
													<th scope="col">상품명</th>
													<th scope="col">상품옵션</th>
													<th scope="col">고객주소</th>
													<th scope="col">주문메세지</th>
													<th scope="col">주문가격</th>
													<th scope="col">주문상태</th>
												</tr>
											</thead>
											<tbody>
										<!-- 반복 시작 -->
												<c:set var="i" value="0"/>
												<c:forEach var="vo" items="${odList }" >
													<tr>
														<td class="td-center2">
															<input type="checkbox" name="odItems[${i}].orderdetNo" id="chk_${i}"
																value="${vo.orderdetNo}" >
														</td>
														<td class="td-center2">${vo.orderdetNo }</td>
														<td class="td-center2">${vo.orderdetProductname }</td>
														<td class="td-center2">${vo.orderdetOption}</td>
														<td class="td-center2">${vo.orderlistAddress }</td>
														<td class="td-center2">${vo.orderlistMessage }</td>
														<td class="td-center2">
															<fmt:formatNumber value="${vo.orderdetTotalprice }"
															pattern="#,###" />원 </td>
														<td class="td-center2">${vo.orderlistState}</td>
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


</form>

							

						<br><br><br>


<%@ include file="../../inc/ceo/bottom.jsp" %>
	</div>
