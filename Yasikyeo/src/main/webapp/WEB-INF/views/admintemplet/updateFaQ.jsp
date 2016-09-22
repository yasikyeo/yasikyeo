<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('faqContent');
		
		$("#faqTitle").focus();
		
		$("#frmWrite").submit(function(){
			if($("#faqTitle").val().length<1){
				alert("제목을 입력하세요");
				$("#faqTitle").focus();
				return false;
		/* 	}else if($("#faQContent").val().length<1){
				alert("내용을 입력하세요");
				$("#faQContent").focus();
				return false; */
			}
		});
	});
</script>
<div class="container" id="categoryMemberManage">
		<section class="contents">
				<article class="centerCon">
						<div class="divForm">
<form name="frmWrite" id="frmWrite" method="post" 
  enctype="multipart/form-data"
  action="<c:url value='/admintemplet/updateFaQ.do'/>" >
  <input type="hidden" name="faqNo" value="${alist.faqNo}">
	<input type="hidden" name="oldfaqUpfilename" value="${alist.faqUpfilename}">
 <fieldset>
	<legend>F&A 수정</legend>
        <div class="firstDiv">
            <label for="faqTitle">제목</label>
            <input type="text" id="faqTitle" name="faqTitle" value="${alist.faqTitle }" />
        </div>
       <div>
            <label for="upfile">이미지 파일</label>
            <input type="file" id="upfile" name="upfile"/>
            <c:if test="${!empty alist.faqUpfilename}">
            	<p>이미지 교체시 기존이미지가 삭제됨니다</p>
            </c:if>
        </div>
        <div>  
        	<label for="faqContent">내용</label>
        </div>
        <div class="align_center">	        
 			<textarea id="faqContent" name="faqContent" rows="12" cols="40">${alist.faqContent }</textarea>
 		</div>
   		<div class="align_center" >
            <input type = "submit" value="수정"/>
  		</div>
    </fieldset>
</form>
</div>   
					</article>
			</section>
 			
 		</div>