package com.kh.mypage.refund.frontcontroller;

import java.util.List;

import com.kh.mypage.refund.Action.Action;
import com.kh.mypage.refund.Action.ActionForward;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDAO;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class OrederedAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		MyDAO mydao = new MyDAO();
		
		
		// 주문화면에서 가지고 오기?
		// 나중에 앞에서 카트 또는 주문후의 값을 바로 가지고 오기
		String userid = "admin";
        String orderedNum = "ORD001";
		
		
		List<MyDTO> getOrederd = mydao.getOrdered(userid, orderedNum);
		request.setAttribute("Ordered", getOrederd);
		
		forward.setRedirect(false);
	    forward.setPath("/my-page/ordered/order-status.jsp");
		
		return forward;
	}
	
}
