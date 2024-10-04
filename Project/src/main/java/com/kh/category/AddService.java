package com.kh.category;

import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddService {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)  {
		ActionForward forward = new ActionForward();
		GoodsDTO goods = new GoodsDTO();
		GoodsDAO gdao = new GoodsDAO();
		
		String PRODUCT_ID = request.getParameter("PRODUCT_ID");
		String user_id = request.getParameter("user_id");
        String quantity = request.getParameter("quantity");
        gdao.addgoods(user_id, PRODUCT_ID);
        
        //request.setAttribute("quantity", quantity); // 장바구니에 넣을 상품의 수량 나중에 추가
        
		forward.setRedirect(true);
		/* forward.setPath("/order/order_form.jsp"); */
		forward.setPath("/category/goodsDetail/goodsDetail.jsp");
        
        return forward;
	}
}
