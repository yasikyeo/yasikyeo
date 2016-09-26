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
	<legend>공지사항 글쓰기</legend>
        <div class="firstDiv">
            <label for="noticeTitle">제목</label>
            <input type="text" id="noticeTitle" name="noticeTitle"  />
        </div>
       <div>
        	<label for="noticeSuffix">카테고리</label>
        	<select name="noticeSuffix" id="noticeSuffix">
            	<option value="notice">공지사항</option>
            	<option value="event">이벤트</option>
            </select>
        </div>
      	<div>
            <label for="upfile">이미지 파일</label>
            <input type="file" id="upfile" name="upfile" />
       	</div>
        <div>  
        	<label for="noticeContent">내용</label>
        </div>
        <div class="align_center">	        
 			<textarea id="noticeContent" name="noticeContent" rows="12" cols="40"></textarea>
 		</div>
        <div class="align_center" >
        	<input type="button" value="목록으로" onclick="location.href='<c:url value="/admintemplet/eventNotice.do"/>'">
        	||
            <input type = "submit" value="등록"/>
  		</div>
    </fieldset>
</form>
</div>   
					</article>
			</section>
 			
 		</div>