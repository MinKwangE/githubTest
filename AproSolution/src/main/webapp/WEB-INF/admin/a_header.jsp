<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/user.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/qna.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/product.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/review.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
  <title>Document</title>
<style>
    body {
        text-align: center;
        /* margin: auto; */
    }

    .top {
    display: flex;
    justify-content: center; 
    align-items: center; 
    text-align: center;
    padding: 10px;
}

    /* 로그아웃 버튼 */
/*     #logout { */
/*         color: black; */
/*         padding: 12px 16px; */
/*         background-color: #c7dcde; */
/*         text-decoration: none; */
/*         margin-bottom: 30px; */
/*         margin-right: 20px; */
/*     } */

/*     #logout:hover { */
/*         background-color: #22668D; */
/*         color: white; */
/*         transition: background-color 0.3s ease; */
/*     } */

    /* navbar css */
    .dropbtn {
        background-color: #efefef;
        color: black;
        padding: 16px;
        font-size: 16px;
        width: 180px;
        border: none;
        cursor: pointer;
    }

    .dropdown-container {
        display: flex;
        justify-content: center;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 180px;
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: center;
    }

    .dropdown-content a:hover {
        background-color: #fae7d0;
        transition: background-color 0.2s ease;
        text-decoration: none;
        color : black;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #FF8551;
        color: white;
        transition: background-color 0.3s ease;
    }

/*     img { */
/*         margin-top: 30px; */
/*         margin: 0 auto; */
/*         padding-left: 110px; */
/*     } */

.adminimg {
    margin: 10px auto; 
    display: block;
    text-align: center;
}
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
  .imghom1 {
	float: right;
	text-align: right;
	margin-bottom: 10px;
}

.imghom {
	height: 30px;
	max-width: 100%;
	margin-top: 10px;
}
    
</style>
</head>
<script>
$(document).ready(function () {
	   $("#goHomeHeader").hide();
	        // fade in #toTop
	          $(window).scroll(function () {
	              if ($(this).scrollTop() > 50) {
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
$(document).ready(function () {
	   $("#toTop").hide();
	        // fade in #toTop
	          $(window).scroll(function () {
	              if ($(this).scrollTop() > 50) {
	                  $('#toTop').fadeIn();
	              } else {
	                  $('#toTop').fadeOut();
	              }
	          });

	          // scroll body to 0px on click
	          $('#toTop a').click(function () {
	        	  alert("로그아웃 되었습니다.");
	              // 이 부분에서 Main.tot 경로로 이동하도록 설정
	              window.location.href = 'logout.do';
	              return false;
	          });
	      });
</script>
<body>
    <div class="top">
    	<a href="adminMain.tot">
        <img class="adminimg" src="resources/img/adminLogo.png" width="300px">
        </a>
    </div>
    <div id="toTop">
        <a href="logout.do" onclick="gologout()" id="logout">로그<br>아웃</a>
</div>
    <div id="goHomeHeader">
      <a class="imghom1" onclick="gotohome()">
                    <img style="height : 30px!important;"src="${pageContext.request.contextPath}/resources/img/homebtn.png" alt="Logo" class="imghom">
                </a>
</div>
    <div class="dropdown-container">
        <div class="dropdown">
            <button class="dropbtn">회원관리</button>
            <div class="dropdown-content">
                <a href="userList.do">회원목록</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">상품관리</button>
            <div class="dropdown-content">
                <a href="adminProductInsert.tot">상품등록</a>
                <a href="getproductsList.pro">상품관리</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">주문관리</button>
            <div class="dropdown-content">
                <a href="a_listOrder.od">주문관리</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">공지사항</button>
            <div class="dropdown-content">
                <a href="a_getBoardList.board">공지</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">리뷰관리</button>
            <div class="dropdown-content">
                <a href="a_declarationList.rev">신고관리</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">Q&A관리</button>
            <div class="dropdown-content">
                <a href="a_getQnaList.qna">Q&A목록 및 수정</a> 
            </div>
        </div>
        
        <div class="dropdown">
            <button class="dropbtn">예약관리</button>
            <div class="dropdown-content">
                <a href="a_modifyReserve.rsv">예약현황</a> 
            </div>
        </div>
        </div>
         <div class="dropdown">
            <button class="dropbtn">창고관리</button>
            <div class="dropdown-content">
                <a href="a_getWarehouseList.warehouse">창고목록</a> 
            </div>
        </div>
        
        <br>
</body>
</html>