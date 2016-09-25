<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/needpopup.min.css" type="text/css" />
<script src="${pageContext.request.contextPath}/jquery/needpopup.min.js"></script>
<script>
	needPopup.config.custom = {
		'removerPlace' : 'outside',
		'closeOnOutside' : false,
		onShow : function() {
			console.log('needPopup is shown');
		},
		onHide : function() {
			console.log('needPopup is hidden');
		}
	};
	needPopup.init();
</script>
<style>
.needpopup {
	border-radius: 6px;
	box-shadow: 0 1px 5px 1px rgba(0, 0, 0, 1);
}

.needpopup p {
	margin: 0;
}
</style>
<title>야시켜 사장님사이트</title>

		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div class="container">
    						<div id="slides">
      							<img src="${pageContext.request.contextPath}/images/test1.png" alt="이미지1" width="800" height="470">
							    <img src="${pageContext.request.contextPath}/images/test2.png" alt="이미지2" width="800" height="470">
							    <img src="${pageContext.request.contextPath}/images/test3.png"alt="이미지3" width="800" height="470">
    						</div>
    						
    						<div id="conlogin">
    							<c:if test="${empty sessionScope.ceoId }">
    							<div id="alignlogin">
    							<form name="frm" method="post" action="<c:url value='/ceo/login.do'/>">
	    							<input type="text" placeholder="ID 입력" name="ceoId" class="input" value="${cookie.ck_ceoId.value }" >
	    							<br><input type="password" required placeholder="비밀번호 입력" name="ceoPwd" class="input">
	    							<br><p><input type="checkbox" id="idSave" name="idSave" <c:if test="${!empty cookie.ck_ceoId}">
					    				checked</c:if>>
				    				<label for="idSave">아이디 저장 |</label>
				    				<a href="<c:url value='/ceo/index.do'/>"> ID/PW찾기 </a>
				    				<a href="<c:url value='/ceo/member/ceo_addmember.do'/>">| 회원가입</a></p>
									<br><input type="submit" value="로그인" name="login" class="login_button" />
								</form>
								</div>
								</c:if>
								<c:if test="${!empty sessionScope.ceoId }">
								<div id="logout"><br><br><br><br><br><br><br>
								<form name="logout" mehtod="post" action="<c:url value='/ceo/logout.do'/>">
									<p>${sessionScope.ceoId } 님 환영합니다.</p><br>
									<input type="submit" value="로그아웃" name="login" class="login_button" />
								</form>
								</div>
								</c:if>
							</div>
							
    						
    					</div>
    						<div id="info">
								<div id="info_1" onclick="link1()"><!-- 업소등록 확인 --></div>
								<div id="info_2" onclick="link2()"><!-- 업소정보 수정 --></div>
								<div id="info_3" onclick="link3()"><!-- 정산내역 확인 --></div>
							</div>
							<div id="dinfo">
								<div id="info_4">
								<b>공지사항</b>
								<hr>
								<b> [공지]9월 야시켜아카데미 고급과정 선정자발표</b>
								<p>2016.08.25<br>
								사장님의 성장을 돕는 교육프로그램 9월 야시켜아카데미 고급과정 교육에 참여할 사장님을 공개합니다!</p>
								<br>
								<hr>
								<b>[공지] 우리가게 청결 자랑하기 이벤트 당첨자발표</b>
								<p>2016.08.25<br>
								청결왕 프로젝트 시즌2 <우리가게 청결 자랑하기> 이벤트 당첨자를 공개합니다.</p>
								
								</div>
								<div id="info_5">
								<img src="${pageContext.request.contextPath}/images/info5testimg.jpg" width="377.60" height="325" onclick="link4()">
								</div>
								
								<div class="info_group">
									<div id="info_6"><a href="#" data-needpopup-show="#custom-popup1">
									<img src="${pageContext.request.contextPath}/images/info6testimg.jpg" width="377.60" height="160"></a>
									</div>
									<div id="info_7"><a href="#" data-needpopup-show="#custom-popup2">
									<img src="${pageContext.request.contextPath}/images/info7testimg.jpg" width="377.60" height="160"></a>
									</div>
								</div>
							<div id='custom-popup1' class="needpopup" data-needpopup-options="custom">
								<p><img src="${pageContext.request.contextPath}/images/sum/m6_context.png"></p>
							</div>	
							<div id='custom-popup2' class="needpopup" data-needpopup-options="custom">
								<p><img src="${pageContext.request.contextPath}/images/sum/m2_context.png"></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
<script src="${pageContext.request.contextPath}/js/jquery.slides.min.js"></script>
<script>
		$(function() {
			$('#slides').slidesjs({
				width: 940, height: 528, play: {active: true, auto: true, interval: 4000, swap: true}
			});
		});
</script>
<script type="text/javascript">
		function textClear(element){
			if(element.value !='')
			{
				element.value = '';
			}
		}
		
		function link1(){
			location.href="<c:url value='/ceo/member/ceo_addshop.do'/>";
		}
		function link2(){
			location.href="<c:url value='/ceo/member/ceo_updateshop.do'/>";
		}
		function link3(){
			location.href="http://www.naver.com";
		}
		function link4(){
			location.href="http://www.naver.com";
		}
</script>
<%@ include file="../inc/ceo/bottom.jsp" %>