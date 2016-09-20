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
			<li><b>공지사항/이벤트</b></li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="<c:url value='/service/client_service.do'/>"><span class="tabMenu">서비스소개</span></a></li>
			<li class="noteff"><a href="<c:url value='/service/client_board.do'/>"><span class="tabMenu">공지사항/이벤트</span></a></li>
			<li class="hovereff"><a href="<c:url value='/service/client_faq.do'/>"><span class="tabMenu">자주묻는질문</span></a></li>
			<li class="hovereff"><a href="<c:url value='/service/client_qna.do'/>"><span class="tabMenu">문의하기</span></a></li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>공지사항/이벤트</legend>
			<table class="table5">
				<colgroup>
					<col style="width: 80%;">
					<col style="width: 20%;">
				</colgroup>
				<thead>
					<tr>
						<th>제목<span class="sp4">[공지] 개인정보 취급방침 일부 변경에 관한 안내</span></th>
						<th>날짜<span class="sp4">2016-09-13</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">
						안녕하세요.<br>
						㈜우아한형제들의 배달의민족 개인정보취급방침을 일부 변경하게 되어 이를 알려드리고자 합니다.<br>
						<br>
						■ 개인정보취급방침 일부 변경(시행일 : 2016년 9월 23일)<br>
						이번 개인정보취급방침 개정의 주요한 부분은 아래와 같습니다.<br>
						<br>
						정보통신망 이용촉진 및 정보보호에 관한 법률 개정이 2016년 9월 23일에 시행됨에 따라, 개인정보 관련 법령 용어와 개인정보처리방침의 용어를 통일하기 위해 아래와 같이 변경합니다.<br>
						<br>
						① “취급” -> “처리”<br> 
						② “누출” -> “유출”<br>
						③ “개인정보관리책임자” -> “개인정보보호책임자”<br>
						④ “개인정보취급방침” -> “개인정보처리방침” <br>
						<br>
						<br>
						- 공고일자 : 2016년 09월 13일<br>
						- 시행일자 : 2016년 09월 23일<br>
						<br>
						<br>
						* 자세한 사항은 ‘개인정보취급방침 보기’ 변경 전·후 내용을 통해 확인할 수 있으며, 상기 개인정보취급방침에 대한 시행일 확정은 재공지 할 예정입니다.<br>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="div4">
				<a href="<c:url value='/service/client_board.do'/>"><span class="sp5 float-left">목록</span></a>
				<a href="#"><span class="sp5 float-right">다음&rang;</span></a>
			</div>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>