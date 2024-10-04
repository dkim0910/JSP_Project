<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>회원 정보 조회</title>
</head>
<body>
    <h2>나의 정보</h2>
    <table>
        <!-- 회원 정보를 출력 -->
        <tr>
            <th>아이디</th>
            <td>${member.user_id}</td>
        </tr>
        <tr>
            <th>이름</th>
            <td>${member.user_name}</td>
        </tr>
        <tr>
            <th>성별</th>
            <td>${member.user_gender}</td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td>${member.user_phone}</td>
        </tr>
        <tr>
            <th>주소</th>
            <td>${member.user_address}</td>
        </tr>
    </table>

    <!-- 회원 정보 수정 페이지로 이동하는 링크 -->
    <a href="/my-main/MemberUpdateForm.up">정보 수정하기</a>
</body>
</html>