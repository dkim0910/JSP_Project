package com.kh.app.board;

import com.kh.app.board.dao.BoardDAO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		BoardDAO bdao = new BoardDAO();
		
		// 페이징 처리 시작
		// 넘겨받은 페이지 
		String temp = request.getParameter("page");
		int page = 0;
		
//		if (temp == null) {
//			page = 1;
//		} else {
//			page = Integer.parseInt(temp);
//		}
		
		page = temp == null ? 1 : Integer.parseInt(temp);
		
		
		// 전체 게시글 개수
		int totalCnt = bdao.getBoardCnt();
		
		// 페이징 처리 [1][2]....[10]
		int pageSize = 10;
		// 현재 1페이지의 endRow = 10, 4페이지의 endRow = 40;
		int endRow = page * 10;	
		// 1페이지의 startRow = 1, 4페이지의 startRow = 31;
		int startRow = endRow - 9;
		// [1][2]...[10] : [1], [11][12]...[20] : [11]
		int startPage = (page - 1)/pageSize*pageSize + 1;
		// [1][2]...[10]:[10], [11][12]...[20]:[20]
		int endPage = startPage + pageSize - 1;
		int totalPage = (totalCnt-1)/pageSize+1;
		
		endPage = endPage>totalPage? totalPage : endPage;
		
		// 페이징 처리에 필요한 부분
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		// db조회, /app/board/boardlist.jsp로 페이지 이동
		request.setAttribute("boardList", bdao.getBoardList(startRow, endRow));
		request.setAttribute("totalCnt", totalCnt);
		forward.setPath("/app/board/boardlist.jsp");
		forward.setRedirect(false); // forward 이동
		
		return forward;
	}

}
