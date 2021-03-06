<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link  href="/css/petHair.css" rel="stylesheet"/>
<link  href="/css/petHairMyPage.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>



<%-- 스크립트 위치 --%>

<script type="text/javascript">
		if('${memVo}'==''){
			alert("로그인이 필요합니다");
			location.href="/hair/hairMain";
		}
	$(document).ready(function(){
		
		
		$(".askBottom").hide();	
		
		
	});

</script>

</head>
<body>
	<!-- header 시작 -->
	<%@include file="../common/header.jsp"%>
	<!-- header 끝-->
	
	<!-- header 시작 -->
	<%@include file="petHairHeader.jsp"%>
	<!-- header 끝-->
	
	<%-- 전체 틀 div --%>
	<div id="mainmid">
		<%@include file="petMypageLeft.jsp"%>
		
		<div class="mpMain">
			<p>현재 이용중인 의뢰</p>  
				<table class="statTable">
					<tr>
						<th>미용실 명</th>
						<th>스타일 명</th>
						<th>이용시간</th>
						<th>가격</th>
						<th>특이사항</th>
						<th>진행상태</th>
					</tr>
					
					<c:choose>
						<c:when test="${hairResList!=null }">
							<c:forEach items="${hairResList }" var="hr">
								<tr>
									<td>${hr.has_name }	</td>
									<td>${hr.pts_name }</td>
									<td>${hr.hres_date }<br>${hr.hres_time }</td>
									<td>${hr.pts_price }원	</td>
									<td>${hr.hres_spec }	</td>
									<td>${hr.hres_stat }</td>
								</tr>
							
							</c:forEach>
						
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="6">이용중인 미용실이없습니다	</td>
							</tr>
						
						</c:otherwise>
					</c:choose>
					
				</table>
			
			<p>문의내역</p>
			
			<c:choose>
				<c:when test="${askList.size()!=0 }">
					<c:forEach items="${askList }" var="al">
						<div class="askBlock">
							<div class="askTop">
							<span>>>> ${al.has_name }</span><span style="color: gray; font-size:10px;"> 내용확인</span><img class="plusToggle" src="/hairimg/plus.png"/>
							</div>
							<div class="askBottom">
								<div class="askText">
									${al.hbrd_text }
							</div>
								
								<img class="arrowimg" src="/hairimg/RightArrow.png"/>
							<div class="askAnw">
								<c:choose>
									<c:when test="${al.hbrd_rep!=null }">
										${al.hbrd_rep }
									</c:when>
									<c:otherwise>
										 - 답변이 아직 등록되지 않았습니다 - 
									</c:otherwise>
								</c:choose>
							</div>
							</div>
						</div>
					
					</c:forEach>
				
				</c:when>
				
				<c:otherwise>
					<div class="askBlock">
					문의한 내역이 없습니다
					</div>
					
				</c:otherwise>
			</c:choose>
			
			<br><br>
			
			<br><br>
			
			
		</div>
	</div>
			
	<!-- footer 시작 -->
	<%@include file="../common/footer.jsp"%>
	<!-- footer 끝 -->
	
	


</body>

<script type="text/javascript">
	$(".plusToggle").click(function(){
		$(this).parents(".askBlock").children(".askBottom").slideToggle("fast");
	});
</script>

</html>
























