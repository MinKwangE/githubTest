<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resources/css/admin_header_footer.css">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dog Cat Punch Main</title>
    <style>
        body, html {
  font-family: 'Nanum Gothic', sans-serif !important;
}	
        
        
        .header-menuBtn:focus {outline: 0px -webkit-focus-ring-color !important;}

        #headerSection{margin-bottom: 10px;}
        div#headerSection a{font-size: 10pt; color: black;}
        .headerSubSection{color: #eee}

        a.header-brand{padding-left: 25px;}
        nav.header-nav{padding: 0 !important;}
        .header-nav-item{padding: 5px;}
        a.header-icon img{width: 45px; }
        a.header-icon{margin-left: 10px;}

        
        .header-searchForm{margin:0; padding: 0; border: 2px solid #FF8551; display:inline-block;}
        .header-searchInput{padding: 5px 20px; border: none; flex-grow: 4;}
        .header-searchBtn{font-weight: bolder; flex: auto; flex-grow: 1; border-radius: 0; height: 25px; background-color : white; border : none;}
        .header-searchInput:focus{box-shadow: none !important;}
        .header-searchButton{border : none; background-color: white;}

        #headerSubSection{margin-top: 30px;}
        .header-menuBox{position : relative; display : inline-block;}
        
        span button.header-menuBtnCg:hover {font-weight: bolder; background-color: #FF8551; color: white;}

             
        
        button.header-menuBtn:hover{font-weight: bolder; background-color: #FF8551; color: white; outline: none;}
        #category a:hover .header-menuBtnCg{font-weight: bolder; background-color: #FF8551; color: white;} 
        
        
        #category a:hover {background-color : #FAF0E4; font-weight: bold;}
       
        /* 캐러셀 */
        .carouselImg{width: 100%; height: 400px;}
    #toTop {
 display: flex;
    position: fixed;
    bottom: 130px;
    right: 0;
    z-index: 999;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    background: #22668D;
    color: #fff;
    justify-content: center;
    align-items: center;
    margin-right : 15px;
}

#goHomeHeader{
   display: flex;
    position: fixed;
    bottom: 50px;
    right: 0;
    z-index: 999;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    background: #22668D;
    color: #fff;
    justify-content: center;
    align-items: center;
    margin-right : 15px;
}

#toTop a {
     width: 100%;
    display: block;
    text-align: center;
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    z-index: 999;
  

  /* transition */
  -webkit-transition: 1s;
  -moz-transition: 1s;
  transition: 1s;
}
        #goHomeHeader a {
     width: 70%;
    display: block;
    text-align: center;
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    z-index: 999;
    cursor : pointer;
     

  /* transition */
  -webkit-transition: 1s;
  -moz-transition: 1s;
  transition: 1s;
}

