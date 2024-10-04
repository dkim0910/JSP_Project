package com.kh.mypage.refund.frontcontroller;

import java.util.List;

import com.kh.mypage.refund.Action.Action;
import com.kh.mypage.refund.Action.ActionForward;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDAO;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteUserAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		MyDAO mydao = new MyDAO();
		
		List<MyDTO> deleteUser = mydao.deleteUser();
		request.setAttribute("delete", deleteUser);
		
		forward.setRedirect(false);
		forward.setPath("/main-page/main.jsp");
		
		return forward;
	}
		
}
