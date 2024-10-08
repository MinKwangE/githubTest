<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="egovframework.example.board.vo.PagingVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../admin/a_header.jsp" %>
<!DOCTYPE html>
<html>


<title>글쓰기</title>
 <style>

 h1{text-align:center; margin:30px;}
.form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #22668D;
    outline: 0;
    box-shadow: none;
}

	.container-fluid{     
	  display: flex;
 	 justify-content: center;
	}
	
	textarea{resize:none;}
 .input-group-text{width:70px;  
	justify-content: center;
    align-items: center;
    display: flex;}
  
.form-control {height: 40px;}

 .input-group-text { color: #ffffff;
    background-color: #22668D;
    border: 1px solid #22668D;
	}
	
	.form-control:disabled, .form-control[readonly] {
  	background-color: #f5c4b736;
  	border: 1px solid #22668D;
  	opacity: 1;
	}
	
 	.form-control{ border: 1px solid #22668D;}
 
	.write{
	width: 70px;
 	height:40px;
    background-color: #fff;
    color: #9BCDD2;
    border: 1px solid #9BCDD2;
    border-radius: 5px;}
    
    .write:hover{color: #9BCDD2;}
	
	.list{
	width: 70px;
 	height:40px;
    background-color: #fff;
    color: #22668D;
    border: 1px solid #22668D;
    border-radius: 5px;
	}    
	
	.list:hover{ color: #22668D;}
	
 	form{width:57%; }

/* ---체크박스 */

.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
}

.checks {position: relative;}
.checks input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0
}

.checks input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: ' ';
  display: inline-block;
  width: 25px;  /* 체크박스의 너비를 지정 */
  height: 25px;  /* 체크박스의 높이를 지정 */
  line-height: 25px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 2px solid #22668D;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.checks input[type="checkbox"] + label:active:before,
.checks input[type="checkbox"]:checked + label:active:before {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}


.checks input[type="checkbox"]:checked + label:before {  /* 체크박스를 체크했을때 */ 
  content: '\2714';  /* 체크표시 유니코드 사용 */
  color: #22668D;
  text-shadow: 1px 1px #fff;
  background: #e9ecee;
  border-color: #22668D;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
}


.checks.etrans input[type="checkbox"] + label {
  padding-left: 30px;
}
.checks.etrans input[type="checkbox"] + label:before {
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 0;
  opacity: .6;
  box-shadow: none;
  border-color: #22668D;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}


.checks.etrans input[type="checkbox"]:checked + label:before {
  position: absolute;
  content: "";
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity:1; 
  background: transparent;
  border-color:transparent #22668D #22668D transparent;
  border-top-color:transparent;
  border-left-color:transparent;
  -ms-transform:rotate(45deg);
  -webkit-transform:rotate(45deg);
  transform:rotate(45deg);
}

.no-csstransforms .checks.etrans input[type="checkbox"]:checked + label:before {

  content: "\2714";
  top: 0;
  left: 0;
  width: 21px;
  line-height: 21px;
  color: #22668D;
  text-align: center;
  border: 2px solid #22668D;
}

 button:focus {outline: 0px auto -webkit-focus-ring-color;}

 </style>
<body>
<h1><b>글쓰기</b></h1><br><br>

<div class="container-fluid">
  <form action="/a_insertBoard.board" method="post" enctype="multipart/form-data">
      
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">제목</span>
     
</div>
  
      <input type="text" class="form-control" name="title" placeholder="제목을 입력하세요." required>      
    </div>
    
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">작성자</span>
      </div>
      <input type="text" class="form-control innm" name="writer" value="관리자"  readonly>      
    </div>
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">내용</span>
      </div>
      <textarea class="form-control" rows="20" id="comment" name="content"></textarea>      
    </div>
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">파일</span>
      </div>
      
      <input type="file" class="form-control innm" name="uploadFile">   
     
      <br>   </div><br>
          <div class="board-form-btn">
         
         
    <div class="checks etrans">
  <input type="checkbox" id="ex_chk3" name="note"  value="y" />
  <label for="ex_chk3">상단에 표시하기</label>
      </div>
	<br>
  <button type="submit" value="글등록" class="write">등록</button>&nbsp;&nbsp;

  <button type="button" value="글목록" class="list" onclick="location.href='/a_getBoardList.board'">목록</button>
 
</div>  </form>
		</div><br><br>

   
</body>
</html>