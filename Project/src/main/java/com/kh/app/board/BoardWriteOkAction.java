package com.kh.app.board;

import com.kh.app.board.dao.BoardDAO;
import com.kh.app.board.dao.BoardDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardWriteOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		// dao에서 insert -> insertBoard();
		BoardDAO bdao = new BoardDAO();
		BoardDTO board = new BoardDTO();
		
		String boardtitle = request.getParameter("boardtitle");
		String username = request.getParameter("username");
		String boardcontents = request.getParameter("boardcontents");
		
		board.setBoardtitle(boardtitle);
		board.setBoardcontents(boardcontents);
		board.setUsername(username);
		
		forward.setRedirect(true);
		
		if (bdao.insertBoard(board)) {	// 성공시
			// boardnum seq를 조회
			int boardnum = bdao.getSeq();
			// 성공한 글의 게시글 상세보기
			forward.setPath("/board/BoardView.bo?boardnum=" + boardnum);
		} else {	// 실패시
			forward.setPath("/board/BoardWrite.bo?flag=false");
		}
		
		return forward;
	}
}
