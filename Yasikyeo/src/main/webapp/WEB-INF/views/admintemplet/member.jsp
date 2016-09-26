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
				<col style="width:20%;" />
				<col style="width:20%;" />
				<col style="width:30%;" />
				<col style="width:30%;" />		
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
									<td colspan="4">데이터가 없습니다</td>
								</tr>
							</c:if>
								<c:if test="${!empty usermember }">
								<c:forEach var="userVO" items="${usermember}">
									<tr align="center">
										<td onclick="location.href='<c:url value='/admintemplet/memberDetail.do?memberNo=${userVO.memberNo }'/>'">${userVO.memberId}</td>
										<td onclick="location.href='<c:url value='/admintemplet/memberDetail.do?memberNo=${userVO.memberNo }'/>'">${userVO.memberNickname}</td>
										<td onclick="location.href='<c:url value='/admintemplet/memberDetail.do?memberNo=${userVO.memberNo }'/>'">${userVO.memberBirth}</td>
										<td onclick="location.href='<c:url value='/admintemplet/memberDetail.do?memberNo=${userVO.memberNo }'/>'">${userVO.memberPoint}</td>
									</tr>
								</c:forEach>
								</c:if>	
							</tbody>
						</table>
					</div>
 			
 			</div>