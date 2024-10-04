package com.kh.order;

import java.util.List;

import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class OrderAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		OrderDAO odao = new OrderDAO();
		HttpSession session = req.getSession();
		String user_name = req.getParameter("user_name");
	       
       // 사용자 이름 정보를 가져옴
       MyDTO memberName = odao.getName(user_name); 
       
       // 제품 정보를 가져옴
       String product_id = req.getParameter("product_id");
       List<MyDTO> productList = odao.getProducts(product_id);
       session.setAttribute("productList", productList);

       forward.setPath("/order/order_form.jsp");
       forward.setRedirect(false);

       return forward;
	}

}
