package com.kh.web.servlet;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;
import com.kh.web.user.dao.UserDAO;
import com.kh.web.user.dao.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class IdFindAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		
		// 클라이언트로부터 전달된 username 값을 가져옴
		String username = request.getParameter("username");
		String userphone = request.getParameter("userphone");
		
		user = udao.searchByname(username, userphone);
		request.setAttribute("user", user);

		forward.setRedirect(false);
		if(user != null){	
			forward.setPath("/join/id_find_view.jsp");
		} else {
			forward.setPath("/join/id_find.jsp");
		}
		return forward;
	}

}
