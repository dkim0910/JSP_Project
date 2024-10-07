package com.kh.app.board;

import com.kh.app.board.dao.BoardDAO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		// dao 영역에 -> getDetail()
		// /app/board/boardview.jsp
		BoardDAO bdao = new BoardDAO();
		
		int boardnum = Integer.parseInt(request.getParameter("boardnum"));
		
		// 조회수 update
		bdao.updateReadCount(boardnum);
		
		request.setAttribute("board", bdao.getDetail(boardnum)); 
		forward.setRedirect(false);
		forward.setPath("/app/board/boardview.jsp");
		
		return forward;
	}

}
