package com.kh.main;

import java.util.List;

import com.kh.login.UserDAO;
import com.kh.login.UserDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class nameAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {		
		ActionForward forward = new ActionForward();
        UserDAO udao = new UserDAO();

        String user_name = request.getParameter("user_name");
        
        // 사용자 정보를 가져옴
        UserDTO member = udao.nameView(user_name); 
        
        // 로그인 성공 시 세션에 사용자 정보 저장
        if (member != null) {
            HttpSession session = request.getSession();
            session.setAttribute("session_member", member);
        }
        
        forward.setRedirect(true);
        forward.setPath("/main-page/login_main.jsp");

        return forward;
	}

}
