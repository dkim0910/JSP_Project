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
        
        // 로그인 로직 처리
        UserDTO member = udao.login(user_id, user_pw);	
        
        if(member != null){	
            // 로그인 성공 시 세션에 사용자 정보 저장
            HttpSession session = request.getSession();
            session.setAttribute("member", member);  // 세션에 로그인한 사용자 정보 저장
            
            forward.setRedirect(true);
            forward.setPath("/main-page/login_main.jsp");  // 로그인 후 메인 페이지로 이동
        } else { 			
            // 로그인 실패 시 처리
            forward.setRedirect(true);
            forward.setPath("/login/join/login_view.jsp?flag=false");  // 로그인 실패 시 로그인 페이지로 리다이렉트
        }
        return forward;
    }

}
