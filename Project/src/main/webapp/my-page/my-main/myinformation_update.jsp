<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>회원 정보 수정</title>
</head>
<body>
    <h2>회원 정보 수정</h2>

    <!-- 회원 정보 수정 폼 -->
    <form action="/my-main/MemberUpdate.up" method="post">
        <input type="hidden" name="user_id" value="${member.user_id}" />
        <label>이름: <input type="text" name="user_name" value="${member.user_name}" /></label><br />
        <label>비밀번호: <input type="password" name="user_pw" /></label><br />
        <label>성별: <input type="text" name="user_gender" value="${member.user_gender}" /></label><br />
        <label>전화번호: <input type="text" name="user_phone" value="${member.user_phone}" /></label><br />
        <label>주소: <input type="text" name="user_address" value="${member.user_address}" /></label><br />
        <input type="submit" value="수정하기" />
    </form>
</body>
</html>