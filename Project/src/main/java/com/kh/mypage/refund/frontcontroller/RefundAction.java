package com.kh.mypage.refund.frontcontroller;

import java.util.List;

import com.kh.mypage.refund.Action.Action;
import com.kh.mypage.refund.Action.ActionForward;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDAO;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RefundAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		System.out.println("here2");
		
		MyDAO MyDAO = new MyDAO();
		
		
		
        // 환불페이지에 필요한 정보 전체 가지고 오기
        
        // 이거 나중에 1개씩이 아니라 O001, O002, O003 이렇게 한 5개 정도 바로 뽑을 수 있게 만들기
        // 여기에 "" 배열 적어서 한개씩 돌아가면서 넣으면 되나?
        
        // 이건 나중에 바꾸기
//        String userid = request.getParameter("userid");
//        String orderedNum = request.getParameter("orderedNum");
        
        String userid = "admin";
        String orderedNum = "ORD001";
        String orderNum = "O001";  // 원하는 주문 번호
        
        List<MyDTO> getRefunds = MyDAO.getRefunds(userid, orderedNum, orderNum);
        request.setAttribute("Refunded", getRefunds);
	    
        
	    forward.setRedirect(false);
	    forward.setPath("/my-page/refund/refund.jsp");
		
		return forward;
	}

}
