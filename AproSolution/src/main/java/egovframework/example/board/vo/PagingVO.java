package egovframework.example.board.vo;

public class PagingVO {
   
   // 현재페이지, 시작페이지, 끝페이지, 게시글 총 갯수, 한 페이지에 보여지는 글 갯수, 마지막페이지, 
   // SQL쿼리에 쓸 offset
   private int nowPage, startPage, endPage, total, cntPerPage, lastPage, start;
//   private int nowPage=1, startPage=1, endPage=1, total =0, cntPerPage = 10, lastPage= 0, start;
   private int cntPage; // 하단에 보여질 페이지 클릭할 수 있는 버튼 수
//   private int cntPage = 1;
   private String searchCondition;
   private String searchKeyword;
   
   public PagingVO() {}
   
   public PagingVO(int total, int nowPage, int cntPerPage) { //0, 1 , 10
      setNowPage(nowPage); //v
      setTotal(total);//v
      setCntPerPage(cntPerPage);//v
      calcLastPage(total, cntPerPage);//v
      calcStartEndPage(nowPage, cntPage);
      calcStartEnd(nowPage, cntPerPage);
   }
   
   // 제일 마지막 페이지 계산 62
      public void calcLastPage(int total, int cntPerPage) { //50, 10
         if(total % cntPerPage > 0) {
        	 System.out.println("total % cntPerPage if출력");
            setLastPage(total /cntPerPage+1);
            if(total /cntPerPage+1 > 5) {
               setCntPage(5);
            } else {
            	setCntPage(total /cntPerPage+1);
            }
         } else {
        	 System.out.println("total % cntPerPage else출력");
            setLastPage(total /cntPerPage); //
            if(total /cntPerPage > 5) {
               setCntPage(5);
            } else {
            	setCntPage(total /cntPerPage);
            }
         }
      }
   // 시작, 끝 페이지 계산
   public void calcStartEndPage(int nowPage, int cntPage) { //1,1
      if(cntPage%2 == 1) {
         if(nowPage <= (cntPage/2+1)) { //페이지초반
            setStartPage(1);
            setEndPage(cntPage);
         }else if(nowPage > lastPage-(cntPage/2)){ //페이지 말단
            setStartPage(lastPage-(cntPage-1));
            setEndPage(lastPage);
         }else {
            setStartPage(nowPage - (cntPage/2)); //페이지 중단
            setEndPage(nowPage + (cntPage/2));
         }
      }else {
         if(nowPage <= (cntPage/2+1)) {
            setStartPage(1);
            setEndPage(cntPage);
         }else if(nowPage > lastPage-(cntPage/2)){
            setStartPage(lastPage-(cntPage-1));
            setEndPage(lastPage);
         }else {
            setStartPage(nowPage - (cntPage/2));
            setEndPage(nowPage + (cntPage/2-1));
         }
         
      }
   }
   
   // DB 쿼리에서 사용할 start 값 계산
   public void calcStartEnd(int nowPage, int cntPerPage) {
      if(nowPage<=1) setStart(0);
      else setStart(nowPage * cntPerPage - cntPerPage);
   }
   
   public int getNowPage() {
      return nowPage;
   }
   public void setNowPage(int nowPage) {
      this.nowPage = nowPage;
   }
   public int getStartPage() {
      return startPage;
   }
   public void setStartPage(int startPage) {
      this.startPage = startPage;
   }
   public int getEndPage() {
      return endPage;
   }
   public void setEndPage(int endPage) {
      this.endPage = endPage;
   }
   public int getTotal() {
      return total;
   }
   public void setTotal(int total) {
      this.total = total;
   }
   public int getCntPerPage() {
      return cntPerPage;
   }
   public void setCntPerPage(int cntPerPage) {
      this.cntPerPage = cntPerPage;
   }
   public int getLastPage() {
      return lastPage;
   }
   public void setLastPage(int lastPage) {
      this.lastPage = lastPage;
   }
   public int getStart() {
      return start;
   }
   public void setStart(int start) {
      this.start = start;
   }
   
   
   public int getCntPage() {
      return cntPage;
   }

   public void setCntPage(int cntPage) {
      this.cntPage = cntPage;
   }

   public String getSearchCondition() {
      return searchCondition;
   }
   public void setSearchCondition(String searchCondition) {
      this.searchCondition = searchCondition;
   }
   public String getSearchKeyword() {
      return searchKeyword;
   }
   public void setSearchKeyword(String searchKeyword) {
      this.searchKeyword = searchKeyword;
   }
   @Override
   public String toString() {
      return "PagingVO [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total=" + total
            + ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", cntPage=" + cntPage + "]";
   }
}