<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

</head>
<body>
    <form action="/my-main/MemberUpdate.up" method="post">
    <table border="1">
        <thead>
            <tr>
                <th>항목</th>
                <th>정보</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>이름</td>
                <td><input type="text" name="user_name" value="${member.user_name}" /></td>
            </tr>
            <tr>
                <td>아이디</td>
                <td><input type="text" name="user_id" value="${member.user_id}" readonly /></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" name="user_phone" value="${member.user_phone}" /></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="user_address" value="${member.user_address}" /></td>
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    <select name="user_gender">
                        <option value="M" <c:if test="${member.user_gender == 'M'}">selected</c:if>>남성</option>
                        <option value="F" <c:if test="${member.user_gender == 'F'}">selected</c:if>>여성</option>
                    </select>
                </td>
            </tr>
        </tbody>
    </table>
    <input type="submit" value="정보 수정" />
</form>
</body>
</html>