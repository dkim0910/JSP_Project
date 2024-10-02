package com.kh.order;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;
import com.kh.web.dao.UserDAO;
import com.kh.web.dao.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class OrderFormAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		
		String user_name = request.getParameter("user_name");
		String user_address = request.getParameter("user_address");
		String user_phone = request.getParameter("user_phone");
		
		forward.setRedirect(true);
		
		return forward;
	}

}
