package com.kh.mypage.action;

import java.io.IOException;

import com.kh.web.action.ActionForward;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.up")
public class MypageFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		String rquestURI = req.getRequestURI();
		ActionForward forward = null;
		
		switch(rquestURI) {
		case "/my-main/MemberList.up":
			forward = new MemberListAction().execute(req, resp);
			break;
		case "/my-main/MemberUpdate.up":
			forward = new MembeUpdateAction().execute(req, resp);
			break;
		case "/my-main/MemberUpdateForm.up": // 회원 정보 수정 페이지
            forward = new ActionForward();
            forward.setPath("/my-page/my-main/myinformation_update.jsp");
            forward.setRedirect(false); // forward 방식으로 JSP로 이동
            break;
		}
		// ㅇ
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		
		}
	}
	
	
}
