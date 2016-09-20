<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="">홈</a>
			</li>
			<li>&gt;</li>
			<li><b>서비스소개</b></li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="noteff"><a href="<c:url value='/service/client_service.do'/>"><span class="tabMenu">서비스소개</span></a></li>
			<li class="hovereff"><a href="<c:url value='/service/client_board.do'/>"><span class="tabMenu">공지사항/이벤트</span></a></li>
			<li class="hovereff"><a href="<c:url value='/service/client_faq.do'/>"><span class="tabMenu">자주묻는질문</span></a></li>
			<li class="hovereff"><a href="<c:url value='/service/client_qna.do'/>"><span class="tabMenu">문의하기</span></a></li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>서비스소개</legend>
			<div>
				
			</div>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>