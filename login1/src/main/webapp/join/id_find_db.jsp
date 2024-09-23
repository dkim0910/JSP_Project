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
		String userid = request.getParameter("userid");
		TblMemberDAO2 udao = new TblMemberDAO2();
		TblMember user = udao.searchById(userid);
		request.setAttribute("user", user);
		pageContext.forward("id_find_view.jsp");
	%>
</body>
</html>