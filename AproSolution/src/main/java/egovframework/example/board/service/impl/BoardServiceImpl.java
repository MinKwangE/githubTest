package egovframework.example.board.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.board.service.BoardService;
import egovframework.example.board.vo.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Resource(name="BoardDAOMybatis")
	private BoardDAOMybatis boardDAO;

	@Override
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);

	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);

	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);

	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}

	@Override
	public int countBoard(BoardVO vo) {
		return boardDAO.countBoard(vo);
	}

	@Override
	public void updateCnt(BoardVO vo) {
		boardDAO.updateCnt(vo);

	}


}
