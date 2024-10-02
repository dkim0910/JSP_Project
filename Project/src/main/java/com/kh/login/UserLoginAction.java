package com.kh.login;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class UserLoginAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		UserDTO member = udao.login(user_id, user_pw);	
		forward.setRedirect(true);

		// 로그인 성공
		if(member != null){	
			// 로그인한 사용자 정보를 세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("user", member); 
			forward.setPath("/main-page/main.jsp");
		} else { 			
			// 로그인 실패
			forward.setPath("/login/join/login_view.jsp?flag=false");
		}
		return forward;
	}

}
