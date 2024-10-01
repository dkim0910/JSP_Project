package com.kh.mypage.action;

import com.kh.mypage.dao.MemberDAO;
import com.kh.mypage.dao.MemberDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		MemberDAO dao = new MemberDAO();
		// 요청 파라미터로부터 user_id를 받음
        String userId = request.getParameter("user_id");
        
        // user_id로 회원 정보 조회
        MemberDTO member = dao.getMemberById(userId);
        
        // 조회한 회원 정보를 request에 저장
        request.setAttribute("member", member);
        
        // 이후 보여줄 페이지 설정 
        forward.setPath("/my-page/my-main/my-page-main.jsp");
        forward.setRedirect(false); // forward 방식으로 이동
        
        return forward;
	}

}
