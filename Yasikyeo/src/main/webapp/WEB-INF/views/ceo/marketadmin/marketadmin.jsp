<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/ceo/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ceoallmenu.css" type="text/css" />
<title>야시켜, 사장님 업소관리</title>



		<div id="main">
			<div id="main_box">
				<div id="box_1">
					<div id="a_1">
						<div id="show1">내 업소관리</div>
						<div class="show2">
							<div id="lsh">사장님 업소에 대한 내용을 확인 및 수정할수 있는 메뉴입니다.</div>
						</div>
							<div class="marketadmins">
								
								<p>가게 별점 평균 <span class="star-rating"> <span style="width:50%"></span></span></p>
								<p>주문건 수 - 전체 : 0건, 일별 : 0건</p>
								<p>등록된 즐겨찾기 수 - 0건</p>
								<p>등록된 리뷰 수 - 0건</p>
								<br>	
								<table>
									<tr>
									<div class="product clear">
										<details> <summary>메뉴 등록</summary>
										<div id="content">
											<div class="needpopup">
												<form id="write">
													<input type="file" id="up_files[0]" name="up_files" onchange="handleFileSelect()"/>
													<div id="list[0]"></div>
													메뉴 이름<input type="text" id="qwe"><br>										
													<select name="opt" class="formInput">
														<option>선택구분</option>												
														<option value="choice">선택</option>
														<option value="indispensable" >필수</option>
													</select>
													음식명 : <input type="text" id="food"> 가격 : <input type="text" id="price"><input type='button'  value="추가" id="additem"/><br>
												</form>
											</div>
										</div>
										</details>
									</div>
									</tr>
									<br>
									<tr>
									<div class="product clear">
										<details> <summary>리뷰 관리</summary>
										<div id="content">
											<div class="needpopup1">
												(리뷰내용을list형식으로보기,리플달기)
											</div>
										</div>
										</details>
									</div>
									</tr>
									<br>
									<tr>
									<div class="product clear">
										<details> <summary>주문관리</summary>
										<div id="content">
											<div class="needpopup2">
												({주문내용보기(주문일시,주문번호,메뉴,주문금액,상태변경버튼(배달중,배달완료)})
											</div>
										</div>
										</details>
									</div>
									</tr>
									
									<!-- 메뉴버튼 클릭 시 내용이 나옴 -->
									<script>
										if ($('html').hasClass('no-details')) {
											var summary = $('details summary');
											summary.siblings().wrapAll('<div class="slide"></div>');

											$('details:not(.open) summary').siblings('div').hide();

											summary.click(function() {
												$(this).siblings('div').toggle();
												$('details').toggleClass('open');
											});
										}
									</script>

								<!-- 이미지 등록시 미리보기를 보여주는 DHTML -->
								<script type="text/javascript">
								
								
    							function handleFileSelect() {
    									var fileselectobj = "up_files["+menustep+"]";
    									var previmageobj ="list["+menustep+"]";
										files = document.getElementById(fileselectobj).files[0]; //파일 객체

										var reader = new FileReader();

										//파일정보 수집        
										reader.onload = (function(theFile) {
											return function(e) {
												//이미지 뷰
												img_view = [ '<img src="',e.target.result,'" title="',escape(theFile.name),'"width=200px height=120px"/>' ].join('');
												document.getElementById(previmageobj).innerHTML = img_view;
											};

										})(files);

										reader.readAsDataURL(files);
								}
    							
    							var menustep=0;
    							var selectItem="";
    							var img_view;
    							var files;
    							function temp(img,step,item) {
									var str = "";
									alert(menustep);
									
									str+="<br><input type='file' id='up_files["+menustep+"]' name='up_files' value='"+img+"' onchange='handleFileSelect()'/>";
									str+="<br><div id='list["+menustep+"]'></div>";
									str+="메뉴 이름<input type='text><br>";										
									str+="<select name='opt["+menustep+"]' class='formInput'>";
									str+="<option selected='selected'>선택구분</option>";
									str+="<option value='choice'>선택</option>";	
									str+="<option value='indispensable'>필수</option>";
									str+="</select>";
									str+="음식명 : <input type='text'> 가격 : <input type='text'>";
									str+="<input type='button'  value='추가' id='additem'/><br>";
									
									return str;
								} 
    							$("#additem").click(function() {    	
    								menustep++;
    								
    								var file=document.getElementById("up_files[0]").value;
    																	
    								$(".needpopup").append(temp($("#up_files[0]").val(),menustep,selectItem));
									
    								if(img_view!=null){
	    								document.getElementById(previmageobj).innerHTML = img_view;
    								}
    								
								});
    							
    							
								</script>

							</table>
							
							</div>

						<br><br><br>


<%@ include file="../../inc/ceo/bottom.jsp" %>
	</div>
