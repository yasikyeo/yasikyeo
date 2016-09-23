<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<script type="text/javascript">
 $(function() {
	 var windowWidth = $( window ).width();

	 $( window ).resize(function(){
		 windowWidth = $( window ).width();
	 });
	 $(".mainNav").mouseenter(function() {
		 $(".mainNav").stop();
		 if(windowWidth < 737){
			 $(".mainNav").animate({height:'273'}, 300);
		 }else{
			 $(".mainNav").animate({height:'182'}, 300);
		 }
	 });
	 $(".mainNav").mouseleave(function() {
		 $(".mainNav").stop();
		 $(".mainNav").animate({height:'100'}, 300);
	 })
  });
</script>
	<div class="mainNav">
		<div class="navContain">
		<ul>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/chicken.png"><br>
				<span>치킨</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/chineseFood.png"><br>
				<span>중국집</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/pizza.png"><br>
				<span>피자</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/koreanFood.png"><br>
				<span>한식,분식</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/jokbal.png"><br>
				<span>족발,보쌈</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/view.png"><br>
				<span>야식</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/japaneseFood.png"><br>
				<span>돈까스,회,일식</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/jjim.png"><br>
				<span>찜,탕</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/lunch.png"><br>
				<span>도시락</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/hamburger.png"><br>
				<span>패스트푸드</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/payment.png"><br>
				<span>바로결제</span>
				</a>
			</li>
			<li class="categoriContain">
				<a href="#">
				<img class="imgContain" alt="" src="${pageContext.request.contextPath}/images/icon/guitar.png"><br>
				<span>기타</span>
				</a>
			</li>
		</ul>
		</div>
	</div>
</header>
<section>