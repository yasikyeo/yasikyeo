<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>관리자입니다</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#notice").click(function(){
			
		});
	});
	
</script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/adminMain.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/clear.css"/>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>

<!--[if lt IE 9]>
      <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>      
    <![endif]-->
 </head>

<body>	
	<div id="wrap">
		<!-- header -->		
		<div id="header">
			<h1><a href="<c:url value='/admintemplet/adminMain.do' />">
			<img alt="로고 이미지" src="${pageContext.request.contextPath}/images/admin/adminlogo.png" 
			height="80px" /></a></h1>
			<div id="headerRight">
				<ul class="views">	
					<li><a href="#">로그인</a></li>
					<li><a href="<c:url value='/index.do' />">메인홈페이지로</a></li>
				</ul>
			</div>
		</div>
		
		<div id="header2">
			<nav class="topNav">
				<ul>
					<li id="notice">
						<a href="<c:url value='/admintemplet/eventNotice.do'/>">
						<img alt="이미지" src="${pageContext.request.contextPath}/images/admin/eventnotice.png" width="100px">
						</a>
					</li>
					<li id="memberManage">
						<a href="<c:url value='/admintemplet/memberManage.do'/>">
						<img alt="이미지" src="${pageContext.request.contextPath}/images/admin/adminmember.png" width="100px">
						<br>
						</a>
					</li>
					<li id="messageBoard">
						<a href="<c:url value='/admintemplet/messageBoard.do'/>">
						<img alt="이미지" src="${pageContext.request.contextPath}/images/admin/board.png" width="100px">
						</a>
					</li>
					<li id="register">
						<a href="<c:url value='/admintemplet/register.do'/>">
						<img alt="이미지" src="${pageContext.request.contextPath}/images/admin/store.png" width="100px">
						<br>
						</a>
					</li>
					<li id="fandA">
						<a href="<c:url value='/admintemplet/fandA.do'/>">
						<img alt="이미지" src="${pageContext.request.contextPath}/images/admin/F&A.png" width="100px">
						<br>
						</a>
					</li>
					
					
				</ul>
			</nav>
		</div>

	<!-- 라인 이미지 영역-->
		<div id="topLine" class="top_Line" style="background:url(${pageContext.request.contextPath}/images/line6.jpg)  repeat-x;font-size:7px">
			&nbsp;
		</div>
	
		
	

 		
 	
			
	
			
	