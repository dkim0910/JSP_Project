package com.kh.order;

import com.kh.login.UserDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class OrderFormAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDTO order = new UserDTO();

		// 파라미터 가져오기
		String user_name = request.getParameter("user_name");
		String user_address = request.getParameter("user_address");
		String user_phone = request.getParameter("user_phone");

		// UserDTO에 설정
		order.setUser_name(user_name);
		order.setUser_address(user_address);
		order.setUser_phone(user_phone);

		// JSP로 데이터를 전달하기 위해 request에 UserDTO 추가
		request.setAttribute("order", order);

		// order_form으로 포워딩
		forward.setPath("/order/order_form.or");
		forward.setRedirect(false);  // forward 방식으로 이동

		return forward;
	}
}
