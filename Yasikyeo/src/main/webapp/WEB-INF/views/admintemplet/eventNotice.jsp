<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript">	
	$(document).ready(function(){
		$(".divList .box2 tbody tr")
			.hover(function(){
				$(this).css("background","skyblue")
					.css("cursor","pointer");
			}, function(){
				$(this).css("background","");
			});
		
		//선택한 테이블 삭제
		$("#btDel").click(function(){
			var count
			=$("tbody input[type=checkbox]:checked").length;
			
			if(count==0){
				alert("삭제하려는 상품을 먼저 체크하세요");
				return false;
			}
			
			frmList.action
="<c:url value='/admintemplet/multnoticedelete.do'/>";
			frmList.submit();
		});
		
	
	});

	function pageProc(curPage){
		document.frmPage.currentPage.value=curPage;
		document.frmPage.submit();
	}
	

</script>
<style type="text/css">
	body{
		padding:5px;
		margin:5px;
	 }	
</style>
<div class="container" id="categoryMemberManage">
		<section class="contents">
					<article class="centerCon">
						<form name="frmPage" method="post" 
	action="<c:url value='/admintemplet/eventNotice.do'/>">
	<input type="hidden" name="currentPage">
	<input type="hidden" name="searchCondition" 
		value="${param.searchCondition }">
	<input type="hidden" name="searchKeyword" 
		value="${searchVO.searchKeyword }">	
</form>

<h2>공지사항</h2>
<div class="divSearch">
   	<form name="frmSearch" method="post" 
   	action="<c:url value='/admintemplet/eventNotice.do' />" >
        <select name="searchCondition">
            <option value="notice_Title"
           	   <c:if test="${param.searchCondition=='notice_Title'}">
            		selected
               </c:if>
            >제목</option>
            <option value="notice_Suffix" 
            	<c:if test="${param.searchCondition=='notice_Suffix'}">
            		selected
               </c:if>
            >머리말</option>
            <option value="notice_Content" 
            	<c:if test="${param.searchCondition=='notice_Content'}">
            		selected
               </c:if>
            >내용</option>
        </select>   
        <input type="text" name="searchKeyword" 
        	title="검색어 입력" value="${param.searchKeyword}" >   
		<input type="submit" value="검색">
    </form>
</div> 
						
<form name ="frmList" method="post">

<div class="divList">
<table class="box2"
	 	summary="자료실에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
	<caption>공지사항</caption>
			<div class="align_right">
						<input type="button" id="bt1" value="글쓰기" onclick="location.href='<c:url value="/admintemplet/adminInsertNotice.do"/>'">
						||
						<input type="button" id="btDel" value="선택 삭제">
					</div>


	<colgroup>
		<col style="width:10%;" />
		<col style="width:20%;" />
		<col style="width:20%;" />
		<col style="width:30%;" />
		<col style="width:10%;"	/>
	</colgroup>
	<thead>
	  <tr>
	    <th scope="col">번호</th>
	    <th scope="col">머리말</th>
	    <th scope="col">제목</th>
	    <th scope="col">내용</th>
	    <th scope="col">삭제여부</th>
	 </tr>
	</thead> 
	<tbody>  
	<c:if test="${empty alist}">
		<tr>
			<td colspan="5" class="align_center">
			해당 데이터가 없습니다
			</td>
		</tr>
	</c:if>
	<c:if test="${!empty alist}">
		<!--게시판 내용 반복문 시작  -->		
		<c:set var="i" value="0" />
		<c:forEach var="vo" items="${alist }">
			<tr style="text-align: center">
				<td>${vo.noticeNo}</td>
				<td><a href="<c:url value='/admintemplet/eventNoticeDetail.do?noticeNo=${vo.noticeNo }'/>">
				${vo.noticeSuffix}</a></td>
				<td style="text-align: left;">
				<!-- 파일이 첨부된 경우 파일 이미지 보여주기 -->
				
					<!-- 제목이 긴 경우 일부만 보여주기 -->
						<c:if test="${fn:length(vo.noticeTitle)>30}">
							${fn:substring(vo.noticeTitle, 0,30)}...
						</c:if>
						<c:if test="${fn:length(vo.noticeTitle)<=30}">
							${vo.noticeTitle}
						</c:if>
					
					<!-- 24시간 이내의 글인 경우 new 이미지 보여주기 -->
				</td>
				<td>
					<c:if test="${fn:length(vo.noticeContent)>30}">
							${fn:substring(vo.noticeContent,0,30)}...
						</c:if>
						<c:if test="${fn:length(vo.noticeContent)<=30}">
							${vo.noticeContent }
						</c:if>
					</td>
					<td>
						<input type="checkbox" 
						name="noticeItems[${i}].noticeNo"
						id="chk_${i}"
						value="${vo.noticeNo}">
						<input type="hidden" 
							name="noticeItems[${i}].noticeUpfileName"
							value="${vo.noticeUpfileName}">
					</td>				
			</tr>		
			<c:set var="i" value="${i+1}"/>		
		</c:forEach>
		<!--반복처리 끝  -->
	</c:if>
	</tbody>
</table>	   
</div>
</form>
<div class="divPage">
	<!-- 이전 블럭으로 이동 -->
	<c:if test="${pagingInfo.firstPage>1 }">	
		<a href="#" onclick="pageProc(${pagingInfo.firstPage-1})">
			<img src="<c:url value='/images/first.JPG'/>" 
					alt="이전블럭으로">
		</a>	
	</c:if>
	
	<!-- 페이지 번호 추가 -->						
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage }" 
		end="${pagingInfo.lastPage }">	 
		<c:if test="${i==pagingInfo.currentPage }">
			<span style="color:blue;font-weight: bold">
				${i }</span>
		</c:if>		
		<c:if test="${i!=pagingInfo.currentPage }">
				<a href="#" onclick="pageProc(${i})">
				[${i}]</a>
		</c:if>
	</c:forEach>	
	<!--  페이지 번호 끝 -->
	
	<!-- 다음 블럭으로 이동 -->
	<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">	
		<a href="#" 
		onclick="pageProc(${pagingInfo.lastPage+1})">
			<img src="<c:url value='/images/last.JPG'/>" 
					alt="다음블럭으로">
		</a>
	</c:if>
</div>

					</article>
				</section>
			</div>
