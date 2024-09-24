<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>비밀번호 찾기 결과</title>
<style>
	    /* 화면 크기에 따라 스타일을 조정하는 미디어 쿼리 */
    @media screen and (max-width: 600px) {
        .form-container {
            width: 80%; /* 작은 화면에서는 폼 너비를 80%로 설정 */
        }
    }

    @media screen and (min-width: 1200px) {
        .form-container {
            width: 20%; /* 큰 화면에서는 폼 너비를 20%로 줄임 */
        }
    }

	    /* 페이지 기본 설정 */
    body {
        margin: 0;
        background-color: white;
    }

    /* 상단 파란색 배경 영역 */
    .top-section {
        background-color: rgb(70, 130, 180);
        height:250px;
        width: 100%;
    }

    /* 폼 컨테이너 (화면 크기에 따라 조정되는 부분) */
    .form-container {
        width: 50%; /* 폼 너비를 화면 너비의 50%로 설정 */
        max-width: 800px; /* 최대 너비 설정 (예: 400px) */
        min-width: 550px; /* 최소 너비 설정 (예: 280px) */
        margin: auto;
        margin-top: -100px;
        font-size: 15px;
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        position: relative;
    }
    /* 하단 링크 영역 */
    .join {
        font-size: 13px;
        text-align: left;
    }

    .join a {
        text-decoration: none;
        color: black;
    }

    .join a:hover {
        color: red;
    }


</style>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<div class="top-section"></div>
	<div class="form-container">
	
	    <h2>비밀번호 찾기 결과</h2>
	
	        <c:choose>
				<c:when test="${!empty requestScope.userp}">
				    <c:set var="userp" value="${requestScope.userp}" />
				    <div>
				        ${userp.username}님의 비밀번호는 <strong>${userp.userpw}</strong> 입니다.
				    </div>
				</c:when>
	            <c:otherwise>
	                <div>
	                	<strong>회원님의 비밀번호를 찾을 수 없습니다.</strong>
	                </div>
	            </c:otherwise>
	        </c:choose>
	    <br/>
	    <div class="join">
		    <a href="pw_find.jsp">다시 찾기</a>
		    |
		    <a href="login_view.jsp">로그인</a>
		    |
		    <a href="join_view.jsp">회원가입</a>
		</div>
    </div>
</body>
</html>