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
		
		System.out.println("here2");
		
		MyDAO MyDAO = new MyDAO();
		
		// 나중에 앞에서 카트 또는 주문후의 값을 바로 가지고 오가
		String userid = "admin";
        String orderedNum = "ORD001";
        String orderNum = "O001";  // 원하는 주문 번호
		
		
		List<MyDTO> getOrederd = MyDAO.getOrdered(userid, orderedNum, orderNum);
		request.setAttribute("Ordered", getOrederd);
		
		forward.setRedirect(false);
	    forward.setPath("/my-page/ordered/order-status.jsp");
		
		return forward;
	}
	
}
