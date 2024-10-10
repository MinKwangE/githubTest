<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="egovframework.example.board.vo.PagingVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../admin/a_header.jsp" %>


  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>

	.input-group-text{width:70px;  
	justify-content: center;
    align-items: center;
    display: flex;}
    
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
	#divImg {display:block; margin:0 0 0 10px; padding:0px; word-break:break-all; !important}
	form{width:57%; }
	
	.list{
	float: right;
	width: 70px;
 	height:40px;
   	background-color: #fff;
    color: #0193ff;
    border: 1px solid #0193ff;
    border-radius: 5px;
	}  
	  
	.list:hover{color: #0193ff;}
	
	#del{width: 300px;
 	height:40px;
    background-color: #fff;
    color: #22668D;
    border: 1px solid #22668D;
    border-radius: 5px;
    }
   
    .btn_wrap{text-align:center;}
    
    .cel{width: 70px;
 	height:40px;
     background-color: #fff;
    color: red;
    border:1px solid red;
    border-radius: 5px;}
    
    .mo{width: 70px;
 	height:40px;
    background-color: #fff;
    color: #22668D;
    border: 1px solid #22668D;
    border-radius: 5px;}
	textarea{resize:none;}
	 button:focus {outline: 0px auto -webkit-focus-ring-color;}
</style>

<body>

<br><br><br>
<div class="container-fluid" >
 <form name="fm" action="/updateBoard.board" method="post" enctype="multipart/form-data">
  <input type="hidden" name="no" value="${board.no}">

    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">제목</span>
      </div>
      <input type="text" class="form-control innm" name="title" value="${board.title}" >      
    </div>
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">작성자</span>
      </div>  
      <input type="text" class="form-control innm" name = "writer" value="${board.writer}" readonly >      
       </div>

   <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">등록일</span>
      </div>
      <input type="text" class="form-control innm" name="regdate" value="${board.regdate}" readonly >      
    </div>
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">조회수</span>
      </div>
      <input type="text" class="form-control innm" name="cnt" value="${board.cnt}" readonly >      
    </div>


	<div class="input-group mb-3">
      <div class="input-group-prepend">
          <span class="input-group-text">파일</span>
         
      </div>
     <c:choose>
   		<c:when test="${ empty board.filename }">
			 <input type="file" class="form-control innm" name="uploadFile">
   		</c:when>
   		<c:otherwise>
   
<img id="divImg" style="max-width:400px;" src="${pageContext.request.contextPath}/resources/img/${board.filename}" />
<pre>
	
   <button type="button" id="del" onclick="deleteFile('${board.filename}',${board.no})"><b>파일삭제</b></button></pre>
 
	   
			<script>
			function deleteFile(filename, no){
			     	 location.href = "/deleteFile.board?filename="+filename+"&no="+no;
			  }
			</script> 
   		</c:otherwise>
   		</c:choose>
   
    </div>
    
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">내용</span>
      </div>
      <textarea class="form-control innm" rows="20" id="comment" name="content" >${board.content}</textarea>      
    </div>  
   
<div class="btn_wrap">
hello

<button type="submit" value="글수정" class="mo" ><b>수정</b></button>&nbsp;&nbsp;
<button type="button" value="글삭제" class="cel" onclick="boardDelFnc(${board.no})"><b>삭제</b></button>
<script>
function boardDelFnc(delno){
        if(confirm('삭제하시면 복구할수 없습니다. \n 정말로 삭제하시겠습니까??')){
        	alert("삭제되었습니다.");        	
        	location.href='/deleteBoard.board?no='+delno;
        } else{
        	alert('취소되었습니다.');
            return false;
        }
}
$(".mo").click(function() {
	alert("수정완료되었습니다") ;
	
});
</script>
<button type="button" value="글목록" class="list" onclick="location.href='/a_getBoardList.board'">목록</button>

</div>
	</form> </div>
<br><br>
</body>
</html>