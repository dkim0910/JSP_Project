<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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

    /* 모든 입력창에 적용되는 스타일 */
    .input_style {
        width: 100%;
        height: 32px;
        font-size: 15px;
        border: 0;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        background-color: rgb(233, 233, 233);
        margin-bottom: 10px;
    }

    /* 로그인 버튼 스타일 */
    .btn {
        width: 100%;
        height: 40px;
        font-size: 15px;
        border: none;
        color: white;
        border-radius: 12px;
        background-color: rgb(70, 130, 180);
        cursor: pointer;
        margin-top: 10px;
    }

    .btn:hover {
        background-color: rgb(60, 110, 160);
    }
    .btn1{
    	width: 20%;
        height: 30px;
        font-size: 10px;
        border: none;
        color: white;
        border-radius: 12px;
        background-color: rgb(70, 130, 180);
        cursor: pointer;
        margin-top: 10px;
    
    }
    .btn1:hover {
        background-color: rgb(60, 110, 160);
    }

    /* 하단 링크 영역 */
    .join {
        font-size: 13px;
        text-align: center;
    }

    .join a {
        text-decoration: none;
        color: black;
    }

    .join a:hover {
        color: red;
    }

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
</style>
</head>
<body>
	<form action="login_db.jsp" method="post" name="frm">
 <!-- 상단 파란색 배경 영역 -->
    <div class="top-section"></div>

    <!-- 로그인 폼 컨테이너 -->
    <div class="form-container">
        <!-- 제목 -->
        <h2>로그인</h2>

        <!-- 아이디 입력 필드 -->
        <div class="input_row">
            <input type="text" name="userid" class="input_style" placeholder="아이디">
        </div>

        <!-- 비밀번호 입력 필드 -->
			<div class="input_row" style="position: relative;">
				<input type="password" name="userpw" id="userpw" class="input_style" placeholder="비밀번호">
			</div>

			<!-- 비밀번호 확인 버튼 -->
			<div class="input_row_ch">
				<button type="button" id="togglePwBtn" class="btn1">비밀번호 확인</button>
			</div>

			<!-- 로그인 버튼 -->
			<div class="input_row">
				<input type="submit" value="로그인" class="btn" onclick="login()">
			</div>
			<br />
			<!-- 하단 링크 (아이디/비밀번호 찾기, 회원가입) -->
			<div class="join">
				<a href="id_find.jsp">아이디찾기</a> |
				<a href="pw_find.jsp">비밀번호찾기</a> |
				<a href="join_view.jsp">회원가입</a>
			</div>
		</div>
	</form>

	<script src="../js/user.js"></script>
	<script>
		// 비밀번호 확인 버튼에 마우스 올리면 비밀번호 보이기
		const togglePwBtn = document.getElementById('togglePwBtn');
		const pwField = document.getElementById('userpw');

		// 마우스가 버튼 위에 있을 때 비밀번호를 보이게 설정
		togglePwBtn.addEventListener('mouseover', function () {
			pwField.setAttribute('type', 'text');  // 비밀번호 보이기
		});

		// 마우스가 버튼에서 벗어나면 비밀번호를 다시 숨기기
		togglePwBtn.addEventListener('mouseout', function () {
			pwField.setAttribute('type', 'password');  // 비밀번호 숨기기
		});
	</script>
</body>
</html>







