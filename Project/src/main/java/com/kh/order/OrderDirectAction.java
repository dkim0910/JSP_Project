package com.kh.order;

import com.kh.mypage.refund.Beans_DAO_DTO.MyProductsDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class OrderDirectAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		OrderDAO odao = new OrderDAO();
		HttpSession session = req.getSession();
//		UserDTO order = (UserDTO) session.getAttribute("name");
		MyProductsDTO product = (MyProductsDTO) session.getAttribute("product");
		
//		// 세션에 user_id가 없으면 로그인 페이지로 리다이렉트
//        if (order == null) {
//            forward.setPath("/login/join/login_view.jsp");
//            forward.setRedirect(true);
//            return forward;
//        }
		
        // 세션에서 가져온 user_id로 회원 정보 조회
//        String user_id = order.getUser_id();
        String product_id = product.getProduct_id();
//        UserDTO name = odao.getById(user_id);
//        CartDTO product2 = odao.getproductidByCart(product_id);
		// 파라미터 가져오기
//		String user_name = req.getParameter("user_name");
//		String product_id = req.getParameter("product_id");
		
		product = odao.getproductidByMyProducts(product_id);

		// 조회한 회원 정보를 request에 저장
//        req.setAttribute("name", name);
        req.setAttribute("product", product);
        
		/*
		 * // 세션에 유저 정보 저장 req.getSession().setAttribute("order", order);
		 */

		// order_form으로 포워딩
		forward.setPath("/order/order_form.jsp");
		forward.setRedirect(false);  // forward 방식으로 이동

		return forward;
	}
}
