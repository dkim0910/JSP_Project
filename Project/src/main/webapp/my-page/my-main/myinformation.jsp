<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.mypage.dao.MemberDAO" %>
<%@ page import="com.kh.mypage.dao.MemberDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>마이 페이지</title>
    <style>
        /* 기본 스타일 설정 */
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        .profile-section {
            border: 1px solid #ccc;
            padding: 20px;
            margin-top: 20px;
        }
        .profile-section h2 {
            text-align: center;
        }
        .profile-section .info {
            margin-bottom: 10px;
        }
        .button {
            display: block;
            width: 100%;
            background-color: black;
            color: white;
            text-align: center;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <c:set var="member" value="${requestScope.member}"/>  <!-- requestScope에서 member 설정 -->
    <div class="container">
        <h1>마이 페이지</h1>
        <div class="profile-section">
            <h2>나의 정보</h2>

            <!-- JSTL을 사용하여 member 객체의 정보를 출력 -->
            <c:choose>
                <c:when test="${not empty member}">
                    <div class="info">이름: <c:out value="${member.user_name}" /></div>
                    <div class="info">아이디: <c:out value="${member.user_id}" /></div>
                    <div class="info">전화번호: <c:out value="${member.user_phone}" /></div>
                    <div class="info">주소: <c:out value="${member.user_address}" /></div>
                    <div class="info">성별: <c:out value="${member.user_gender}" /></div>
                    <a href="editProfile.jsp" class="button">정보 수정하기</a>
                </c:when>
                <c:otherwise>
                    <p>해당하는 사용자 정보를 찾을 수 없습니다.</p>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

</body>
</html>