package egovframework.example.board.vo;

import java.sql.Date;


public class BoardVO {
	private int no; 
	private String title; 
	private String writer; 
	private String content; 
	private Date regdate; 
	private int cnt; 
	private String note;
	
	private String searchCondition; 
	private String searchKeyword;

	private int start;
	private int listcnt;
	
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
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

	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getListcnt() {
		return listcnt;
	}
	public void setListcnt(int listcnt) {
		this.listcnt = listcnt;
	}
	
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", writer=" + writer + ", content=" + content + ", regdate="
				+ regdate + ", cnt=" + cnt + ", note=" + note + ", searchCondition=" + searchCondition
				+ ", searchKeyword=" + searchKeyword + ", start=" + start + ", listcnt=" + listcnt + "]";
	}
	
	
	
}
