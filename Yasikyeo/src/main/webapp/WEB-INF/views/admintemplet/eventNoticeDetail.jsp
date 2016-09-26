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
						
<form id="frm1" action="<c:url value='/admintemplet/noticedelete.do'/>">
<input type="hidden" name="noticeNo" value="${alist.noticeNo }">
<input type="hidden" name="noticeUpfileName" value="${alist.noticeUpfileName }">
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">번호</span> 
			<span>${alist.noticeNo }</span>
		</div>
		<div>
			<label for="noticeSuffix">머릿말</label>   
        	<span>${alist.noticeSuffix }</span>
            	
         </div>
		<div>
			<span class="sp1">제목</span> 
			<span>${alist.noticeTitle}</span>
		</div>
		<div>
			<span>${alist.noticeContent}
			<c:if test="${!empty alist.noticeUpfileName}">
				<img src="<c:url value='/board_Image/${alist.noticeUpfileName}'/>"alt="이미지" >
			</c:if>
			</span>
		</div>
		<div class="align_center">
			<input type="button" value="목록으로" onclick="location.href='<c:url value="/admintemplet/eventNotice.do"/>'">
			||
			<input type="button" id="bt1" value="수정" onclick="location.href='<c:url value="/admintemplet/noticeUpdate.do?noticeNo=${alist.noticeNo}"/>'">
			||
			<input type="submit" id="bt2" value="삭제" >			
<%-- onclick="location.href='<c:url value="/admintemplet/noticedelete.do?noticeNo=${alist.noticeNo}&noticeUpfileName=${alist.noticeUpfileName}"/>'" --%>
		</div>
		
			
		
	</div>
	</form>
					</article>
			</section>
 			
 		</div>