<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/marketmember.css" type="text/css"/>
<title>야시켜, 사장님 회원가입</title>

		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">
						회원가입
						</div>
						<div class="show2">
							<div id="lsh">
							사장님사이트에 오신 것을 환영합니다
							</div>
							<div id="rsh">
							01 회원특혜 안내
							</div>
						</div>
						
						<div id="show3">
							<p>야시켜에서 드리는 <p1>사장님만의 전용 서비스!</p1></p>
							<p2>야시켜 사장님 전용 사이트의 회원이 되면 누릴 수 있는 다양한 혜택들을 살펴보세요</p2>
						</div>
						
						<div class="show4">
							<div id="it1">
								<img src="${pageContext.request.contextPath}/images/intro1_1.png" width="120" height="110">
								<p>고객 리뷰를 빠르게 관리해요</p>
								<p1>1등 업소를 만드는 가장 빠르고 확실한 방법<br>
								고객들의 리뷰를 손쉽게 관리하세요!</p1>
							</div>
							<div id="it2">
								<img src="${pageContext.request.contextPath}/images/intro1_2.png" width="120" height="110">
								<p>업소 운영 정보를 확인해요</p>
								<p1>한 주간의 정산 금액을 한눈에 확인하고,<br>
								휴무일도 직접 설정하세요!
								</p1>
							</div>
							<div id="it3">
								<img src="${pageContext.request.contextPath}/images/intro1_3.png" width="120" height="110">
								<p>다양한 이벤트에 참여해요</p>
								<p1>사장님들을 위해 준비한 이벤트와<br>
								다양한 프로모션에 참여하세요!
								</p1>
							</div>
						</div>
						<div id="regbutton">
							<a href="<c:url value='/ceo/member/ceo_addmember2.do'/>"><input type="submit" value="회원가입" name="marketmemberreg" class="reg_button" /></a>
						</div>
						<div id="warning">
							<ul>
								<li><b>유의사항</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp야시켜 사장님사이트는 현재 외식업소를 운영중이신 사장님만 가입하실 수 있습니다.(사업자 등록증과 업소 정보는 필수 입력사항입니다.)</li>
								<li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp야시켜 사장님사이트는 가입 승인 후 이용하실 수 있습니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
<%@include file="../../inc/ceo/bottom.jsp" %>