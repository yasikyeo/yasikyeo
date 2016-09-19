<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#frmwrite").submit(function(){
			if(("#title").val().length<1){
				alert("제목을 입력하세요");
				$("#title").focus();
				return false;
			}else if(("#name").val().length<1){
				alert("제목을 입력하세요");
				$("#name").focus();
				return false;
			}else if(("#content").val().length<1){
				alert("내용을 입력하세요");
				$("#content").focus();
				return false;
			}
		})
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
            <label for="title">제목</label>
            <input type="text" id="title" name="title"  />
        </div>
        <div>
            <label for="name">작성자</label>
            <input type="text" id="name" name="name" />
        </div>
     	<div>
            <label for="upfile">첨부파일</label>
            <input type="file" id="upfile" name="upfile" />
            (최대 100M)
        </div>
        <div>  
        	<label for="content">내용</label>
        </div>
        <div class="align_center">	        
 			<textarea id="content" name="content" rows="12" cols="40"></textarea>
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