.header-searchInput:focus{
	outline : none;
	}
	
	
	 @media screen and (max-width:391px) {
	 .carouselImg{width: 100%; height: 131px;}
    	html{padding: 0; margin: 0;}
    	header{ padding: 0; }
    	#header3{
    		position : fixed;
    		z-index : 100000;
    		bottom:0;
    		width : 100%;
    		display : flex;
    		justify-content : space-between;
    		background-color : #FF8551;
    	}
    	
    	a.header-icon{margin-left: 5px;}
    	
    	a.header-icon img{width: 34px; }
    	 button.header-menuBtn {background-color: #FF8551; border: none; color:white;  text-align: center; cursor : pointer; padding: 10px 20px; font-size: 10pt; outline: none;}
    	 .header-searchSpan{ padding: 10px;display : none; }
    	 #category a {display : block; position:relative; z-index : 99999; text-decoration : none; bottom:192px; color: black; padding : 12px 20px; background-color: #f7f7f7}
    	 #category {display : none; position : absolute;  z-index : 99999; font-weight: 400; min-width: 94px;}
    }
    
    @media (min-width:392px){
    
        html{padding: 0; margin: 0;}
        header{padding: 0px 170px;}
        span button.header-menuBtnCg {  width :200px; z-index : 9999; background-color: #ffffff; color: #000; }
        button.header-menuBtn {background-color: white; border: none; z-index : 9999; width :200px; text-align: center; cursor : pointer; padding: 10px; font-size: 12pt; outline: none;}
        .header-searchSpan{margin: auto 20px; padding: 10px; width: 400px;}
        #category a {display: block; text-decoration : none; color: black; padding : 12px 20px; background-color: #f7f7f7; z-index : 9999;}
        #category {display : none; position : absolute; z-index : 9999; font-weight: 400; min-width: 200px;}
        }

    </style>
    <script src="${pageContext.request.contextPath}/resources/js/user.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/qna.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/product.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/review.js"></script>
    <script>
    function loginCheck(event) {
        var isLoggedIn = <%= session.getAttribute("userId") != null %>;

        if (!isLoggedIn) {
            event.preventDefault(); 
            alert("로그인이 필요한 서비스입니다."); 
            window.location.href = "login.do";
        }
    }
    $(document).ready(function(){
        // hide #toTop first
        $("#toTop").hide();

        // fade in #toTop
        $(function () {
          $(window).scroll(function () {
              if ($(this).scrollTop() > 100) {
                  $('#toTop').fadeIn();
              } else {
                  $('#toTop').fadeOut();
              }
          });

          // scroll body to 0px on click
          $('#toTop a').click(function () {
              $('body,html').animate({
                  scrollTop: 0
              }, 800);
              return false;
          });
        });
   });

   $(document).ready(function () {
   $("#goHomeHeader").hide();
        // fade in #toTop
          $(window).scroll(function () {
              if ($(this).scrollTop() > 100) {
                  $('#goHomeHeader').fadeIn();
              } else {
                  $('#goHomeHeader').fadeOut();
              }
          });

          // scroll body to 0px on click
          $('#goHomeHeader a').click(function () {
              // 이 부분에서 Main.tot 경로로 이동하도록 설정
              window.location.href = 'Main.tot';
              return false;
          });
      });
 
    
</script>
    
</head>
<body>
<div id="toTop">
      <a href="#top">맨 위로</a>
</div>
<div id="goHomeHeader">
      <a class="imghom1" onclick="gotohome()">
                    <img src="${pageContext.request.contextPath}/resources/img/homebtn.png" alt="Logo" class="imghom">
                </a>
</div>
<section id="wrapper">
<header style="border-bottom : 2px solid #FF8551;">
    <c:choose>
        <c:when test="${userId eq null}">
            <div id="headerSection">
                <nav class="navbar justify-content-end">
                    <ul class="nav navbar-right">
                        <a class="header-nav-item" href="login.do">로그인</a><p class="headerSubSection">|</p>
                        <a class="header-nav-item" href="joinForm.do">회원가입</a><p class="headerSubSection">|</p>
                        <a class="header-nav-item" href="u_getQnaList.qna">고객센터</a>
                    </ul>
                </nav>
            </div>
        </c:when>
        <c:when test="${userId ne null }">
            <div id="headerSection">
                <nav class="navbar justify-content-end">
                    <ul class="nav navbar-right">
                        <c:if test="${userId eq 'admin' }">
                            <a class="header-nav-item" href="adminMain.tot">관리자용 메인 페이지로</a><p class="headerSubSection">|</p>
                        </c:if>
                         <a class="header-nav-item" href="logout.do" onclick="alert('로그아웃 되었습니다.');">로그아웃</a><p class="headerSubSection">|</p>
                        <a class="header-nav-item" href="u_getQnaList.qna">고객센터</a>
                    </ul>
                </nav>
            </div>
        </c:when>
    </c:choose>
    <div id="header2">
        <nav class="navbar">
            <ul class="nav navbar-left">
                <a class="header-brand" href="Main.tot">
                    <img src="${pageContext.request.contextPath}/resources/img/textlogo.png" alt="Logo" style="width: 150px;">
                </a>
                <span class="header-searchSpan ">
                    <form class="header-searchForm" action="/headerSearch.pro">
                        <input class="header-searchInput" type="text" name="searchKeyword" placeholder="검색어를 입력해주세요">
                        <button class="header-searchButton" type="submit">
                            <img class="header-searchBtn"alt="Submit Form" src="${pageContext.request.contextPath}/resources/img/search2.png"/>
                        </button>
                    </form>
                </span>
            </ul>
            <ul class="nav navbar-right">
                <a class="header-nav-item header-icon" href="myPage.tot">
                    <img src="${pageContext.request.contextPath}/resources/img/user.png" onclick="loginCheck(event);" alt="마이페이지" >
                </a>
                <a class="header-nav-item header-icon" href="getLikeList.pro">
                    <img src="${pageContext.request.contextPath}/resources/img/favorite.png" onclick="loginCheck(event);" alt="찜" >
                </a>
                <a class="header-nav-item header-icon" href="getCart.cart">
                    <img src="${pageContext.request.contextPath}/resources/img/cart.png" onclick="loginCheck(event);" alt="장바구니" >
                </a>
            </ul>
        </nav>
    </div>
    <div id="header3" class="header-menuBox">
            <button class="header-menuBtn header-menuBtnCg" onclick="category();" >카테고리</button>
            <div class="header-dropdown-content" id="category" style="display : none;">
                <a href="u_productsList.pro?pro_type=사료">사료</a>
                <a href="u_productsList.pro?pro_type=간식">간식</a>
                <a href="u_productsList.pro?pro_type=장난감">장난감</a>
                <a href="u_productsList.pro?pro_type=옷">옷</a>
            </div>
        <button class="header-menuBtn" onclick="location.href='getReviewList.rev'">구매후기</button>
        <button class="header-menuBtn" onclick="location.href='u_getBoardList.board'">공지사항</button>
        <button class="header-menuBtn" onclick="location.href='dogcatDelLuna.rsv'">독켓델루나</button>
        <button class="header-menuBtn" onclick="location.href='u_getWarehouseList.warehouse'">창고관리</button>
        
    </div>
</header>
<script>
	function category(){
		var con = document.getElementById("category");
		
		if(con.style.display == "none"){
			con.style.display = "block";
		} else if(con.style.display == "block") {
			con.style.display = "none";
		}
	}
</script>
</body>
</html>