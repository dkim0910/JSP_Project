package com.kh.cart.dao;


import java.util.List;

import com.kh.cart.dao.CartDAO;
import com.kh.cart.dao.CartDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class CartAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		CartDAO odao = new CartDAO();
		HttpSession session = req.getSession();

//       
       // 제품 정보를 가져옴
       String product_id = req.getParameter("product_id");
       List<CartDTO> productList = odao.getProducts(product_id);
       session.setAttribute("productList", productList);

       forward.setRedirect(true);
       forward.setPath("/order/order_form.jsp");

       return forward;
	}

}
