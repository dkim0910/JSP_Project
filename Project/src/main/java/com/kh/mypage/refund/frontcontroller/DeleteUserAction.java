package com.kh.mypage.refund.frontcontroller;

import com.kh.mypage.refund.Action.Action;
import com.kh.mypage.refund.Action.ActionForward;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteUserAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		MyDAO mydao = new MyDAO();
		
		
		String userid = "admin";

		// 사용자 삭제
		mydao.deleteUser(userid);

		forward.setRedirect(true);
		forward.setPath("/main-page/main.jsp");

		return forward;

	}
		
}
