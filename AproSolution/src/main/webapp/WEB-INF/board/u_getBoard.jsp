<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="egovframework.example.board.vo.PagingVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../dogcat_header.jsp" %>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>


#articleForm {width: 85%; margin: 50px auto; text-align:center;}
.title {
	position: relative;
	text-align: left;
	padding: 15px 5px;
	border-top: 2px solid #22668D;
	background: #f7f7f7;
	font-weight: 700;
	font-size: 20px;}
	

.articleinfo{text-align: left; border-top: 1px solid #bababa; padding: 5px;}

.info, .info2{display: inline-block;}

.info2 {margin-left: 10px; float: right;}

#articleContentArea {
	border: none;
	margin-top: 2px;
	text-align: left;
 	overflow: auto; 
	border: 1px solid #bababa;
	padding: 10px 10px ;}

.list{
	float: right;
	width: 70px;
 	height:40px;
    max-width: 70px;
    background-color: #fff;
    color: #FF8551;
    border:1px solid #FF8551;
    border-radius: 5px;}  

   .divImg{display: block;
       max-width: 400px;
    margin: 0 auto;
    } 
   
   button:focus {outline: 0px auto -webkit-focus-ring-color;}
 @media ( max-width: 391px ) {
body{margin: 0 auto; padding: 0; min-width: 390px;  font-size: 10px !important; }
.divImg{width:300px; height:auto;}
.list{width: 50px !important; height:30px !important; font-size: 10px !important;}}
</style>

<body>
    <div id="articleForm">
    <div class="title">
        ${board.title}
    </div>
    <div class="articleinfo">
        <div class="info">  ${board.writer} </div>
        <div class="info2">조회수 : ${board.cnt}</div>&nbsp;
        <div class="info2">${board.regdate}</div>&nbsp;
    </div>

    <div id="articleContentArea">
   		<c:if test="${not empty board.filename }">
	   		<img class="divImg" src="/resources/img/${board.filename}">
   		</c:if>
         <br>  <pre>${board.content}</pre>
    </div>
    

  	 <br>
	<div class="btn">

	<button type="button" value="글목록" class="list" onclick="location.href='/u_getBoardList.board'">목록</button>
   <br><br>
</div>



	   </div><br><br>
	<%@ include file="/dogcat_footer.jsp"%>
</body>
</html>