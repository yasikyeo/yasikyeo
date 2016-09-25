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
			 $("#dong").focus();
		 }else{
			 $(".addressfrm").hide();
		 } 
	 });
	 $(".addressdiv").click(function() {
		 if($(".addressfrm").css("display")=="none"){
			 var options = {};
			 $( ".addressfrm" ).show("drop" , options, 1000);
			 $("#dong").focus();
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
	 
	 $("#frmZip").submit(function(event){
			if($("#dong").val().length<1){
				alert("지역명을 입력하세요");
				$("#dong").focus();
				return false;
			}	
			send();
			event.preventDefault();
	});
	
	/*  주소검색및 클릭시 값을 변수에 저장및 세팅 */
	 $(document).on("click",".result",function(){
			var addr = $(this).text();
			var address = addr.split(" ");
			$.ajax({
				url:"<c:url value='/setAddress.do' />",
				data:"si="+address[0]+"&gu="+address[1]+"&dong="+address[2],
				type:"GET",
				success:function(res){
					 if(addr.length>12){
						 addr=addr.substring(0,12)+".."
					}
					$("#addrstr").text(addr);				
				},
				error:function(xhr, status, error){
					alert(status+" : " + error);
				}
			});
			
			$("#divresult").html("");
			if(findadress){
				$(".addressfrm").hide();
			}
	});
	 /*  주소검색및 클릭시 값을 세션에 저장및 세팅 */ 
	 
	/* 디폴트 시구동 세션에 저장 */
	if("${sessionScope.si}".length<1){
		$.ajax({
			url:"<c:url value='/setDefultAddress.do' />",
			type:"GET",
			success:function(res){
				alert("${sessionScope.si},${sessionScope.gu},${sessionScope.dong}");				
			},
			error:function(xhr, status, error){
				alert(status+" : " + error);
			}
		});	
	}
	/* 디폴트 시구동 세션에 저장 */
	
	var findadress=false;
	var targetclass="";
	$("body").click(function(event){
		targetclass=event.target.className;
	});
	
	$("#dong").blur(function(){
		findadress=true;
	});
	setaddress();
});//onload
 function setaddress() {
	var addstr = "${sessionScope.si}"+" "+"${sessionScope.gu}"+" "+"${sessionScope.dong}";
	 if(addstr.length>12){
		 addstr=addstr.substring(0,12)+".."
	}
	$("#addrstr").text(addstr);
} 
  
 function send(curPage){
		$.ajax({
			url:"<c:url value='/getAddrApi.do'/>"									// 고객사 API 호출할 Controller URL
			,type:"post"
			,data:$("#frmZip").serialize() 								// 요청 변수 설정
			,dataType:"xml"												// 데이터 결과 : XML
			,success:function(xmlStr){									// xmlStr : 주소 검색 결과 XML 데이터
				var errCode= $(xmlStr).find("errorCode").text();		// 응답코드
				var errDesc= $(xmlStr).find("errorMessage").text();		// 응답메시지
				totalCount= $(xmlStr).find("totalCount").text();		// 응답메시지
				
				if(errCode != "0"){ 									// 응답에러시 처리
					alert(errCode+"="+errDesc);
				}else{
					if(xmlStr!= null){
						makeList(xmlStr);								// 결과 XML 데이터 파싱 및 출력
					}
				}
			}
			,error: function(xhr,status, error){
				alert("에러발생 - "+status +":" + error);										// AJAX 호출 에러
			}
		});
	}
 function makeList(xmlStr){
	    $("#divresult").html("");
		
		if(totalCount<0){
			$("#divresult").css("text-align","center")
			.html("해당 데이터는 존재하지 않습니다.");
			return;
		}
		
		// jquery를 이용한 XML 결과 데이터 파싱
		var dong=new Array();
		var index3=0;
		var bool=false;
		$(xmlStr).find("juso").each(function(){
			var zipNo = $(this).find("zipNo").text();
			var addr = $(this).find("roadAddr").text().split(" ");
			var don = $(this).find("roadAddrPart2").text();
			var index1=don.indexOf("(");
			var index2=don.indexOf(")");
			don = don.substring((index1+1),index2).split(",");
			
			if ($.inArray(don[0], dong) == -1) {  // result 에서 값을 찾는다.  //값이 없을경우(-1)
				dong.push(don[0]);                // result 배열에 값을 넣는다.
				
				var roadAddr = addr[0]+" "+addr[1]+" "+don[0];
				var divresult = $("<div class='result'></div>");
				divresult.html(roadAddr);
				$("#divresult").append(divresult);				
			}
		});
	}
 
 window.onload = function(){
	 var url = window.location.href;
	 
	 document.getElementById("prev").value = url;
 }
 
</script>
</head>
<body>
<div class="modal" >
	<form class="modal-content animate" action="<c:url value='/login/login.do'/>" method="post">
	    <div class="container">
		    <span class="close" id="close" >&times;</span>
		    <div class="imgcontainer">
		      <img src="${pageContext.request.contextPath}/images/mainLogo.png" alt="메인로고" class="avatar">
		    </div>
		    <div class="abc">
		    	<div class="inputContainer">
		    	  <input type="hidden" name="prev" id="prev">
			      <input type="text" placeholder="아이디 또는 이메일" class="login" name="memberId" required value="${cookie.ck_memberId.value }">
			      <input type="password" placeholder="비밀번호" class="login" name="memberPwd" required>
		    	</div>
			    <button type="submit" class="btLogin">로그인</button>
			</div>		
			<div>
				<ul>
					<li>
				    	<input type="checkbox" name="idSave" id="idSave"
				    		<c:if test="${!empty cookie.ck_memberId}">
				    		checked
				    		</c:if>>
				    	<label for="idSave">아이디저장</label> 
					</li>
					<li>|</li>
					<li><a href="<c:url value='/login/client_findPwd.do'/>">비밀번호 찾기</a></li>
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
		<c:if test="${empty sessionScope.memberId }">
			<li><span id="mainlogin" class="cursor-pointer">로그인</span></li>
			<li><a href="<c:url value='/login/client_addmember.do'/>">회원가입</a></li>	            
		</c:if>
		<c:if test="${!empty sessionScope.memberId }">
			<li><a href="<c:url value='/login/logout.do'/>">로그아웃</a></li>
		</c:if>		
		<li><a href="<c:url value='/mypage/client_mypage.do'/>">마이페이지</a></li>
		<li><a href="<c:url value='/service/client_faq.do'/>">고객센터</a></li>
		<li><a href="<c:url value='/mypage/client_mypage.do'/>">즐겨찾기</a></li>
	</ul>
</div>
<header>
	<div class="header">
		<div class="logo">
			<a href="<c:url value='/index.do'/>"><img alt="메인로고" src="${pageContext.request.contextPath}/images/mainLogo.png"></a>
		</div>
		<div class="searchInput">
			<div class="address">
				<div class="addressdiv">
					<span class="dong" id="addrstr"></span>
					<button class="dongBT"><img class="dongimg" alt="타겟" src="${pageContext.request.contextPath}/images/target.png"></button>
				</div>
				<div class="addressfrm">
					<div class="noti">
						<p>현재 설정된 주소가 맞지 않으신가요?</p>
						<p>동명을 검색해서 다시 설정해주세요</p>
					</div>
					<div class="dongdiv">
						<form id="frmZip" method="post" action="<c:url value='/login/client_addmember.do'/>">
							<input type="hidden" id="currentPage" name="currentPage" value="1"/>				<!-- 요청 변수 설정 (현재 페이지) -->
						    <input type="hidden" id="countPerPage" name="countPerPage" value="5000"/>				<!-- 요청 변수 설정 (페이지당 출력 개수) -->
						    <input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE2MDcxODIyMDcxMzEzODg5"/>
							<input type="text" class="findDong" id="dong" name="keyword" value="${param.keyword}" placeholder="동명을 입력하세요">
							<input type="image" class="sbmDong" src="${pageContext.request.contextPath}/images/search.png">
						</form>
					</div>
					<div id="divresult"></div>
				</div>
			</div>	
			<form action="<c:url value='/shop/client_shop_list.do?menu=${param.menu}'/>" name="frmSearch" id="frmSearch" method="post">
				<div class="shop">
					<input type="text" class="fishop" name="searchKeyword" value="${param.searchKeyword}">
					<button class="findBT" type="submit"><img alt="돋보기" src="${pageContext.request.contextPath}/images/magnifier.png"></button>
				</div>
			</form>
		</div>
	</div>