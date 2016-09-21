<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace('faqContent');
		
		$("#noticeTitle").focus();
		
		$("#frmWrite").submit(function(){
			if($("#faQTitle").val().length<1){
				alert("제목을 입력하세요");
				$("#faQTitle").focus();
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
  action="<c:url value='/admintemplet/faQInsert.do'/>" >
 <fieldset>
	<legend>F&A 글쓰기</legend>
        <div class="firstDiv">
            <label for="faqTitle">제목</label>
            <input type="text" id="faqTitle" name="faqTitle"  />
        </div>
       	<div>
            <label for="upfile">이미지 파일</label>
            <input type="file" id="upfile" name="upfile" />
            
        </div>
        <div>  
        	<label for="faqContent">내용</label>
        </div>
        <div class="align_center">	        
 			<textarea id="faqContent" name="faqContent" rows="12" cols="40"></textarea>
 		</div>
        <div class="align_center" >
            <input type = "submit" value="등록"/>
  		</div>
    </fieldset>
</form>
</div>   
					</article>
			</section>
 			
 		</div>