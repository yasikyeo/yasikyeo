<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/top.jsp" %>
	<article class="mainBanner">
		<!-- Start WOWSlider.com BODY section -->
		<div id="wowslider-container1">
		<div class="ws_images"><ul>
				<li><img src="${pageContext.request.contextPath}/images/benner1.jpg" alt="배너1" title="배너1" id="wows1_0"/></li>
				<li><img src="${pageContext.request.contextPath}/images/benner2.jpg" alt="배너2" title="배너2" id="wows1_1"/></li>
				<li><a href="#"><img src="${pageContext.request.contextPath}/images/benner3.jpg" alt="bootstrap slider" title="배너3" id="wows1_2"/></a></li>
				<li><img src="${pageContext.request.contextPath}/images/benner4.jpg" alt="배너4" title="배너4" id="wows1_3"/></li>
			</ul></div>
			<div class="ws_bullets"><div>
				<a href="#" title="배너1"><span><img src="${pageContext.request.contextPath}/images/tooltip1.jpg" alt="배너1"/>1</span></a>
				<a href="#" title="배너2"><span><img src="${pageContext.request.contextPath}/images/tooltip2.jpg" alt="배너2"/>2</span></a>
				<a href="#" title="배너3"><span><img src="${pageContext.request.contextPath}/images/tooltip3.jpg" alt="배너3"/>3</span></a>
				<a href="#" title="배너4"><span><img src="${pageContext.request.contextPath}/images/tooltip4.jpg" alt="배너4"/>4</span></a>
			</div></div>
		<div class="ws_shadow"></div>
		</div>	
		<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/wowslider.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/script.js"></script>
		<!-- End WOWSlider.com BODY section -->
	</article>
	<article class="mainMenu">
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/chicken.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/chicken.png">
	  			<p>치킨</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/chineseFood.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/chineseFood.png">
	  			<p>중국집</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/fastFood.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/hamburger.png">
	  			<p>패스트푸드</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/japaneseFood.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/japaneseFood.png">
	  			<p>돈까스일식</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/jjim.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/jjim.png">
	  			<p>찜,탕</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/jokbal.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/jokbal.png">
	  			<p>족발,보쌈</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/koreanFood.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/koreanFood.png">
	  			<p>한식,분식</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/lunch.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/lunch.png">
	  			<p>도시락</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/nightFood.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/nightFood.png">
	  			<p>야식</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/pizza.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/pizza.png">
	  			<p>피자</p>
  			</div>
		</div>
		<div class="foodItem">
	  		<img class="foodImg" src="${pageContext.request.contextPath}/images/icon2/payment.png">
  			<div class="foodIcon">
	  			<img alt="" src="${pageContext.request.contextPath}/images/icon/payment.png">
	  			<p>바로 결제</p>
  			</div>
		</div>
	</article>	

<%@ include file="inc/bottom.jsp" %>