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
		
		System.out.println("deleteUserAction");
		
		String userid = "admin";

		// 사용자 삭제
		mydao.deleteUser(userid);

		// 삭제 후 이동할 페이지 설정
		forward.setRedirect(false); // 또는 true로 설정하여 리다이렉트할 수도 있음
		forward.setPath("/main-page/main.jsp");

		System.out.println("here5");
		return forward;

	}
		
}
