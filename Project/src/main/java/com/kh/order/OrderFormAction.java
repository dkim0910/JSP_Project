package com.kh.order;

import com.kh.login.UserDTO;
import com.kh.order.OrderDAO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class OrderFormAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
		OrderDAO odao = new OrderDAO();
		UserDTO order = new UserDTO();
		
		String user_name = request.getParameter("user_name");
		String user_address = request.getParameter("user_address");
		String user_phone = request.getParameter("user_phone");
		
		order.setUser_name(user_name);
		order.setUser_address(user_address);
		order.setUser_phone(user_phone);
		
		odao.insertInfo(order);
		
		forward.setRedirect(true);
		
		return forward;
	}

}
