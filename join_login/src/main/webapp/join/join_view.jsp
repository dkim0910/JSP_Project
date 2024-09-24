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
        margin: 0; /* 기본 margin 제거 */
        background-color: white; /* 페이지 배경 흰색 */
    }

    
    .top-section {
        background-color:  rgb(70, 130, 180); 
        height: 150px; /* 높이 설정 */
        width: 100%; /* 페이지 전체 너비 */
    }

    /* 폼 컨테이너 스타일 */
    .form-container {
        width: 480px; /* 폼의 너비 */
        margin: auto; /* 중앙 정렬 */
        margin-top: -100px; /* 상단 배경과 겹치게 위치 */
        font-size: 15px; /* 폰트 크기 */
        background-color: white; /* 폼 배경 흰색 */
        padding: 20px; /* 내부 여백 */
        border-radius: 10px; /* 모서리 둥글게 */
        position: relative; /* 위치 설정 */
    }

    /* 모든 입력창에 적용되는 스타일 */
    .input_style {
        width: 100%; /* 입력창 너비를 폼의 너비에 맞춤 */
        height: 32px; /* 입력창 높이 */
        font-size: 15px; /* 폰트 크기 */
        border: 0; /* 입력창 테두리 제거 */
        border-radius: 15px; /* 둥근 모서리 */
        outline: none; /* 입력 시 기본 외곽선 제거 */
        padding-left: 10px; /* 입력창 왼쪽 패딩 */
        background-color: rgb(233, 233, 233); /* 배경색 설정 */
        margin-bottom: 10px; /* 입력창 간격 추가 */
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
        width: 100%; /* 버튼의 너비를 100%로 설정해 폼 너비와 맞춤 */
        height: 40px; /* 버튼 높이 */
        background-color: rgb(70, 130, 180); /* 버튼 배경색 파란색으로 설정 */
        color: white; /* 버튼 텍스트 색상 흰색 */
        border: none; /* 테두리 제거 */
        border-radius: 20px; /* 모서리 둥글게 */
        font-size: 16px; /* 폰트 크기 */
        cursor: pointer; /* 마우스를 올렸을 때 포인터 모양으로 변경 */
        margin-top: 10px; /* 버튼과 다른 입력 필드 간의 간격 */
    }

    /* 회원가입 버튼에 마우스를 올렸을 때 스타일 */
    .submit_button:hover {
        background-color: rgb(60, 110, 160); /* 버튼의 배경색이 조금 더 어두워짐 */
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




