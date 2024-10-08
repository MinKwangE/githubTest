<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/dogcat_header.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>DogCatPunch Main page</title>
<style>

h2 {
	margin: 0 auto;
	margin-bottom: 30px;
	margin-top: 100px;
	display: block;
	text-align: center;
	display: block;
}

.wekbox {
	text-align: center; /* 리스트 아이템 가운데 정렬 */
}

.wekul {
	display: inline-block; /* 리스트를 가로로 표시 */
	padding: 0; /* 기본 패딩 제거 */
}

.wekli {
	display: inline-block; /* 리스트 아이템을 가로로 표시 */
	margin: 0;
	list-style-type: none;
}

.imgli {
	height: 145px;
	margin-right: 10px;
	max-width: 100%;
	border-radius: 30px;
	border : 1px solid #FDF5E6;
}

.imgbox {
	text-align: center;
}

.imggg {
	height: 400px;
	margin: 30px 0;
	max-width: 100%;
	border-radius: 4px;
}

.evbox {
	text-align: center; /* 리스트 아이템 가운데 정렬 */
}

.evul {
	display: inline-block; /* 리스트를 가로로 표시 */
	padding: 0; /* 기본 패딩 제거 */
}

.evli {
	display: inline-block; /* 리스트 아이템을 가로로 표시 */
	margin: 0;
	list-style-type: none;
}

.imgev {
	height: 300px;
	margin-right: 30px;
	max-width: 100%;
	border-radius: 4px;
}

/* 이전 화살표 스타일 */
.carousel-control-prev {
/* 	margin-left: -85px; /* 원하는 만큼 왼쪽으로 이동 */ */
	opacity: 0.1;
}

/* 다음 화살표 스타일 */
.carousel-control-next {
/* 	margin-right: -85px; /* 원하는 만큼 오른쪽으로 이동 */ */
	opacity: 0.1;
}
.contents{width:50%; margin:0 auto; text-align:justify; line-height:1.4em; }

.include-main {
	text-align : center;
}

#include-main{
	text-align : center;
}
.carouselImg:hover {
	cursor : pointer;
}
@media (max-width : 391px){
	#best, #event {
		margin-top : 40px;
	}
	.imggg{
		height : 135px;
		max-width : 90%;
	}
	
	.imgev {
    height: 100px;
    max-width: 100%;
    border-radius: 4px;
    margin : 0 auto;
}
.imgli {
	height: 100px;}
	
	
	
}

</style>
<script>
	// 페이지 로딩 후 실행될 코드
	document
			.addEventListener(
					"DOMContentLoaded",
					function() {
						var userLeave = "${userLeave}";

						if (userLeave === "k") {
							alert("해당 카카오 계정은 기존에 탈퇴 된 계정으로 다시 로그인이 불가능합니다. 서비스 이용을 위해 독켓펀치 회원가입을 이용해 주세요");
						} else if (userLeave === "n") {
							alert("해당 네이버 계정은 기존에 탈퇴 된 계정으로 다시 로그인이 불가능합니다. 서비스 이용을 위해 독켓펀치 회원가입을 이용해 주세요");
						} else if (userLeave === "l") {
							alert("해당 계정은 기존에 탈퇴 된 계정으로 서비스 이용을 위해 독켓펀치 회원가입을 다시 해주세요(단, 해당 아이디는 재사용이 불가능합니다)");
						}
					});
	
	$(document).ready(function(){
	      $.ajax({
	         url : "/Main.pro",
	         type : 'GET',
	         cache : false,
	         success : function(res){
	            $("#include-main").html(res);
	         },
	         error : function(err){
	            console.log('에러메세지', err);
	            alert("오류발생");
	         }
	      });
	   });

</script>
</head>
<body>
	<section>
		<!-- 캐러셀 -->
		<div id="demo" class="carousel slide" data-ride="carousel">

			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>

			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath}/resources/img/carousel1.png"
						onclick="location.href='u_getBoardList.board'"
						class="carouselImg" alt="설명">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/carousel2.png"
						onclick="location.href='u_getBoardList.board'"
						class="carouselImg" alt="설명">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/carousel3.png"
						class="carouselImg" alt="설명">
				</div>
			</div>

		</div>
	</section>
	<h2 id="best">
		<b>Best</b>
	</h2>
	<div id="include-main">
		
	</div>
	
	<div class="wekbox">
		<div class="imgbox">
			<a href="#" onclick="location.href='u_getBoardList.board'"> <img class="imggg"
				src="${pageContext.request.contextPath}/resources/img/event_head.png"></a>
		</div>

		<h2 id="event">
			<b>이벤트 및 기획전</b>
		</h2>
		<div class="evbox" style="margin-bottom: 100px;">
			<ul class="evul">
				<li class="evli"><a href="#" onclick="location.href='u_getBoardList.board'"><img class="imgev"
						src="${pageContext.request.contextPath}/resources/img/event1.png"></a></li>
				<li class="evli"><a href="#" onclick="location.href='u_getBoardList.board'"><img class="imgev"
						src="${pageContext.request.contextPath}/resources/img/event3.png"></a></li>
				<li class="evli"><a href="#" onclick="location.href='u_getBoardList.board'"><img class="imgev"
						src="${pageContext.request.contextPath}/resources/img/event2.png"></a></li>
			</ul>
		</div>
	</div>
	 
	<%@ include file="/dogcat_footer.jsp"%>
</body>
</html>