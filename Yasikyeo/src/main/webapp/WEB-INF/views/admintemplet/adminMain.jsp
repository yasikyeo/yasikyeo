<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/adminMainTop.jsp" %>

<div class="container" id="categoryMemberManage">
		<nav>
				<dl class="leftNavi">
				
				</dl>
				
 			</nav>
 			
 			<section class="contents">
					<article class="centerCon">
					<div class="loginForm">
						<form name="frm" id="frm" method="post" action="<c:url value='/admintemplet/adminMain.do'/>">
						<fieldset>
							<legend>관리자 로그인</legend>
							<div class="align_left">
								<label for="adminId" class="label">아이디</label>
								<input type="text" name="adminId" id="adminId">
							</div>
							<div class="align_left">
								<label for="adminPwd" class="label">페스워드</label>
								<input type="password" name="adminPwd" id="adminPwd">
							</div>
							<div class="align_center">
								<label for="chkSave">아이디 저장</label>
								<input type="checkbox" value="checked" name="chkSave" id=chkSave">
							</div>
							<div class="align_center">
									<input type="submit" value="로그인">
							</div>
						</fieldset>
						</form>
						</div>
					</article>
			</section>
 			
 		</div>