<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>비밀번호 찾기 결과 | 쇼핑하조</title>
<style>
		/* 페이지 기본 설정 */
	body {
	    margin: 0;
	    background-color: #f4f4f4;
	    font-family: Arial, sans-serif;
		}
		
	/* 상단 영역 (여백 추가) */
	.top-section {
		height: 100px;
		width: 100%;
	}
	
	/* 폼 컨테이너 (로그인 박스 크기 증가) */
	.form-container {
	    width: 450px; /* 로그인 박스 너비 (크기 증가) */
	    margin: 50px auto; /* 화면 중앙 배치 */
	    background-color: white;
	    padding: 50px; /* 내부 여백 (크기 증가) */
	    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
	    border-radius: 12px;
	    box-sizing: border-box;
	}
	
	/* 모든 입력창에 적용되는 스타일 */
	.input_style {
	    width: 98.5%;
	    height: 46px; /* 입력창 크기 증가 */
	    font-size: 16px;
	    border: 1px solid #ddd; /* 테두리 스타일 */
	    border-radius: 8px;
	    outline: none;
	    background-color: #fafafa;
	    margin-bottom: 20px; /* 입력창 사이 간격 증가 */
	    transition: border-color 0.3s;
	    text-indent: 10px;
	}
	
	.input_style:focus {
	    border-color: #999; /* 포커스 시 테두리 색 변경 */
	}
	
	/* 로그인 버튼 스타일 */
	.btn {
	    width: 100%;
	    height: 48px;
	    font-size: 16px;
	    border: none;
	    color: white;
	    border-radius: 8px;
	    background-color: #222; /* 버튼 배경색 */
	    cursor: pointer;
	    margin-top: 10px;
	    transition: background-color 0.3s;
	}
	
	.btn:hover {
	    background-color: #555; /* 버튼 호버 시 색 변경 */
	}
	
	/* 하단 링크 영역 */
	.join {
	    font-size: 14px;
	    text-align: center;
	    margin-top: 15px;
	}
	
	.join a {
	    text-decoration: none;
	    color: #888;
	    margin: 0 5px;
	}
	
	.join a:hover {
	    color: #222; /* 호버 시 링크 색 변경 */
	}

    /* 화면 크기에 따라 스타일을 조정하는 미디어 쿼리 */
    @media screen and (max-width: 600px) {
        .form-container {
            width: 70%; /* 작은 화면에서는 폼 너비를 70%로 설정 */
        }
    }

    @media screen and (min-width: 1200px) {
        .form-container {
            width: 30%; /* 큰 화면에서는 폼 너비를 20%로 줄임 */
        }
    }


</style>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<div class="top-section"></div>
	<div class="form-container">
	<c:set var="user" value="${requestScope.user}" />
	
	    <h2>비밀번호 찾기 결과</h2>
	
	        <c:choose>
				<c:when test="${!empty user}">
				    <div>
				        ${user.user_name}님의 비밀번호는 <strong>${user.user_pw}</strong> 입니다.
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
		    <a href="/login/join/pw_find.jsp">다시 찾기</a>
		    |
		    <a href="/login/join/login_view.jsp">로그인</a>
		    |
		    <a href="/login/join/join_view.jsp">회원가입</a>
		</div>
    </div>
</body>
</html>