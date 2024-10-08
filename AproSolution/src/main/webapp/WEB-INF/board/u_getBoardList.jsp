<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="egovframework.example.board.vo.PagingVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../dogcat_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
  <style>



 @media ( max-width: 391px ) {
body{margin: 0 auto; padding: 0; min-width: 390px;  font-size: 10px; } 
td > .notice{font-size: 10px important; padding: 1px 1px 1px 1px important;} 
.move{margin: 0 5px !important; white-space:nowrap; overflow: hidden; text-overflow:ellipsis;width:150px; text-align:left; }  
select#sel {padding: 0.3rem 0.3rem; max-width: 15%; max-height: 30px; font-size: 10px;} 
input.mr-sm-2 { max-width: 30%; max-height: 30px; font-size: 10px;}
button.btn { max-width:50px; max-height:30px; font-size: 10px; margin:0 5px;}
h1{text-align:center; margin:5px;}
.container-md{padding: 0 15px;} 
}	

/* body{font-size:1rem;}    */
h1{text-align:center; margin:30px;}
#totalcount{text-align:right;}
table{width:100%;}
tr{height:50px;}
hr{border-top: 1px solid #9BCDD2;}
th, td{text-align:center;}

.move{
	color: #000;
    margin: 0 20px;
    text-decoration-line: none;
    box-shadow : none;
    outline : none;
	border : none;
	float:left;}
	
.move:hover{
	color:#FF8551;
    margin: 0 20px;
    text-decoration-line: none;
    box-shadow : none;
    outline : none;
	border : none; }
	
.btn{float: right;
 	width: 100px;
    max-width: 100px;
    height:40px;
    background-color: #FF8551;
    color: #fff;
    border: none;
    border-radius: 5px;}
    
.btn:hover {
    color: #fff;
    text-decoration: none;
     box-shadow : none;
    outline : none;
	border : none;}

.page-link {color: #FF8551;
    background-color: #fdfdfd;
    border: 1px solid #fde8df;}
    
.page-link:hover {    
    color: #ff5006;
    background-color: #fbdfdf;
    border: 1px solid #fde8df;}
    
.page-link:focus {
    z-index: 3;
    outline: 0;
    box-shadow: 0 0 0 0rem rgba(0,123,255,.25); }

.form-control {  
	box-shadow : none;
	 height:40px;
    border: 1px solid #FF8551;
    transition:none;
    max-width: 70%; }
    
.mr-sm-2{box-shadow : none;
	height:40px;
    border: 1px solid #FF8551;
    transition:none;
    max-width: 70%; }
    
.mr-sm-2:focus{border-color: #FF8551;
 	text-decoration-line: none;
    box-shadow : none;
    outline : none; }
    
.form-control:focus {
 	border-color: #FF8551;
 	text-decoration-line: none;
    box-shadow : none;
    outline : none; }
    
input[type=submit] {
    width: 60px;
    height:40px;
    max-width: 60px;
    background-color: #FF8551;
    border: none;
    border-radius: 5px; }
    
td > .notice {
    background-color: #f38da3;
    color: #fff;
    font-weight: bold;
    font-size: 11px;
    padding: 2px 3px 2px 3px;
    border-radius: 2px;}
    
.re{background-color:#fff8f8;}

.noti{
	color: #000;
    margin: 0 20px;
    text-decoration-line: none;
    box-shadow : none;
    outline : none;
	border : none;
	float:left; }

.size{width:100%;} 

.board-table tbody th{	
	border-bottom: 2px solid #AFD7DB;
	border-top: 2px solid #AFD7DB; }	
	
#sel{
border-radius: 0.25rem 0rem 0rem 0.25rem;
border-right: none;
}

input.mr-sm-2 {
border-radius: 0rem 0.25rem 0.25rem 0rem;
}
	
  </style>
  
  
</head>
<body>

<br><br><h1><b>공지사항</b></h1><br><br><br>
	
<div align="center" class="container-md div-table1">
	<form class="form-inline" action="/u_getBoardList.board" method="post">
	 	<select class="form-control" id="sel" name="searchCondition" style="display:inline-block!important;">
			<option value="${conditionMap['제목']}">제목</option>
			<option value="${conditionMap['내용']}">내용</option>
	    </select>
	    <input class="mr-sm-2" type="text" name="searchKeyword" placeholder="검색어를 입력하세요.">
		<button class="btn" type="submit">검색</button>
	</form>
  <br>
  <div class="size">
	<p id="totalcount">(전체 글:${paging.total })</p>
		<table class="board-table" >
			<tbody>
				<tr>
					<th width="10%">번호</th>
					<th width="50%">제목</th>
					<th width="10%">작성자</th>
					<th width="20%">작성일</th>
					<th width="10%">조회수</th>
				</tr>
		<c:choose>
			<c:when test="${boardList ne null }">
				<c:forEach var="board" items="${boardList }">	
				<tr <c:if test="${ not empty board.note}"> class="re" </c:if>>
					<td width="10%">
						<c:choose>
							<c:when test="${ board.note == 'y'}">
								<span class="notice">필독</span>
							</c:when>
							<c:otherwise>
								${board.no}
							</c:otherwise>
						</c:choose>
					</td>
					<td width="50%"><a class="move" href="<%=request.getContextPath() %>/u_getBoard.board?no=${board.no}" >${board.title}</a></td> 
					<td width="10%">${board.writer}</td>
					<td width="20%">${board.regdate}</td>
					<td width="10%">${board.cnt}</td>
				</tr>
				</c:forEach>
			</c:when>
		</c:choose>
			</tbody>
		</table>
<hr>
<br></div>
<!-- 페이징 처리 -->
				
				<colspan="5" style="text-align: center" color="green">
						<ul class="pagination justify-content-center">

							<c:if test="${paging.startPage != 1 }">
								<li class="page-item"><a class="page-link"
									href="u_getBoardList.board?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}"><span aria-hidden="true">&laquo;</span></a>
								</li>
							</c:if>


							<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p == paging.nowPage }">
										<li class="page-item"><b class="page-link">${p }</b></li>
									</c:when>
									<c:when test="${p != paging.nowPage }">
										<li class="page-item"><a class="page-link"
											href="u_getBoardList.board?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
									</c:when>
								</c:choose>
							</c:forEach>

							<c:if test="${paging.endPage != paging.lastPage}">
								<li class="page-item"><a class="page-link"
									href="u_getBoardList.board?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}"> <span aria-hidden="true">&raquo;</span></a>
								</li>
							</c:if>
						</ul>
					
				<br><br>
			<!-- 페이징 처리 끝 -->


	</div>
	
	<%@ include file="/dogcat_footer.jsp"%>
</body>
</html>