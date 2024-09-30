<%@page import="com.kh.web.dao.TblMemberDAO2"%>
<%@page import="com.kh.web.beans.TblMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <%
        TblMemberDAO2 mdao = new TblMemberDAO2();
        String USER_id = request.getParameter("USER_id");
        String userpw = request.getParameter("userpw");
        
        TblMember member = mdao.login(USER_id, userpw);        
        
        if (member != null) {  // 로그인 성공
            // 세션에 회원 정보 저장
            session.setAttribute("session_member", member); // 세션 이름이 "session_member"로 저장됨
    %>
        <script>
            location.href = '../main-page/login_main.jsp'; // 로그인 후 페이지로 리다이렉션
        </script>
    <%
        } else {  // 로그인 실패
    %>
        <script>
            alert("아이디 또는 패스워드를 확인해주세요!");
            location.href = 'login_view.jsp'; // 로그인 실패 시 다시 로그인 페이지로 이동
        </script>    
    <%
        }
    %>
</body>
</html>









