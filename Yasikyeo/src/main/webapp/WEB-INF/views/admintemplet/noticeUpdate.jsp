<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('noticeContent');
		
		$("#noticeTitle").focus();
		
		$("#frmWrite").submit(function(){
			if($("#noticeTitle").val().length<1){
				alert("제목을 입력하세요");
				$("#noticeTitle").focus();
				return false;
			}else if($("#noticeSuffix").val().length<1){
				alert("머릿말을 입력하세요");
				$("#noticeSuffix").focus();
				return false;
			}else if($("#content").val().length<1){
				alert("내용을 입력하세요");
				$("#noticeContent").focus();
				return false;
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
  action="<c:url value='/admintemplet/noticeUpdate.do'/>" >
  <input type="hidden" name="noticeNo" value="${alist.noticeNo}">
	<input type="hidden" name="oldNoticeUpfileName" value="${alist.noticeUpfileName}">
<fieldset>
	<legend>공지사항 수정</legend>
        <div class="firstDiv">
            <label for="noticeTitle">제목</label>
            <input type="text" id="noticeTitle" name="noticeTitle" value="${alist.noticeTitle}" />
        </div>
        <div>
        	<label for="noticeSuffix">머릿말</label>
        	<input type="text" id="noticeSuffix" name="noticeSuffix" value="${alist.noticeSuffix}"/>
        </div>
      	<div>
            <label for="upfile">이미지 파일</label>
            <input type="file" id="upfile" name="upfile"/>
            <c:if test="${!empty alist.noticeUpfileName}">
            	<p>이미지 교체시 기존이미지가 삭제됨니다</p>
            </c:if>
        </div>
        <div>  
        	<label for="noticeContent">내용</label>
        </div>
        <div class="align_center">	        
 			<textarea id="noticeContent" name="noticeContent" rows="12" cols="40">${alist.noticeContent}</textarea>
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