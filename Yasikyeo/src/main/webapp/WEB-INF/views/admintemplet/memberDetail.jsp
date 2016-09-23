<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#frm1").submit(function(event){
			if(!confirm("정지하시겠습니까?")){
				event.preventDefault();
			}			
		})
	});
</script>
<div class="container1" id="categoryMemberManage">
	
 			
 			<section class="contents">
					<article class="centerCon">
			<h2>회원상세보기</h2>
	<form id="frm1" action="<c:url value='/admintemplet/memberstate.do?memberNo=${memVo.memberNo}&memberauthcode=${memVo.authcode}'/>" method="post">
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1">아이디</span> 
			<span>${memVo.memberId}</span>
		</div>
		<div>
			<span class="sp1">닉내임</span> 
			<span>${memVo.memberNickname}</span>
		</div>
		<div>
			<span class="sp1">전화번호</span> 
			<span>${memVo.memberTel}</span>
		</div>
		<div>
			<span class="sp1">이메일</span> 
			<span>${memVo.memberEmail}</span>
		</div>
		<div>
			<span class="sp1">생년월일</span> 
			<span>${memVo.memberBirth}</span>
		</div>	
		<div>
			<span class="sp1">포인트</span> 
			<span>${memVo.memberPoint}</span>
		</div>
		<div>
			<span class="sp1">가입일자</span> 
			<span>${memVo.memberRgedate}</span>
		</div>
		<div>
			<span class="sp1">주소</span> 
			<span>${memVo.address}${memVo.addressDetail}</span>
		</div>
		<div>
			<span class="sp1">상태</span> 
			<span>${memVo.authcode}</span>
		</div>
		<c:if test="${memVo.authcode=='USER'}">
		<div class="align_right">
			<input type="submit" value="정지">
		</div>
		</c:if>
		<c:if test="${memVo.authcode=='STOP'}">
			<div class="align_right">
				<input type="submit" value="사용자">
			</div>
		</c:if>
	</div>
	</form>
					</article>
			</section>
 			
 		</div>