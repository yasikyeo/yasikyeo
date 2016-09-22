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
  action="<c:url value='/admintemplet/faQInsert.do'/>" >
 <fieldset>
	<legend>F&A 글쓰기</legend>
        <div class="firstDiv">
            <label for="faqTitle">제목</label>
            <input type="text" id="faqTitle" name="faqTitle"  />
        </div>
        <div>
        	<label for="faqCategori">카테고리</label>
        	<select name="faqCategori" id="faqCategori">
            	<option value="Member">회원가입</option>
            	<option value="pay">바로결제</option>
            	<option value="review">리뷰관리</option>
            	<option value="play">이용문의</option>
            	<option value="advertise">광고문의</option>
            	<option value="discomform">불편문의</option>
            	<option value="etc">기타</option>
           </select>
        </div>
       	<div>
            <label for="upfile">이미지 파일</label>
            <input type="file" id="upfile" name="upfile" />
        </div>
        <div>
        	
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