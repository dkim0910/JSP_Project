package com.kh.cart.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;





import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.jsp.JspContext;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.http.HttpSession;

public class CartServlet {

	protected <HttpSession, RequestDispatcher> void service(HttpServletRequest req, HttpServletRequest resp) throws JspException, IOException {
		req.setCharacterEncoding("EUC-KR"); //받은 데이터를 한글처리
		
		String cmd = req.getParameter("command");
		jakarta.servlet.http.HttpSession session = req.getSession(); //request가 가지고있는 세션을 넘겨달라는 말입니다.
		ArrayList list = (ArrayList)session.getAttribute("cart");
		//주문 전과 주문 후로 나뉩니다. 다시, 주문전은 추가냐 삭제냐로 나뉩니다. 
		
		if(cmd.equals("CHK")) { //주문완료 눌렀을 때
			
		} else {
			if(cmd.equals("ADD")) { //도서구매를 눌렀을때
				String PRODUCT_NAME = req.getParameter("PRODUCT_NAME");
				String BRAND = req.getParameter("BRAND");
				CartDTO dto = getServletContext(PRODUCT_NAME, BRAND);
				if(list==null) list = new ArrayList();
				list.add(dto);
			} else { //도서삭제를 눌렀을 때
				
			}
			session.setAttribute("cart", list);
			JspContext sc = getServletContext();
			RequestDispatcher view = sc.getRequestDispatcher("/bookShop.jsp");
			view.forward(req, resp);
		}
	}
	private JspContext getServletContext() {
		// TODO Auto-generated method stub
		return null;
	}
	private CartDTO getBook(String book, String qty) {
		CartDTO dto = new CartDTO();
		
		Scanner in = new Scanner(book).useDelimiter("\\s*/\\s*");
		dto.setTitle(in.next());
		dto.setAuthor(in.next());
		dto.setPrice(in.nextInt());
		dto.setQty(Integer.parseInt(qty));
		
		return dto;
	}
}
