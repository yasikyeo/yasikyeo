<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
	$(function() {
		$(".bordList").click(function() {
			$(location).attr("href","<c:url value='/service/client_board_detail.do'/>")
		});
	});
</script>
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
			<table class="table4">
				<colgroup>
					<col style="width: 80%;">
					<col style="width: 20%;">
				</colgroup>
				<thead>
					<tr>
						<th>제목</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr class="bordList">
						<td>[공지] 개인정보 취급방침 일부 변경에 관한 안내</td>
						<td>2016-09-13</td>
					</tr>
				</tbody>
			</table>
			<br>
			<div class="div1 vertical-container">
				<ul class="pagination">
					<li><a href="#">&laquo;</a></li>
					<li><a href="#">1</a></li>
					<li><a class="active" href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>