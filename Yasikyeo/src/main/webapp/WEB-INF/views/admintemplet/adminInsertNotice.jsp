<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
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
  action="<c:url value='/admintemplet/adminInsertNotice.do'/>" >
 <fieldset>
	<legend>공지사항/이벤트 글쓰기</legend>
        <div class="firstDiv">
            <label for="noticeTitle">제목</label>
            <input type="text" id="noticeTitle" name="noticeTitle"  />
        </div>
        <div>
        	<label for="noticeSuffix">머릿말</label>
        	<input type="text" id="noticeSuffix" name="noticeSuffix"/>
        </div>
      	<div>
            <label for="upfile">첨부파일</label>
            <input type="file" id="upfile" name="upfile" />
            (최대 100M)
        </div>
        <div>  
        	<label for="noticeContent">내용</label>
        </div>
        <div class="align_center">	        
 			<textarea id="noticeContent" name="noticeContent" rows="12" cols="40"></textarea>
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