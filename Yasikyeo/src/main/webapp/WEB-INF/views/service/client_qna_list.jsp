<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript">
	$(function() {
		$(".qnaList").click(function() {
			$(location).attr("href","<c:url value='/service/client_qna_view.do'/>")
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
			<li><b>문의하기</b></li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="<c:url value='/service/client_service.do'/>"><span class="tabMenu">서비스소개</span></a></li>
			<li class="hovereff"><a href="<c:url value='/service/client_board.do'/>"><span class="tabMenu">공지사항/이벤트</span></a></li>
			<li class="hovereff"><a href="<c:url value='/service/client_faq.do'/>"><span class="tabMenu">자주묻는질문</span></a></li>
			<li class="noteff"><a href="<c:url value='/service/client_qna.do'/>"><span class="tabMenu">문의하기</span></a></li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>문의하기</legend>
			<div class="div6">
				<ul class="div3 float-right">
					<li><a href="<c:url value='/service/client_qna.do'/>">1:1문의하기</a></li>
					<li>|</li>
					<li class="color-orange"><b>나의문의내역보기</b></li>
				</ul>
				<br class="clear-both">
			</div>
			<!-- 로그인을안했거나 비회원으로 조회할때 -->
			<form class="vertical-container" action="">
				<div class="div8 vertical-container">
					<div class="div7">
						<img alt="문의하기 이미지 " src="">
					</div>
					<div class="div7">
						<p class="p3">이메일 주소를 입력하세요</p>
						<p class="jua font1-1em">비회원은 이메일로 문의하기 내역조회가 가능합니다.</p>
						<div class="div3 vertical-container">
							<input class="inputText4 flex1" type="text" placeholder="아이디or이메일을 입력해주세요">
						</div>
						<div class="div3 vertical-container">
							<input class="btblack bt6 flex1" type="submit" value="확인">
						</div>
					</div>
				</div>
			</form>
			<!-- 로그인을안했거나 비회원으로 조회할때 끝 -->
			<!--문의 내역이 없을때 -->
			<div class="div9">
				<div class="div8 vertical-container">
						<div class="div7">
							<img alt="문의하기 이미지 " src="">
						</div>
				</div>
			</div>
			<hr>
			<br>
			<!-- 문의 내역이 없을때 끝-->
			<!-- 문의내역이 있을때 -->
			<div class="div9">
				<table class="table6">
					<colgroup>
						<col style="width:12%;">
						<col style="width:64%;">
						<col style="width:12%;">
						<col style="width:12%;">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th class="align-left">제목</th>
							<th>날짜</th>
							<th>처리상황</th>
						</tr>
					</thead>
					<tbody>
						<!-- 반복시작 -->
						<tr class="align-center qnaList">
							<td>1</td>
							<td class="align-left">제목에 들어갈내용</td>
							<td>2016-09-13</td>
							<td><span class="sporangebox">처리중</span></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 문의내역이 있을때 끝-->
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>