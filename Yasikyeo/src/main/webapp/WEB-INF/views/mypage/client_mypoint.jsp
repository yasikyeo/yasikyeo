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
			<li>
				<a href="">마이페이지</a>
			</li>
			<li>&gt;</li>
			<li style="font-weight: bold;">포인트</li>
		</ul>
	</div>
	<div id="tabs">
		<ul>
			<li class="hovereff"><a href="#"><span class="tabMenu">바로결제 내역</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">내 정보</span></a></li>
			<li class="noteff"><a href="#"><span class="tabMenu">포인트</span></a></li>
			<li class="hovereff"><a href="#"><span class="tabMenu">리뷰관리</span></a></li>
		</ul>
		<div class="fieldsetContain">
			<fieldset>
				<legend>포인트</legend>
				<fieldset class="pointinfo">
					<legend>야시켜 포인트</legend>
					<hr>
					<div class="divpointview">
						<div class="div4 align-center">
							<p class="padding5px"><b>아이디 님의 가용포인트</b></p>
							<p class="padding5px p1">xxP</p>
							<p class="padding5px graycolor">현재적립 포인트 xxP</p>
						</div>
						<hr>
						<div class="div3">
							<p><b>가용포인트</b></p>
							<p class="graycolor">적립된 포인트 중에서 현재 바로 쓸 수 있는 포인트입니다. </p>
						</div>
						<div class="div3">
							<p><b>적립포인트</b></p>
							<p class="graycolor">가용포인트 + 적립되었으나 바로 쓸 수 없는 포인트를 포함한 포인트입니다</p>
						</div>
					</div>
				</fieldset>
				<fieldset class="poingList">
					<legend>포인트 적립/사용내역</legend>
					<table class="table2" summary="포인트 적립및 사용내역에관한 표로서 날짜 상세내역 적립or사용내역 해당포인트의 내용을 다룬다">
						<colgroup>
							<col style="width:15%;">
							<col style="width:55%;">
							<col style="width:15%;">
							<col style="width:15%;">
						</colgroup>
						<thead>
							<tr>
								<th>날짜</th>
								<th class="align-left">상세내역</th>
								<th>
									<select class="halfwidth">
										<option>전체</option>
										<option>적립</option>
										<option>사용</option>
									</select>
								</th>
								<th>포인트</th>
							</tr>
						</thead>
						<tbody>
							<!-- 반복시작 -->
							<tr>
								<td>2016-09-13</td>
								<td>향원</td>
								<td><span class="spgreenbox">적립완료</span></td>
								<td>21p</td>
							</tr>
						</tbody>
					</table>
				</fieldset>
			</fieldset>
		</div>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>