package com.kh.web.servlet;

import java.io.IOException;

import com.kh.web.beans.TblMember;
import com.kh.web.dao.TblMemberDAO2;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String USER_id = request.getParameter("USER_id");
        String password = request.getParameter("password");

        TblMemberDAO2 memberDAO = new TblMemberDAO2();
        TblMember member = memberDAO.getMemberById(USER_id);

        if (member != null && member.getUserpw().equals(password)) {
            // 세션에 회원 정보 저장
            HttpSession session = request.getSession();
            session.setAttribute("session_member", member);

            // 로그인 성공 후 페이지로 이동
            response.sendRedirect("welcome.jsp");
        } else {
            // 로그인 실패 시
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
