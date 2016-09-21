<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<div class="container1" id="categoryMemberManage">

 			
 			<section class="contents">
					<article class="centerCon">
						
<form id="frm1">
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">번호</span> 
			<span>${alist.noticeNo }</span>
		</div>
		<div>
			<span class="sp1">머리말</span> 
			<span>${alist.noticeSuffix}</span>
		</div>
		<div>
			<span class="sp1">제목</span> 
			<span>${alist.noticeTitle}</span>
		</div>
		<div>
			<span class="sp1">내용</span> 
			<a>${alist.noticeContent}
			<img src="<c:url value='/board_Image/${alist.noticeUpfileName}'/>"alt="이미지" ></a>
		</div>
		<div>
			<input type="button" id="bt1" value="수정" onclick="location.href='<c:url value="/admintemplet/noticeUpdate.do?noticeNo=${alist.noticeNo}"/>'">
		</div>
		<div>
			<input type="button" id="bt2" value="삭제" onclick="location.href='<c:url value="/admintemplet/noticedelete.do?noticeNo=${alist.noticeNo}"/>'"> >
		</div>
	</div>
	</form>
					</article>
			</section>
 			
 		</div>