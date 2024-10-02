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

            <!-- JSTL을 사용하여 member 객체의 정보를 테이블 형식으로 출력 -->
            <c:choose>
                <c:when test="${not empty member}">
                    <table border="1" >
                        <thead>
                            <tr>
                                <th>항목</th>
                                <th>정보</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>이름</td>
                                <td>${member.user_name}</td>
                            </tr>
                            <tr>
                                <td>아이디</td>
                                <td>${member.user_id}"</td>
                            </tr>
                            <tr>
                                <td>전화번호</td>
                                <td>${member.user_phone}</td>
                            </tr>
                            <tr>
                                <td>주소</td>
                                <td>${member.user_address}</td>
                            </tr>
                            <tr>
                                <td>성별</td>
                                <td>${member.user_gender}</td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="/my-page/my-main/myinformation_update.jsp" class="button">정보 수정하기</a>
                </c:when>
                <c:otherwise>
                    <p>해당하는 사용자 정보를 찾을 수 없습니다.</p>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</body>
</html>