<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
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
    
</style>
</head>

<body>
	<form action="pw_find_db.jsp">
		<div class="top-section"></div>
		<div class="form-container">
			<h2>비밀번호 찾기</h2>
				
			<div class="input_row">
				<input type="text" name="username" class="input_style" placeholder="이름을 입력하세요."/>
			</div>
			<div class="input_row">
				<input type="text" name="userphone" class="input_style" placeholder="핸드폰 번호를 입력하세요."/>
			</div>
				
			<div class="input_row">
				<input type="submit" value="비밀번호 찾기" class="btn"/> 
			</div>
			
				
		</div>
	
	</form>
</body>
</html>