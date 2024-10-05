package com.kh.order;

import com.kh.login.UserDAO;
import com.kh.login.UserDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class OrderLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward(); 
		UserDAO udao = new UserDAO();
		
		String user_id = req.getParameter("user_id");
		String user_pw = req.getParameter("user_pw");
		
		UserDTO member = udao.login(user_id, user_pw);	
		
		forward.setRedirect(true);
		
		//로그인이 되어있는지 여부
		if(member != null){	
			// 로그인한 사용자 정보를 세션에 저장
			HttpSession session = req.getSession();
			session.setAttribute("member", member);
			forward.setRedirect(true);
			forward.setPath("/main-page/main.jsp");
		} else { 			
			// 로그인 실패
			forward.setRedirect(true);
			forward.setPath("/login/join/login_view.jsp?flag=false");
		}
		forward.setPath("/order/order_form.or");
	    forward.setRedirect(true);

	    return forward;
	}

}
