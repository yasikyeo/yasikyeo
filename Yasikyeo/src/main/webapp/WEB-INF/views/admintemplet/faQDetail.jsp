<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<div class="container1" id="categoryMemberManage">
<script type="text/javascript">
	$(document).ready(function(){
		$("#bt2").click(function(event){
			if(!confirm("삭제하시겠습니까?")){
				event.preventDefault();
			}else{
				submit();
			}
		});
	});
</script>
 			
 			<section class="contents">
					<article class="centerCon">
						
<form id="frm1" action="<c:url value='/admintemplet/faqdelete.do'/>">
<input type="hidden" name="faqNo" value="${alist.faqNo }">
<input type="hidden" name="faqUpfilename" value="${alist.faqUpfilename }">
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">번호</span> 
			<span>${alist.faqNo }</span>
		</div>
		<div>
			<span class="sp1">제목</span> 
			<span>${alist.faqTitle}</span>
		</div>
		<div>
			<span class="sp1">내용</span> 
			<a>${alist.faqContent}
			<c:if test="${!empty alist.faqUpfilename}">
				<img src="<c:url value='/board_Image/${alist.faqUpfilename}'/>"alt="이미지" ></a>
			</c:if>
		</div>
		<div class="align_center">
			<input type="button" id="bt1" value="수정" onclick="location.href='<c:url value="/admintemplet/updateFaQ.do?faqNo=${alist.faqNo}"/>'">
			||
			<input type="submit" id="bt2" value="삭제" >			
<%-- onclick="location.href='<c:url value="/admintemplet/noticedelete.do?noticeNo=${alist.noticeNo}&noticeUpfileName=${alist.noticeUpfileName}"/>'" --%>
		</div>
		
			
		
	</div>
	</form>
					</article>
			</section>
 			
 		</div>