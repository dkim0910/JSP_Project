package com.kh.order.order_confirmed;

import java.io.IOException;

import com.kh.order.OrderCartAction;
import com.kh.order.OrderDirectAction;
import com.kh.web.action.ActionForward;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.or_c")
public class OrderConfirmedFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
	
		
//		결제 완료창
		if(requestURI.equals("/order/order_confirmed.or_c")) {
			forward = new ActionForward(true, "/order/order_confirmed.jsp");
		}
		
		
		if(forward != null) {
			// true, redirect 방식으로 페이지 이동할 경우
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			// false, forward 방식으로 페이지 이동할 경우	
			}else {
				req.getRequestDispatcher(forward.getPath()).forward(req, resp);
			}
		}
	}
	
}
