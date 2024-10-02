package com.kh.mypage.action;

import com.kh.login.UserDTO;
import com.kh.mypage.dao.MemberDAO;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MembeUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
        MemberDAO dao = new MemberDAO();

        // 요청 파라미터에서 수정할 정보 가져오기
        String user_id = request.getParameter("user_id");
        String user_name = request.getParameter("user_name");
        String user_pw = request.getParameter("user_pw");
        String user_address = request.getParameter("user_address");
        String user_phone = request.getParameter("user_phone");
        String user_gender = request.getParameter("user_gender");

        // 입력값 검증 (필요에 따라 추가)
        if (user_id == null || user_id.isEmpty()) {
            forward.setPath("/my-page/my-main/myinformation.jsp"); // 적절한 경로로 리다이렉트
            return forward;
        }

        // UserDTO 객체에 수정할 정보 세팅
        UserDTO member = new UserDTO();
        member.setUser_id(user_id);
        member.setUser_name(user_name);
        member.setUser_pw(user_pw);
        member.setUser_address(user_address);
        member.setUser_phone(user_phone);
        member.setUser_gender(user_gender);

        // 정보 수정 메서드 호출
        boolean isUpdated = dao.updateMember(member);

        if (isUpdated) {
            // 수정 성공 시, 마이페이지로 리다이렉트
            forward.setPath("/my-page/my-main/myinformation.jsp");
            forward.setRedirect(true);
        } else {
            // 수정 실패 시, 오류 메시지 또는 처리
            request.setAttribute("error", "정보 수정에 실패했습니다.");
            forward.setPath("/my-page/my-main/myinformation.jsp");
            forward.setRedirect(false);
        }

        return forward;
    }

}
