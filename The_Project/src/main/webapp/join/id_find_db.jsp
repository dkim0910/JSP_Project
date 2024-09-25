<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kh.web.dao.TblMemberDAO2"%>
<%@page import="com.kh.web.beans.TblMember"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 클라이언트로부터 전달된 username 값을 가져옴
		String username = request.getParameter("username");
		String userphone = request.getParameter("userphone");
		// TblMemberDAO2 인스턴스 생성
		TblMemberDAO2 udao = new TblMemberDAO2();
		
		// username으로 회원 검색
		TblMember user = udao.searchByname(username, userphone);
		
		// 검색된 회원 정보를 request에 저장
		request.setAttribute("user", user);

		// 검색 결과 페이지로 포워딩
		pageContext.forward("id_find_view.jsp");
		
	%>
</body>
</html>