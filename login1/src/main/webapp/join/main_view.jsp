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
		TblMember member
		= (TblMember)session.getAttribute("session_id");
		
		if( member != null ){
	%>
		<script>
			alert("<%= member.getUsername()%>님 로그인 하셨습니다");
		</script>
		<p>
			<%= member.getUserid()%> (<%=member.getUsername() %>)님 환영합니다  
			
		
		</p>
	<%	} else { %>
		<script>
			alert("로그인 성공");
			location.href = 'login_view.jsp';
		</script>
	<%	} %>
</body>
</html>







