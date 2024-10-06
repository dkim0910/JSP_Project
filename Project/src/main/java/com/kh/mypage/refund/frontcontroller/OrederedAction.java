package com.kh.mypage.refund.frontcontroller;

import java.util.List;

import com.kh.login.UserDAO;
import com.kh.login.UserDTO;
import com.kh.mypage.refund.Action.Action;
import com.kh.mypage.refund.Action.ActionForward;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDAO;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class OrederedAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		
//		UserDAO udao = new UserDAO();
//		
//		String user_id = request.getParameter("user_id");
//		String user_pw = request.getParameter("user_pw");
//		
//		UserDTO member1 = udao.login(user_id, user_pw);	
//		forward.setRedirect(true);
		
		// 세션에서 꺼내오기
		HttpSession session = request.getSession();
		
		// 세션에 저장되어 있는 "member" 라는 걸 꺼내서 
		UserDTO member = (UserDTO) session.getAttribute("member");
		
		System.out.println("member2 = " + member.getUser_id());
		
		// getUser_id 로 "member" 안에 있는 user_id 만 꺼내옴 ("member"만 꺼내오면 오류남 String 이 아니라는 오류) 위 처럼 UserDTO 로 꺼내와야됨 
		String userid = member.getUser_id();
		
		if(member.getUser_id() != null){	
			// 로그인한 사용자 정보를 세션에 저장 (또 할 필요는 없는거 같은데)
//			HttpSession session = request.getSession();
//			session.setAttribute("member", member);
			MyDAO mydao = new MyDAO();
			System.out.println(userid);
			
			
			List<MyDTO> getOrederd = mydao.getOrdered(userid);
			request.setAttribute("Ordered", getOrederd);
			
			forward.setRedirect(false);
		    forward.setPath("/my-page/ordered/order-status.jsp");
		} else { 			
			// 로그인 실패
			System.out.println("here2");
			forward.setRedirect(true);
			forward.setPath("/login/join/login_view.jsp?flag=false");
		}
		
		return forward;
		
		
		
		
//		MyDAO mydao = new MyDAO();
//		
//		
//		// 주문화면에서 가지고 오기?
//		// 나중에 앞에서 카트 또는 주문후의 값을 바로 가지고 오기
//		String userid = "admin";
//        String orderedNum = "ORD001";
//        
//        
//		
//		
//		List<MyDTO> getOrederd = mydao.getOrdered(userid, orderedNum);
//		request.setAttribute("Ordered", getOrederd);
//		
//		forward.setRedirect(false);
//	    forward.setPath("/my-page/ordered/order-status.jsp");
//		
//		return forward;
	}
	
}
