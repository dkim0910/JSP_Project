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
    <div class="container">
        <h1>회원 정보 수정</h1>
        <form action="/my-main/MemberUpdate.up" method="post" onsubmit="return checkForm()">
            <table border="1">
                <tr>
                    <th>아이디 (변경 불가)</th>
                    <td>
                        <input type="text" name="user_id" value="${member.user_id}" readonly />
                    </td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td>
                        <input type="text" name="user_name" value="${member.user_name}" />
                    </td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td>
                        <input type="password" name="user_pw" placeholder="새 비밀번호를 입력하세요" />
                    </td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td>
                        <input type="text" name="user_address" value="${member.user_address}" />
                    </td>
                </tr>
                <tr>
                    <th>전화번호</th>
                    <td>
                        <input type="text" name="user_phone" value="${member.user_phone}" />
                    </td>
                </tr>
                <tr>
                    <th>성별</th>
                    <td>
                        <select name="user_gender">
                            <option value="M" ${member.user_gender == 'M' ? 'selected' : ''}>남성</option>
                            <option value="F" ${member.user_gender == 'F' ? 'selected' : ''}>여성</option>
                        </select>
                    </td>
                </tr>
            </table>
            <input type="submit" value="정보 수정" />
        </form>
    </div>
	
    <script>
        function checkForm() {
            // 기본적으로 모든 필드를 전송하게 하고, 비밀번호는 빈 값이면 전송하지 않음
            var pwField = document.querySelector("input[name='user_pw']");
            if (pwField.value.trim() === "") {
                pwField.disabled = true;  // 비밀번호 입력하지 않았으면 서버로 보내지 않음
            }
            return true;  // 폼 제출 허용
        }
    </script>
</body>
</html>