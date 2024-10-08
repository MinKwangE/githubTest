package egovframework.example.board.controller;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import egovframework.example.board.service.BoardService;
import egovframework.example.board.vo.BoardVO;
import egovframework.example.board.vo.PagingVO;


@Controller
@SessionAttributes("board")
public class BoardController {
	int cntChk = 0;

	@Resource(name="BoardService")
	private BoardService boardService;

	// 게시판 검색 처리
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>(); 
		conditionMap.put("내용", "CONTENT"); 
		conditionMap.put("제목", "TITLE");
		return conditionMap;  
	
	}

	// 게시판 등록
	@RequestMapping(value = "/a_insertBoard.board", method = RequestMethod.POST)
	public String insertBoard(BoardVO vo) throws IllegalStateException, IOException {
		

		boardService.insertBoard(vo);
		return "redirect:a_getBoardList.board";
	}

	@RequestMapping(value = "/a_insertBoard.board", method = RequestMethod.GET)
	public String insertView() throws IllegalStateException, IOException {
		return "board/a_insertBoard";
	}

	// 게시판 수정
	@RequestMapping("/updateBoard.board")
	public String updateBoard(@ModelAttribute("board") BoardVO vo, HttpSession session) throws IllegalStateException, IOException {
		
		boardService.updateBoard(vo);
		return "redirect:/a_getBoard.board?no="+vo.getNo();
	}

	// 게시판 삭제
	@RequestMapping("/deleteBoard.board")
	public String deleteBoard(BoardVO vo, HttpServletRequest request) {
		
		boardService.deleteBoard(vo);
		return "redirect:a_getBoardList.board";
	}

	// 게시판 상세 조회
	@RequestMapping("/u_getBoard.board")
	public String getBoard(@RequestParam(value="error", required = false) String error,BoardVO vo, Model model) {
	
		BoardVO mboard = boardService.getBoard(vo);
		if (!(error==null || error.equals(""))) cntChk = 0;
		else if(cntChk <= 0) boardService.updateCnt(mboard);
		else cntChk = 0;
	
		model.addAttribute("board", mboard);
		return "board/u_getBoard";
	}

	// 게시판 목록
	@RequestMapping("/u_getBoardList.board")
	public String getBoardListPost(PagingVO pv ,BoardVO vo, Model model, @RequestParam(value = "nowPage", required = false) String nowPage) {

		System.out.println("글 목록 검색 처리");
		String cntPerPage = "10";
		if (vo.getSearchCondition() == null)
			vo.setSearchCondition("TITLE");
		else
			vo.setSearchCondition(vo.getSearchCondition());
		if (vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");
		else
			vo.setSearchKeyword(vo.getSearchKeyword());
		
		int total = boardService.countBoard(vo);
		System.out.println("total: "+total);
		if (nowPage == null) {
			nowPage = "1"; 
		}
		pv = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		System.out.println(pv);
		model.addAttribute("paging", pv);
		vo.setStart(pv.getStart());
		vo.setListcnt(Integer.parseInt(cntPerPage));
                           
		model.addAttribute("searchKeyword", vo.getSearchKeyword());
		model.addAttribute("searchCondition", vo.getSearchCondition());
		model.addAttribute("boardList", boardService.getBoardList(vo));
		
		return "board/u_getBoardList";

	}

	// 게시판 상세 조회
		@RequestMapping("/a_getBoard.board")
		public String getaBoard(@RequestParam(value="error", required = false) String error,BoardVO vo, Model model) {
			
			BoardVO mboard = boardService.getBoard(vo);
		
			model.addAttribute("board", mboard);
			return "board/a_getBoard";
		}

		// 게시판 목록
		@RequestMapping("/a_getBoardList.board")
		public String getaBoardListPost(PagingVO pv ,BoardVO vo, Model model, @RequestParam(value = "nowPage", required = false) String nowPage) {

			System.out.println("글 목록 검색 처리");
			String cntPerPage = "10";
			if (vo.getSearchCondition() == null)
				vo.setSearchCondition("TITLE");
			else
				vo.setSearchCondition(vo.getSearchCondition());
			if (vo.getSearchKeyword() == null)
				vo.setSearchKeyword("");
			else
				vo.setSearchKeyword(vo.getSearchKeyword());
			
			int total = boardService.countBoard(vo);
			System.out.println("total: "+total);
			if (nowPage == null) {
				nowPage = "1"; 
			}
			pv = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			System.out.println(pv);
			model.addAttribute("paging", pv);
			vo.setStart(pv.getStart());
			vo.setListcnt(Integer.parseInt(cntPerPage));
	                               
			model.addAttribute("searchKeyword", vo.getSearchKeyword());
			model.addAttribute("searchCondition", vo.getSearchCondition());
			model.addAttribute("boardList", boardService.getBoardList(vo));
			return "board/a_getBoardList";
		}
}