package com.kh.order.order_confirmed;

import java.util.List;

import com.kh.cart.CartDTO;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;
import com.kh.order.OrderDAO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class CartToOrderAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		OrderDAO odao = new OrderDAO();
		
		HttpSession session = req.getSession();
		
        // 필요한 값들 추출
        String user_id = req.getParameter("user_id");
    	// 장바구니 db 내의 상품 리스트 가져오기
        List<CartDTO> cartlist = odao.searchCart(user_id);
        // 장바구니 db의 상품 리스트를 주문 db로 보내기
        odao.cartToOrder(user_id, cartlist);
        // 장바구니 db 내용 삭제
        odao.deleteCart(user_id);
        //odao.insertOrderedList(product_id, user_id);

        forward.setRedirect(false);
        forward.setPath("/order/order_confirmed.jsp");

        return forward;	
        }

}
