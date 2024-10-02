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
		
		// ORDER_NUM을 직접 설정
//	    String orderNum = null; // 하드코딩된 값, 또는 다른 방법으로 동적으로 설정 가능
	    
		
		// 요청에서 ORDER_NUM을 가져옵니다. (예: "1"로 하드코딩 하거나 request.getParameter로 가져옴)
//	    String orderNum = request.getParameter("orderNum"); // 예를 들어, URL에서 orderNum을 가져옴
	    
	    // refundDAO에서 orderNum을 사용하여 환불 정보를 가져옵니다.
		String orderNum = "O001";
	    List<MyDTO> refund = MyDAO.getRefundedProducts(orderNum);
	    request.setAttribute("refund", refund);
	    
        List<MyDTO> products = MyDAO.getAllProducts();
        request.setAttribute("products", products);
        
		/*
		 * String orderNum2 = "O002"; List<MyDTO> refunded =
		 * MyDAO.getRefundProducts(orderNum2); request.setAttribute("refunded",
		 * refunded);
		 */
        
        String Image1 = "4316816";
        List<MyDTO> Image = MyDAO.getImage(Image1);
        request.setAttribute("Image", Image);
        System.out.println(Image);
	    
	    forward.setRedirect(false);
	    forward.setPath("/my-page/refund/refund.jsp");
		
		return forward;
	}

}
