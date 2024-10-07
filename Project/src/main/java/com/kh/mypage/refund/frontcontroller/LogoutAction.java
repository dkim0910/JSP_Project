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
		System.out.println("member1" + member.getUser_id());
		session.removeAttribute("member");
		
		System.out.println("member2" + member.getUser_id());
		
		
		forward.setRedirect(true);
	    forward.setPath("/main-page/main.jsp");
		
		
		return forward;
	}

}
