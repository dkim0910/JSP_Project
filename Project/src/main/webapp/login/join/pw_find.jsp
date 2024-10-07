<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 | 쇼핑하조</title>
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

<body>
	<form action="/join/pwfind.fr">
		<div class="top-section"></div>
		<div class="form-container">
			<h2>비밀번호 찾기</h2>
				
			<div class="input_row">
				<input type="text" name="user_name" class="input_style" placeholder="이름을 입력하세요."/>
			</div>
			<div class="input_row">
				<input type="text" name="user_phone" class="input_style" placeholder="휴대폰 번호를 입력하세요."/>
			</div>
				
			<div class="input_row">
				<input type="submit" value="비밀번호 찾기" class="btn"/> 
			</div>
			<!-- 하단 링크 (아이디찾기, 로그인, 회원가입) -->
	        <div class="join">
				<a href="id_find.jsp">아이디찾기</a> |
				<a href="login_view.jsp">로그인</a> | 
				<a href="join_view.jsp">회원가입</a>
			</div>
		</div>
	</form>
</body>
</html>