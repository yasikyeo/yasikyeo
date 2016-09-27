<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top2.jsp" %>
<script type="text/javascript" src="<c:url value='/jquery/jquery.raty.js'/>"></script>
<script type="text/javascript">
$.fn.raty.defaults.path = "<c:url value='/images'/>";
$(function () { 
	$('div.star').raty({
		readOnly: true,
		  score: function() {
		    return $(this).attr('data-score');
		  },
	 	 /*  half: true, */
	 	 /*  hints: ['a', null, '', undefined, '*_*'], */
	 	 /*   target : '#hint', 
	 	  targetType : 'score',
	 	  targetFormat : 'Rating: {score}', */
	 	  targetScore: '#hint'
	});
});
</script>
<div class="mainSection">
	<div class="location">
		<ul>
			<li>
				<a href="<c:url value='/index.do'/>">홈</a>
			</li>
			<li>&gt;</li>
			<li style="font-weight: bold;">마이페이지</li>
		</ul>
	</div>
	<div>
		<fieldset class="mypage">
			<legend>마이페이지</legend>
			<div class="mypageNav">
				<ul>
					<li>
						<img alt="" src="<c:url value='/images/mypage/바로결제내역.png'/>">
						<a href="<c:url value='/mypage/client_paymentList.do'/>"><span>바로결제 내역</span></a>
					</li>
					<li>
						<img alt="" src="<c:url value='/images/mypage/내정보.png'/>">
						<a href="<c:url value='/mypage/client_myinfo.do'/>"><span>내정보</span></a>
					</li>
					<li>
						<img alt="" src="<c:url value='/images/mypage/포인트.png'/>">
						<a href="<c:url value='/mypage/client_mypoint.do'/>"><span>포인트</span></a>
					</li>
					<li>
						<img alt="" src="<c:url value='/images/mypage/리뷰관리.png'/>">
						<a href="<c:url value='/mypage/client_myreview.do'/>"><span>리뷰관리</span></a>
					</li>
				</ul>
			</div>
			<div class="orderList">
				<div class="pageTitle">
					<strong>최근 시켰던 음식점</strong> <span>최근 주문한 내역은 20개까지 저장됩니다.</span>
				</div>
				<div class="bookmarkContain">
					<!-- 음식점 조회 -->
					<div class="bookmark">
						<div>피자스토리 원플러스원</div>
						<div class="star" data-score="3.6"></div>
						<div class="description">리뷰<span>4</span>즐겨찾기<span>3</span></div>
					</div>
					<div class="bookmark">
						<div>피자스토리 원플러스원</div>
						<div class="star" data-score="3.6"></div>
						<div class="description">리뷰<span>4</span>즐겨찾기<span>3</span></div>
					</div>
					<div class="bookmark">
						<div>피자스토리 원플러스원</div>
						<div class="star" data-score="3.6"></div>
						<div class="description">리뷰<span>4</span>즐겨찾기<span>3</span></div>
					</div>
					<div class="bookmark">
						<div>피자스토리 원플러스원</div>
						<div class="star" data-score="3.6"></div>
						<div class="description">리뷰<span>4</span>&nbsp;즐겨찾기<span>3</span></div>
					</div>
					
					<!-- 음식점 조회끝 -->
				</div>
			</div>
			<br class="clear-both">
			<div class="bookmarkDiv">
				<div class="pageTitle">
					<strong>즐겨찾기</strong> <span>자주 이용하는 업소를 즐겨찾기에 등록해 보세요.</span>
				</div>
				<div class="bookmarkContain">
					<!-- 북마크 없을때 -->
					<div class="div1 vertical-container">
						<img alt="" src="<c:url value='/images/즐겨찾기등록.png'/>">
					</div>
					<!-- 북마크 있을때 -->
					<!-- 북마크 반복시작 -->
					<div class="bookmark">
						<span class="close" id="close1" >&times;</span>
						<div>피자스토리 원플러스원</div>
						<div class="star" data-score="3.6"></div>
						<div class="description">리뷰<span>4</span>즐겨찾기<span>3</span></div>
					</div>
					<div class="bookmark">
						<span class="close" id="close1" >&times;</span>
						<div>피자스토리 원플러스원</div>
						<div class="star" data-score="3.6"></div>
						<div class="description">리뷰<span>4</span>즐겨찾기<span>3</span></div>
					</div>
					<div class="bookmark">
						<span class="close" id="close1" >&times;</span>
						<div>피자스토리 원플러스원</div>
						<div class="star" data-score="3.6"></div>
						<div class="description">리뷰<span>4</span>즐겨찾기<span>3</span></div>
					</div>
					<div class="bookmark">
						<span class="close" id="close1" >&times;</span>
						<div>피자스토리 원플러스원</div>
						<div class="star" data-score="3.6"></div>
						<div class="description">리뷰<span>4</span>&nbsp;즐겨찾기<span>3</span></div>
					</div>
					
					<!-- 북마크 반복끝 -->
				</div>
			</div>
		</fieldset>
	</div>
</div>
<br>
<br>
<br>
<%@ include file="../inc/bottom.jsp" %>