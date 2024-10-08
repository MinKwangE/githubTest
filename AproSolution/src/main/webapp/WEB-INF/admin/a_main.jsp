<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="./a_header.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.js"></script>
<head>
    <meta charset="UTF-8">
    <title>쇼핑몰 관리자 페이지</title>
     <style>
        body {
            text-align : center;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
        }

        .section {
        	width : 48%;
            border: 3px solid #22668d;
            padding: 10px;
            margin-bottom: 20px;
        }
        
        .sectionTop{
        	width : 100%;
            border: 3px solid #22668d;
            padding: 10px;
            margin-bottom: 30px;
        }
        
        .table-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .table-container table {
            width: 100%; 
            margin-bottom: 20px;
        }

        a {
            display: block;
            text-align: right;
            text-decoration: none;
            color: #22668d;
        }

        a:hover {
            text-decoration: none;
            color : #22668D;
        }
        
        tr{
        	width : 100%;
        }
        
        .titleTr{
        	border-bottom : 2px solid #AFD7DB;
        }
        
        .ellipsisQna {
	display : inline-block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	word-break: break-all;
	width: 190px;
	vertical-align : bottom;
}
    </style>
    <script>
        $(document).ready(function () {
            $('.content_substr').each(function () {
                var length = 5; 

                $(this).each(function () {
                    if ($(this).text().length >= length) {
                        $(this).text($(this).text().substr(0, length) + '...'); 
                    }
                });
            });
            
            
        });
        
        $(document).ready(function() {
        $('.userIdjum').each(function () {
            var length = 7; 

            $(this).each(function () {
                if ($(this).text().length >= length) {
                    $(this).text($(this).text().substr(0, length) + '...'); 
                }
            });
        });
        });
    </script>
</head>

<body>
    <div class="container">
        <div class="table-container">
            <div class="sectionTop">
                <h2><strong>주문목록</strong></h2>
                <table>
                    <thead>
                        <tr class="titleTr">
                            <th>주문번호</th>
                            <th>주문건수</th>
                            <th>주문금액</th>
                            <th>주문날짜</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${orderList}" var="order">
                            <tr>
                                <td>${order.od_num}</td>
                                <td>${order.od_payname}</td>
                                <td>${order.od_payprice}</td>
                                <td>${order.od_date}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="a_listOrder.od">더 보기</a>
            </div>
            </div>
<div class="table-container">
            <div class="section">
                <h2><strong>회원목록</strong></h2>
                <table>
                    <thead>
                        <tr class="titleTr">
                            <th>아이디</th>
                            <th>이름</th>
                            <th>전화번호</th>
                            <th>가입일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${userList}" var="user">
                            <tr>
                                <td class="userIdjum">${user.id}</td>
                                <td>${user.name}</td>
                                <td>${user.phone}</td>
                                <td>${user.regdate}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="userList.do">더 보기</a>
            </div>
        

        
            <div class="section">
                <h2><strong>질문목록</strong></h2>
                <table>
                    <thead>
                        <tr class="titleTr">
                            <th>글번호</th>
                            <th>작성자</th>
                            <th>제목</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${qnaList}" var="qna">
                            <tr>
                                <td>${qna.qna_seq}</td>
                                <td>${qna.qna_writer}</td>
                                <td class="ellipsisQna">${qna.qna_title}</td>
                                <td>${qna.qna_date}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="a_getQnaList.qna">더 보기</a>
            </div>
            </div>
<div class="table-container">
            <div class="section">
                <h2><strong>예약목록</strong></h2>
                <table>
                    <thead>
                        <tr class="titleTr">
                            <th>예약번호</th>
                            <th>이름</th>
                            <th>체크인</th>
                            <th>체크아웃</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${reserveList}" var="reservation">
                            <tr>
                                <td>${reservation.reserve_no}</td>
                                <td>${reservation.name}</td>
                                <td>${reservation.checkInDate}</td>
                                <td>${reservation.checkOutDate}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="a_modifyReserve.rsv">더 보기</a>
            </div>
        

        
            <div class="section">
                <h2><strong>신고목록</strong></h2>
                <table>
                    <thead>
                        <tr class="titleTr">
                            <th>신고번호</th>
                            <th>신고내용</th>
                            <th>신고처리</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${declarationList}" var="declaration">
                            <tr>
                                <td>${declaration.rep_seq}</td>
                                <td class="content_substr">${declaration.rep_content}</td>
                                <td>
                                    <c:if test="${declaration.rep_hide == 'Y'}">
                                        처리안함
                                    </c:if>
                                    <c:if test="${declaration.rep_hide == 'N'}">
                                        처리됨
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="a_declarationList.rev">더 보기</a>
            </div>
        </div>
        </div>
    
</body>
</html>