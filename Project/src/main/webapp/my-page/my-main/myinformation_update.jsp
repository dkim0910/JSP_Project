<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

</head>
<body>
    <c:set var="member" value="${requestScope.member}"/> <!-- requestScope에서 member 설정 -->
    <div class="container">
        <h1>정보 수정</h1>
        <form action="/my-main/MemberUpdate.up" method="post"> <!-- 수정 액션 호출 -->
            <input type="hidden" name="user_id" value="${member.user_id}"/> <!-- 아이디는 수정 불가 -->
            <div>
                <label for="user_name">이름:</label>
                <input type="text" id="user_name" name="user_name" value="${member.user_name}" required/>
            </div>
            <div>
                <label for="user_pw">비밀번호:</label>
                <input type="password" id="user_pw" name="user_pw" required/>
            </div>
            <div>
                <label for="user_address">주소:</label>
                <input type="text" id="user_address" name="user_address" value="${member.user_address}" required/>
            </div>
            <div>
                <label for="user_phone">전화번호:</label>
                <input type="text" id="user_phone" name="user_phone" value="${member.user_phone}" required/>
            </div>
            <div>
                <label for="user_gender">성별:</label>
                <select id="user_gender" name="user_gender" required>
                    <option value="남성" <c:if test="${member.user_gender == '남성'}">selected</c:if>>남성</option>
                    <option value="여성" <c:if test="${member.user_gender == '여성'}">selected</c:if>>여성</option>
                </select>
            </div>
            <div>
                <button type="submit">수정 완료</button>
            </div>
        </form>
        <a href="myinformation.jsp">취소</a> <!-- 취소 시 myinformation.jsp로 이동 -->
    </div>
</body>
</html>