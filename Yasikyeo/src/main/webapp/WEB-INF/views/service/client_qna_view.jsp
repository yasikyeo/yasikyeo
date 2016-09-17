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
			<li><b>문의하기</b></li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="#"><span class="tabMenu">서비스소개</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">공지사항/이벤트</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">자주묻는질문</span></a></li>
			<li class="noteff"><a href="#"><span class="tabMenu">문의하기</span></a></li>
		</ul>
	</div>
	<div class="fieldsetContain">
		<fieldset>
			<legend>문의하기</legend>
			<div class="div6">
				<ul class="div3 float-right">
					<li><a href="#">1:1문의하기</a></li>
					<li>|</li>
					<li class="color-orange"><b>나의문의내역보기</b></li>
				</ul>
				<br class="clear-both">
			</div>
			<div class="div9">
				<div class="div1 border-bottom1 align-center">
					<label class="flex6 align-left sp1"><b>제목이 들어갈 영역</b></label>
					<label class="flex1">2016-09-13</label>
					<div class="flex1">
						<label class="sporangebox">처리중</label>
					</div>
				</div>
				<div class="div10">
					<div class="div1">
						<ul class="div3 float-right">
							<li>이름:</li>
							<li>|</li>
							<li>이메일:</li>
							<li>|</li>
							<li>상담분류:</li>
						</ul>
					</div>
					<div class="div11">
						<p>내용부분이 들어갈부분입니다.</p>
					</div>
					<div class="div1">
						첨부파일 : 
						<a href="#" class="color-orange">파일명</a>
					</div>
				</div>
			</div>
			<!-- 답변이 있을경우 -->
			<div class="div9">
				<div class="div1 border-bottom1 align-center">
					<label class="flex6 align-left sp1"><b>제목이 들어갈 영역</b></label>
					<label class="flex1">2016-09-13</label>
				</div> 
			</div>
			<div class="div10">
				<div class="div11">
					<p>내용부분이 들어갈부분입니다.</p>
				</div>
			</div>
			<!-- 답변이 있을경우 끝 -->
			<div class="div1 vertical-container">
				<input class="btblack bt3 halfwidth" type="button" value="목록으로">
			</div>	
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>