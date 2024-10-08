package egovframework.example.board.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;
import egovframework.example.board.vo.BoardVO;

@Repository("BoardDAOMybatis")
public class BoardDAOMybatis extends EgovAbstractMapper{
	
	//CRUD 기능의 메소드 구현
	//글등록
	public int insertBoard(BoardVO vo) {
		return insert("BoardDAO.insertBoard", vo);
	}
	
	//글수정
	public int updateBoard(BoardVO vo) {
		return update("BoardDAO.updateBoard", vo);
	}
	
	//글삭제
	public int deleteBoard(BoardVO vo) {
		return delete("BoardDAO.deleteBoard", vo);
	}
	
	//글상세 조회
	public BoardVO getBoard(BoardVO vo) {
		return selectOne("BoardDAO.getBoard", vo);
	}
	
	//글목록 조회
	public List<BoardVO> getBoardList(BoardVO vo) {
		return selectList("BoardDAO.getBoardList", vo);
	}
	
	//전체 페이지 수 조회
	public int countBoard(BoardVO vo) {
		return selectOne("BoardDAO.countBoard", vo);
	}
	
	//조회수 카운트
	public int updateCnt(BoardVO vo) {
		return update("BoardDAO.updateCnt", vo);
	}
	
}
