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
			<label for="faqCategori">카테고리</label>   
        	<select name="faqCategori" id="faqCategori">
            	<option value="Member" 
            		<c:if test="${alist.faqCategori=='Member'}">
            			selected
            		</c:if>>회원가입</option>
            	<option value="pay"
            		<c:if test="${alist.faqCategori=='pay' }">
            			selected
            		</c:if>>바로결제</option>
            	<option value="review" 
            		<c:if test="${alist.faqCategori=='review' }">
            			selected
            		</c:if>>리뷰관리</option>
            	<option value="play"
            		<c:if test="${alist.faqCategori=='play' }">
            			selected
            		</c:if>
            	>이용문의</option>
            	<option value="advertise"
            		<c:if test="${alist.faqCategori=='advertise' }">
            			selected
            		</c:if>
            	>광고문의</option>
            	<option value="discomform"
            		<c:if test="${alist.faqCategori=='discomform' }">
            			selected
            		</c:if>
            	>불편문의</option>
            	<option value="etc"
            		<c:if test="${alist.faqCategori=='etc' }">
            			selected
            		</c:if>
            	>기타</option>
           </select>
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