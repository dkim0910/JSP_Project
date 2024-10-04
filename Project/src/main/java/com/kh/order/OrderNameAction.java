package com.kh.order;

import com.kh.login.UserDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class OrderNameAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
        OrderDAO odao = new OrderDAO();

        String user_name = req.getParameter("user_name");
        
        // 사용자 정보를 가져옴
        UserDTO memberName = odao.getName(user_name); 
        
        if (memberName != null) {
            HttpSession session = req.getSession();
            session.setAttribute("session_member", memberName);
        }
        
        forward.setPath("/order/order_form.jsp");
        forward.setRedirect(false);

        return forward;
	}

}
