package com.kh.web.servlet;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;
import com.kh.web.dao.UserDAO;
import com.kh.web.dao.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserJoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		
		// 파라미터 값 setting
		user.setUserid(request.getParameter("userid"));
		user.setUserpw(request.getParameter("userpw"));
		user.setUsername(request.getParameter("username"));
		user.setUserphone(request.getParameter("userphone"));
		user.setUsergender(request.getParameter("usergender"));
		//user.setUseraddress(request.getParameter("useraddr"));
		
		// 회원가입 성공시
		if(udao.join(user)) {
			// redirect 여부 선택
			forward.setRedirect(true);
			forward.setPath("/login/join/login_view.jsp");
		// 회원가입 실패시
		}else {
			forward.setRedirect(true);
			forward.setPath("/index.html");
		}
		return forward;
	}
	
}
