package com.kh.order;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class OrderLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward(); 
		HttpSession session = req.getSession();
		
		//로그인이 되어있는지 여부
		if (memberName != null) {
			session.setAttribute("session_member", memberName);
			} else { 			
				// 로그인 실패
				forward.setRedirect(true);
				forward.setPath("/login/join/login_view.jsp?flag=false");
			}
		 
		forward.setPath("/order/order_form.or");
	    forward.setRedirect(false);

	    return forward;
	}

}
