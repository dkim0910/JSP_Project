package com.kh.mypage.refund.frontcontroller;

import java.util.List;

import com.kh.login.UserDTO;
import com.kh.mypage.refund.Action.Action;
import com.kh.mypage.refund.Action.ActionForward;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDAO;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class FinishedRefund implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();
		
		UserDTO member = (UserDTO) session.getAttribute("member");
		
		String userid = member.getUser_id();
		
		String price = request.getParameter("price");
		System.out.println(price);
		
        
        
        if(member.getUser_id() != null){	
			MyDAO mydao = new MyDAO();
			
			System.out.println("here2");
			
			List<MyDTO> finishedRefund = mydao.finishedRefund(userid);
			request.setAttribute("finishedRefund", finishedRefund);
			
			forward.setRedirect(false);
		    forward.setPath("/my-page/my-main/my-page-main.jsp");
		} else { 			
			// 로그인 실패
			forward.setRedirect(true);
			forward.setPath("/login/join/login_view.jsp?flag=false");
		}
		
		return forward;
		
	}

}
