package com.kh.mypage.refund.frontcontroller;

import com.kh.login.UserDTO;
import com.kh.mypage.refund.Action.Action;
import com.kh.mypage.refund.Action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		HttpSession session = request.getSession();
		
		UserDTO member = (UserDTO) session.getAttribute("member");
		
		session.removeAttribute("member");
		
		forward.setRedirect(true);
	    forward.setPath("/main-page/main.jsp");
		
		
		return forward;
	}

}
