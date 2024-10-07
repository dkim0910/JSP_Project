package com.kh.app.board;

import java.io.IOException;

import com.kh.web.action.ActionForward;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.bo")
public class boardFrontController extends HttpServlet {
	// doGet, do Post, doProcess
	// /board/BoardList.bo 요청으로 왔을때 (request)
	// /app/board/boardlist.jsp 페이지 응답 보내주기 (response)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;

		switch (requestURI) {
		case "/board/BoardList.bo":
			// forward = new ActionForward(true, "/app/board/boardlist.jsp");
			forward = new BoardListAction().execute(req, resp);
			break;
		case "/board/BoardWrite.bo":
			forward = new ActionForward(true, "/app/board/boardwrite.jsp");
			break;
		case "/board/BoardWriteOk.bo":
			forward = new BoardWriteOkAction().execute(req, resp);
			break;
		case "/board/BoardView.bo":
			forward = new BoardViewAction().execute(req, resp);
			break;
		case "/board/AddReply.bo":
			// insert
			forward = new AddReplyAction().execute(req, resp);
			break;
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
	}

}
