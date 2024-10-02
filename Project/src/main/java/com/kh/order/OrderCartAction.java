package com.kh.order;

import com.kh.login.UserDTO;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class OrderCartAction {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		UserDTO order = new UserDTO();
		OrderDAO odao = new OrderDAO();

		// 파라미터 가져오기
		String user_name = req.getParameter("user_name");
		String product_id = req.getParameter("product_id");

		// 세션에 유저 정보 저장
		req.getSession().setAttribute("order", order);

		// order_form으로 포워딩
		forward.setPath("/order/order_form.jsp");
		forward.setRedirect(false);  // forward 방식으로 이동

		return forward;
	}

}
