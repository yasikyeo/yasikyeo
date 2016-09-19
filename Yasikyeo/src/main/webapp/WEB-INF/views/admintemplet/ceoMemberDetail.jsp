<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<div class="container1" id="categoryMemberManage">
	
 			
 			<section class="contents">
					<article class="centerCon">
						<h2>사장님회원상세보기</h2>
			<form id="frm1" action="<c:url value='/admintemplet/ceomemberstate.do?memberNo=${ceoVo.ceoNo}&memberauthcode=${ceoVO.authCode}'/>" method="post">
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">아이디</span> 
			<span>${ceoVo.ceoId}</span>
		</div>
		<div>
			<span class="sp1">이름</span> 
			<span>${ceoVo.ceoName}</span>
		</div>
		<div>
			<span class="sp1">이메일</span> 
			<span>${ceoVo.ceoEmail}</span>
		</div>
		<div>
			<span class="sp1">전화번호</span> 
			<span>${ceoVo.ceoTel}</span>
		</div>
		<div>
			<span class="sp1">가입일자</span> 
			<span>${ceoVo.ceoEmail}</span>
		</div>
		<div>
			<span class="sp1">주소</span> 
			<span>${ceoVo.address}${addressDetail}</span>
		</div>
		<div>
			<span class="sp1">상태</span> 
			<span>${ceoVO.authCode}</span>
		</div>	
		<c:if test="${ceoVo.authCode=='CEO'}">
		<div class="align_right">
			<input type="submit" value="정지">
		</div>
		</c:if>
		<c:if test="${ceoVo.authCode=='STOP'}">
			<div class="align_right">
				<input type="submit" value="사용자">
			</div>
		</c:if>
	</div>
	</form>
					</article>
			</section>
 			
 		</div>