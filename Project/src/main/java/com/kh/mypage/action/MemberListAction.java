package com.kh.mypage.action;

import com.kh.mypage.dao.MemberDAO;
import com.kh.mypage.dao.MemberDTO;
import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class MemberListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
        MemberDAO dao = new MemberDAO();

        // 세션에서 user_id 가져오기
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user_id");

        // user_id가 세션에 없는 경우 로그인 페이지로 이동
        if (user_id == null || user_id.isEmpty()) {
            // 세션에 user_id가 없을 경우 처리 (예: 로그인 페이지로 리다이렉트)
            forward.setPath("/login/join/login_view.jsp");
            forward.setRedirect(true);
            return forward;
        }

        // user_id로 회원 정보 조회
        MemberDTO member = dao.getMemberById(user_id);

        if (member == null) {
            // 회원 정보가 없을 경우 처리 (예: 회원가입 페이지로 이동)
            forward.setPath("/login/join/join_view.jsp");
            forward.setRedirect(false);
            return forward;
        }

        // 조회한 회원 정보를 request에 저장
        request.setAttribute("member", member);

        // 이후 보여줄 페이지 설정 (myinformation.jsp로 이동)
        forward.setPath("/my-page/my-main/myinformation.jsp");
        forward.setRedirect(false); // forward 방식으로 이동

        return forward;
    }

}
