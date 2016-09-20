<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmember2.css" type="text/css"/>
<title>야시켜, 사장님 회원가입</title>


		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">
						이용약관 및 정책
						</div>
						<div class="show2">
							<div id="lsh">
							아래의 이용약관을 읽고 동의해주세요.
							</div>
							<div id="rsh">
							02 약관동의
							</div>
						</div>
						<div id="allcheck">
							<input type="checkbox">사장님사이트 이용약관,개인정보 수집•이용에 모두 동의합니다.
						</div>
						<div class="checkarticle1">
							<b>야시켜 사장님사이트 이용약관</b>
							<iframe src="<c:url value='/provision/provision1.do'/>" width="100%" height="300px"></iframe>
							<div id="checkb1">
								<p>위 야시켜 사장님사이트 이용약관에 동의합니다. <input type="checkbox"> 동의함 </p> 
							</div><br>
						</div>
						<div class="checkarticle2">
							<b>개인정보 수집·이용 동의</b><br><br>
							<iframe src="<c:url value='/provision/provision2.do'/>" width="100%" height="300px"></iframe>
							<div id="checkb2">
								<p>위 개인정보 수집 및 이용에 동의 합니다. <input type="checkbox"> 동의함</p> 
							</div>
						</div>
							<div id="buttonset">							
								<a href="<c:url value='/ceo/member/ceo_addmember3.do'/>"><input type="submit" value="동의 후 다음 단계로" name="next" class="next_button"></a>
								<a href="javascript:history.back();"><input type="button" value="이전 단계로" name="back" class="back_button"></a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>



 

<%@include file="../../inc/ceo/bottom.jsp" %>
