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
	    width: 100%;
	    height: 46px; /* 입력창 크기 증가 */
	    font-size: 16px;
	    border: 1px solid #ddd; /* 테두리 스타일 */
	    border-radius: 8px;
	    outline: none;
	    padding-left: 14px;
	    background-color: #fafafa;
	    margin-bottom: 20px; /* 입력창 사이 간격 증가 */
	    transition: border-color 0.3s;
	}
	
	.input_style:focus {
	    border-color: #999; /* 포커스 시 테두리 색 변경 */
	}

    /* 각 입력 필드 간의 간격을 위한 클래스 */
    .input_row {
        margin-bottom: 10px; /* 입력 필드 사이의 간격 */
    }

    /* 성별 선택 영역을 위한 스타일 */
    .gender_section {
        display: flex; /* 라디오 버튼을 가로로 정렬 */
        align-items: center; /* 수직 중앙 정렬 */
        margin-bottom: 10px; /* 성별 선택과 다른 요소 사이의 간격 */
    }

    /* 성별 선택 라벨 사이의 간격 설정 */
    .gender_section label {
        margin-right: 10px; /* 라디오 버튼 간 간격 */
    }

    /* 회원가입 버튼 스타일 */
    .submit_button {
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

    /* 회원가입 버튼에 마우스를 올렸을 때 스타일 */
    .submit_button:hover {
       background-color: #555; /* 버튼 호버 시 색 변경 */
    }
    .check{
    	color: black; /* 버튼 텍스트 색상 흰색 */
        border: none; /* 테두리 제거 */
        border-radius: 10px; /* 모서리 둥글게 */
        cursor: pointer; /* 마우스를 올렸을 때 포인터 모양으로 변경 */
        background-color: rgb(70, 130, 180);
        height: 40px; /* 버튼 높이 */
        color: white; /* 버튼 텍스트 색상 흰색 */
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
		<div class="input_row">
			<p id="text"></p>
	            <input id="userid" class="input_style" type="text" name="userid" placeholder="아이디">
	            <input type="button" value="중복확인" onclick="checkId();"/>
	        </div>
	        
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
	            <label for="male">남자</label>
	            <input id="male" type="radio" name="usergender" value="M" checked>
	            
	            <label for="female">여자</label>
	            <input id="female" type="radio" name="usergender" value="W">
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




