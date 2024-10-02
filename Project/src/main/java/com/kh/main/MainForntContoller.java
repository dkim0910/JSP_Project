package com.kh.main;

import java.io.IOException;

import com.kh.login.UserDTO;
import com.kh.mypage.action.MemberListAction;
import com.kh.web.action.ActionForward;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("*login")
public class MainForntContoller extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String rquestURI = req.getRequestURI();
		ActionForward forward = null;

		switch (rquestURI) {
		case "/main-page/loginName.login":
			forward = new nameAction().execute(req, resp);
			break;
		}
	}

}
