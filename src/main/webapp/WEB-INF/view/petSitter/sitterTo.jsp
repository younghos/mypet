<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sitterTo.jsp</title>
<link href="/css/commonCss.css" rel ="stylesheet">
<link href="/css/petSitter.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  
  
  </script>
<style type="text/css">
.ui-tabs .ui-tabs-panel {
	display: block;
	border-width: 0;
	padding: 1em 1.4em;
	background: none;
	position: absolute;
	border: 1px solid #1581ce;
	width: 888px;
	background-color: white;
	float: left;
}

#hidden {
	display: none;
}

.noticeWord{
	font-size : 28px;
}

#noticeColor1{
	color : #9c9c9c;
	width : 170px;
	font-size : 20px;
}
#noticeColor2{
	color : orange;
	width : 170px;
	font-size : 20px;
}
.noticeSV{
	text-align: center
}
#noticeAdd{
   	margin-top: 20px;
   	width: 10%;
   	height: 60px;
   	font-family: 'Nanum Brush Script', cursive;
   	font-size : 26px;
   	float:left;
   	color : #fff;
   	text-align: center;
   	line-height: 60px;
   	background-color: #4f87ff;
   	border-radius: 15px;
   	cursor: pointer;
}

.addr{
	border : 1px solid black;
	width : 200px;
	height : 30px;
	z-index: 1;
	background-color: #000;
	opacity: 0.5;
	color: #fff;
	font-size : 22px;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		var ev = "click";
		var cnt = 0;
		$("#noticeList").on(ev,".noticeClick", function(){
			var pstId = $(this).children()[1].innerText;
			$("#pstId").val(pstId);
			cnt++;
			$("#count").val(cnt);
			$("#frm1").submit();
		});
		
		$("#noticeAddBtn").click(function(){
			var mem_id = "${memVo.mem_id}";
			if(mem_id == ""){
				$("#loginPopup").slideDown("fast");
			} else{
				location.href="/sit/sitterToInsertView";
			}
		});
		
		$(".btn").click(function(){
			var i = $(this).children('input').val();
			$("#sort").val(i);
			$("#frm2").submit();
		});
	});
</script>

</head>
<body>
<form action="" method="post" id="frm2">
	<input type="hidden" id="sort" name="sort" />
</form>
<%@include file="/WEB-INF/view/common/header.jsp"%>

<!-- 각자 화면 -->
	<div id="">
		<!-- header -->
		<div id="header">
			<!-- main -->
			<div id="logo">
				<a href="/petSitter.jsp"><img alt="이미지가 없습니다"
					src="/img/petSitterLogo2.jpg" width="200px;" /></a>
			</div>
			<div id="petSearch">
				<div id="word">
					<input type="text" id="search" value="검색어를 입력하세요" onfocus="this.value=''" style="color: #c1c1c1" />
				</div>
				<div id="searchButton">
					<a href="#" id="searchButton"></a>
				</div>
			</div>

			<!-- 우리 아이 등록하기 -->
			<div id="petInsert">
				<a href="#"><img alt="이미지가 없습니다" src="/img/petInsert.jpg"
					width="240px;" height="100px;"></a>
			</div>
		</div>
	</div>
	
	<div id="body">
		<div id="petSitterMenu">
			<%@include file="/WEB-INF/view/petSitter/petSitterMenu.jsp" %>
		</div>
		<div id="searchMain">
			<%@include file="/WEB-INF/view/petSitter/searchHeader.jsp" %>
			
			<div id="searchList">
				<div id="list1">
					<div id="list2">
						<ul>
							<li>
								<span>서비스 구분</span> <br>
								<select class="service">
									<option value="0" selected>전체</option>
									<option value="12">데이케어</option>
									<option value="24">24시간 돌봄</option>
								</select>
							</li>
							<li>
								<span>반려견 나이</span> <br>
								<select class="service">
									<option value="0" selected>모든 연령</option>
									<option value="1">강아지(1살이하)</option>
									<option value="2">성견(2~6살)</option>
									<option value="3">노견(7살이상)</option>
								</select>
							</li>
							<li>
								<span>반려견 크기</span> <br>
								<select class="service">
									<option value="0" selected>모든 크기</option>
									<option value="1" >소형견(0~4.9kg)</option>
									<option value="2" >중형견(5~14.9kg)</option>
									<option value="3" >대형견(15kg이상)</option>
								</select>
							</li>
							<li id="lstBtn">
								<button id="listButton" type="submit">찾기</button>
							</li>
						</ul>
					</div>
					<div id="noticeAdd">
						<span id="noticeAddBtn">게시글 등록</span>
					</div>
				</div>
			</div>
		</div><!-- // searchMain -->
		
		<div id="petToList">
			<div id="listMenu">
				<div id="sort">
					<label class="btn" >최신순<input type="hidden" id="latest" name="latest" value="1" /></label> 
					<label class="btn" >조회순<input type="hidden" id="inquiry" name="inquiry" value="2" /></label> 
				</div>
			</div>
			<div id="list">
				<div class="notice">
					<table id="noticeTable">
						<tbody id="noticeList">
							<c:forEach items="${sitList }" var="list">
								<tr class="noticeClick noticeTr">
									<c:choose>
										<c:when test="${list.pst_img == '' || list.pst_img == null}">
											<td rowspan="3" class="noticeAttr"><div style="width:370px; height:270px; background-image: url('/img/petimg/noimg.jpg');  background-size: cover;" ></div></td>
										</c:when>
										<c:otherwise>
											<td rowspan="3" class="noticeAttr">
												<div style="width:370px; height:270px; background-image: url('${list.pst_img}'); background-repeat: no-repeat; background-size: cover;" >
												<div class="addr">${list.mem_addr }</div>
											</td>
										</c:otherwise>
									</c:choose>
									<td id="hidden" rowspan="3">${list.pst_id }</td>
									<td colspan="3"><span class="noticeWord noticeTitle">&nbsp;제목 : ${list.pst_title }</span></td>
								</tr>
								<tr class="noticeTr">
									<td><span class="noticeWord">&nbsp;가격정보</span></td>
									<td id="noticeColor1">day care / <span class="noticeWord">${list.pst_price1 }원</span></td>
									<td id="noticeColor2">1박 / <span class="noticeWord">${list.pst_price2 }원</span></td>
								</tr>
								<tr class="noticeTr" id="noticeLast">
									<td></td>
									<td class="noticeWord noticeSV"><span>평정 : ${list.pst_score }</span></td>
									<td class="noticeWord noticeSV"><span>조회수 : ${list.pst_view }</span></td>
									<td id="hidden"><fmt:formatDate value="${list.pst_date }" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	
	<form id="frm1" method="get" action="/sit/sitDetail">
		<input type="hidden" id="pstId" name="pst_id" />
		<input type="hidden" id="count" name="count" />
	</form>
	<div id="topMove">
		<a href="#header">
			<img alt="화살표" src="/img/petSitterImg/top.jpg" width=50px height=50px>
		</a>
	</div>
	<%@ include file="/WEB-INF/view/common/footer.jsp" %>
	
</body>
</html>
