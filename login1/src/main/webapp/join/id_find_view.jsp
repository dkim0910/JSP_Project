<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="if_find_db.jsp">
		검색하실 회원의 ID
		<input type="text" name="userid"/><br/>
		
		<input type="submit" value="회원검색"/>
	</form>
	<hr/>

	
	<table border="1">
		<tr>
			
			<th>비밀번호</th>
			
		</tr>
		<c:choose>
			<c:when test="${!empty requestScope.user }">
				<c:set var="user" value="${requestScope.user }"/>
				<tr>
					<td>${user.userid }</td>
					<td>${user.userpw }</td>
					<td>${user.username }</td>
					<td>${user.usergender }</td>
					<td>${user.addr }</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="user" items="${requestScope.list }">
					<tr>
						<td>${user.userid }</td>
						<td>${user.userpw }</td>
						<td>${user.username }</td>
						<td>${user.usergender }</td>
						<td>${user.addr }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>