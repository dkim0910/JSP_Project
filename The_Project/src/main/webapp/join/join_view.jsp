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
    background-color: #f4f4f4;
    font-family: Arial, sans-serif;
	}
	
	/* 상단 영역 (여백 추가) */
	.top-section {
	    height: 100px;
	    width: 100%;
	}
	
	/* 폼 컨테이너 */
	.form-container {
	    width: 450px;
	    margin: 50px auto;
	    background-color: white;
	    padding: 50px;
	    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	    border-radius: 12px;
	    box-sizing: border-box;
	}
	
	/* 모든 입력창에 적용되는 스타일 */
	.input_style {
	    width: 100%;
	    height: 46px;
	    font-size: 16px;
	    border: 1px solid #ddd;
	    border-radius: 8px;
	    outline: none;
	    padding-left: 14px;
	    background-color: #fafafa;
	    margin-bottom: 20px;
	    transition: border-color 0.3s;
	}
	
	.input_style:focus {
	    border-color: #999;
	}
	
	/* 중복확인 버튼 스타일 */
	.check_button {
	    width: 100px;
	    height: 40px; /* 중복확인 버튼도 입력창과 동일한 높이 */
	    font-size: 16px;
	    background-color: #222;
	    color: white;
	    border: none;
	    border-radius: 8px;
	    cursor: pointer;
	    transition: background-color 0.3s;
	    margin-left: 10px; /* 아이디 입력 필드와 간격 */
	}
	
	.check_button:hover {
	    background-color: #555;
	}
	
	/* 성별 선택 영역 */
	.gender_section {
	    display: flex;
	    align-items: center;
	    margin-bottom: 20px;
	}
	
	/* 성별 라벨과 버튼 스타일 */
	.gender_section label {
	    margin-right: 10px;
	    font-size: 16px;
	    color: #555;
	}
	
	.gender_section input[type="radio"] {
	    appearance: none;
	    background-color: #ddd;
	    border: 1px solid #999;
	    width: 20px;
	    height: 20px;
	    border-radius: 50%;
	    outline: none;
	    cursor: pointer;
	    transition: background-color 0.3s, border-color 0.3s;
	    margin-right: 10px;
	}
	
	.gender_section input[type="radio"]:checked {
	    background-color: #222;
	    border-color: #222;
	}
	
	/* 회원가입 버튼 스타일 */
	.submit_button {
	    width: 100%;
	    height: 48px;
	    font-size: 16px;
	    border: none;
	    color: white;
	    border-radius: 8px;
	    background-color: #222;
	    cursor: pointer;
	    margin-top: 10px;
	    transition: background-color 0.3s;
	}
	
	.submit_button:hover {
	    background-color: #555;
	}
	
	.submit_button:hover {
	    background-color: #555;
	}
        /* 화면 크기에 따라 스타일을 조정하는 미디어 쿼리 */
    @media screen and (max-width: 600px) {
        .form-container {
            width: 80%; /* 작은 화면에서는 폼 너비를 80%로 설정 */
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
	<form action="join_db.jsp" method="post" name="joinForm">
		<!-- 상단 회색 배경 영역 -->
	    <div class="top-section"></div>
	    <div class="form-container">
	    <div class="input_row">
	            <h2>회원가입</h2>
	    </div>
	    <!-- 아이디 입력 필드 -->
		<!-- 아이디 입력 필드와 중복확인 버튼 -->
			<div class="input_row">
			    <p id="text"></p>
			    <input id="USER_id" class="input_style" type="text" name="USER_id" placeholder="아이디">
			    <input type="button" value="중복확인" class="check_button" onclick="checkId();"/>
			</div>
	        <br/>
			<!-- 비밀번호 입력 필드 -->
	        <div class="input_row">
	            <input id="userpw" class="input_style" type="password" name="userpw" placeholder="비밀번호">
	        </div>
	        
	        <!-- 비밀번호 확인 필드 -->
	        <div class="input_row">
	            <input id="userpw_re" class="input_style" type="password" name="userpw_re" placeholder="비밀번호 확인">
	        </div>
	        
	        <!-- 이름 입력 필드 -->
	        <div class="input_row">
	            <input id="username" class="input_style" type="text" name="username" placeholder="이름">
	        </div>
	        
	        <!-- 휴대폰 번호 입력 필드 -->
	        <div class="input_row">
	            <input id="userphone" class="input_style" type="text" name="userphone" placeholder="휴대폰 번호">
	        </div>
	        <br/>
	        
	        
			
			<!-- 성별 선택 필드 -->
			<div class="input_row gender_section">
			    <input id="male" type="radio" name="usergender" value="M" checked>
			    <label for="male">남자</label>
			    
			    <input id="female" type="radio" name="usergender" value="W">
			    <label for="female">여자</label>
			</div>
	        <!-- 회원가입 버튼 -->
	        <div class="input_row">
	            <input type="button" value="회원가입" class="submit_button" onclick="sendit()"/> 
	        </div>
		</div>	        
	</form>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/user.js"></script>
</html>




