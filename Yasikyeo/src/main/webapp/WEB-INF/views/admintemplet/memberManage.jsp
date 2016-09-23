<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>

	<div class="container" id="categoryMemberManage">
		<nav>
				<dl class="leftNavi">
				<!-- category list -->
					<!-- 좌측 메뉴 -->
					<dd><a href="<c:url value='/admintemplet/member.do' />">일반회원관리</a></dd>
 					<dd><a href="<c:url value='/admintemplet/ceomember.do' />">사장님회원관리</a></dd>
 				</dl>
				
 			</nav>
 				<div>
 					<table class="box2">
 						<h2>회원</h2>
			<colgroup>
				<col style="width:30%;" />
				<col style="width:20%;" />
				<col style="width:20%;" />
				<col style="width:20%;" />
				<col style="width:10%;" />		
			</colgroup>
							<thead>
								<tr>
									<th>아이디</th>
									<th>닉네임</th>
									<th>생년월일</th>
									<th>포인트</th>
								</tr>
							</thead>
							<tbody>
							<c:if test="${empty usermember}">
								<tr align="center">
									<td colspan="5">데이터가 없습니다</td>
								</tr>
							</c:if>
								<c:if test="${!empty usermember }">
								<c:forEach var="userVO" items="${usermember}">
									<tr align="center">
										<td>${userVO.memberId}</td>
										<td>${userVO.memberNickname}</td>
										<td>${userVO.memberBirth}</td>
										<td>${userVO.memberPoint}</td>
									</tr>
								</c:forEach>
								</c:if>	
							</tbody>
						</table>
					</div>
						<br><br>
					<div>
						<table class="box2">
										<h2>ceo회원</h2>
			<colgroup>
				<col style="width:30%;" />
				<col style="width:20%;" />
				<col style="width:30%;" />
				<col style="width:20%;" />
			</colgroup>
							<thead>
								<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>이메일</th>
									<th>전화번호</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty ceomember}">
									<tr>
										<td colspan="4" align="center">데이터가 없습니다</td>
									</tr>
								</c:if>
							
								<c:if test="${!empty ceomember}">
								<c:forEach var="ceoVO" items="${ceomember}">
									<tr>
									<td>${ceoVO.ceoId}</td>
									<td>${ceoVO.ceoName}</td>
									<td>${ceoVO.ceoEmail}</td>
									<td>${ceoVO.ceoTel}</td>
									</tr>
								</c:forEach>
								</c:if>	
							</tbody>
						</table>
				</div>
					
				
		
 			
 		</div>
 				 	
			
		
