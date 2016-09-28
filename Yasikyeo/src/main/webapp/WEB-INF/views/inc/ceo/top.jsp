<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dropmenu.css" type="text/css" />
<script type="text/javascript" src="<c:url value='/jquery/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.slides.min.js"></script>
</head>
<body>
	<div id="wrap">
		<div id="top_1">
			<div id="header">
				<div id="logo"> <a href="<c:url value='/ceo/index.do'/>"><img src="${pageContext.request.contextPath}/images/logo_p.png" width="188" height="90"></a> </div>
				<div id="nav">
					<div class="menu_test">
						<ul>
							<li class="float_leftmenu"><a href="<c:url value='/ceo/marketadmin/marketadmin.do'/>">내 업소관리</a>
							<div class="open_menu">
									<ul>
										<li><a href="<c:url value='/ceo/marketadmin/marketadmin.do'/>">메뉴 등록</a></li>
										<li><a href="<c:url value='/ceo/marketadmin/market_menuList.do'/>">메뉴 보기</li>
										<li><a href="">리뷰 관리</li>
										<li><a href="">주문 관리</li>
									</ul>
								</div></li>
							<li class="float_leftmenu"><a href="<c:url value='/ceo/serviceintro/serviceintro.do'/>">서비스 소개</a></li>
							<li class="float_leftmenu"><a href="<c:url value='/ceo/honeytip/honeytip.do'/>">사장님 꿀팁</a></li>
							<li class="float_leftmenu"><a href="<c:url value='/ceo/event/ceo_event.do'/>">이벤트</a></li>
							<li class="float_leftmenu"><a href="<c:url value='/ceo/cscenter/cscenter.do'/>">고객센터</a></li>
					</div>
				</div>
			</div>
		</div>
