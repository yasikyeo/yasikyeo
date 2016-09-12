<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Yasikyeo</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-ui.js'/>"></script>
<script type="text/javascript">
 $(function() {
	 $(".dongBT").click(function() {
		 if($(".addressfrm").css("display")=="none"){
			 var options = {};
			 $( ".addressfrm" ).show("drop" , options, 1000);
		 }else{
			 $(".addressfrm").hide();
		 } 
	 });
	 $(".addressfrm").hide();
	 
	 $(".foodItem").hover(function() {
		$(this).find(".foodIcon").show();
		$(this).find(".foodImg").css("opacity","0.2");
	 },function(){
		$(this).find(".foodIcon").hide();
		$(this).find(".foodImg").css("opacity","1");
	 });
	 
	 $("#mainlogin").click(function() {
		 $( ".modal" ).show();
		 $(".addressfrm").hide();
	 });
	 
	 $("#close").click(function() {
		 $( ".modal" ).hide();
	});
	 
	 $(".addMember").click(function(){
		 location.href="<c:url value='/login/client_addmember.do'/>"; 
	 });
  });	
</script>
</head>
<body>
<div class="modal" >
	<form class="modal-content animate" action="action_page.php">
	    <div class="container">
		    <span class="close" id="close">&times;</span>
		    <div class="imgcontainer">
		      <img src="${pageContext.request.contextPath}/images/mainLogo.png" alt="메인로고" class="avatar">
		    </div>
		    <div class="abc">
		    	<div class="inputContainer">
			      <input type="text" placeholder="아이디 또는 이메일" class="login" name="userid" required>
			      <input type="password" placeholder="비밀번호" class="login" name="pwd" required>
		    	</div>
			    <button type="submit" class="btLogin">로그인</button>
			</div>		
			<div>
				<ul>
					<li>
				    	<input type="checkbox" id="idSave">
				    	<label for="idSave">아이디저장</label> 
					</li>
					<li>|</li>
					<li>비밀번호 찾기</li>
				</ul>
			</div>
			<div>
				<button type="button" class="addMember">회원가입</button>
			</div>		        
	    </div>
	</form>
</div>
<div class="topNav">
	<ul>
		<li><a href="#" id="mainlogin">로그인</a></li>
		<li><a href="#">마이페이지</a></li>
		<li><a href="#">회원가입</a></li>
		<li><a href="#">고객센터</a></li>
		<li><a href="#">즐겨찾기</a></li>
	</ul>
</div>
<header>
	<div class="header">
		<div class="logo">
			<img alt="메인로고" src="${pageContext.request.contextPath}/images/mainLogo.png">
		</div>
		<div class="searchInput">
			<div class="address">
				<div class="addressdiv">
					<span class="dong">서울특별시</span>
					<button class="dongBT"><img alt="타겟" src="${pageContext.request.contextPath}/images/target.png"></button>
				</div>
				<div class="addressfrm">
					<div class="noti">
						<p>현재 설정된 주소가 맞지 않으신가요?</p>
						<p>동명을 검색해서 다시 설정해주세요</p>
					</div>
					<div class="dongdiv">
						<form action="">
							<input type="text" class="findDong" placeholder="동명을 입력하세요">
							<input type="image" class="sbmDong" src="${pageContext.request.contextPath}/images/search.png">
						</form>
					</div>
				</div>
			</div>	
			<form action="" name="frmSearch" id="frmSearch">
				<div class="shop">
					<input type="text" class="fishop">
					<button class="findBT"><img alt="돋보기" src="${pageContext.request.contextPath}/images/magnifier.png"></button>
				</div>
			</form>
		</div>
	</div>
</header>
<section>