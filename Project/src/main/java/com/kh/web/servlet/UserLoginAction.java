package com.kh.web.servlet;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;
import com.kh.web.dao.UserDAO;
import com.kh.web.dao.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserLoginAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		UserDTO member = udao.login(user_id, user_pw);	
		forward.setRedirect(true);
		
		if(member != null){	
			// 로그인 성공
			forward.setPath("/main-page/login_main.jsp");
		} else { 			
			// 로그인 실패
			forward.setPath("/login/join/login_view.jsp?flag=false");
		}
		return forward;
	}
}


