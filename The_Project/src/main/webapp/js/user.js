/**
 * 
 */
// 회원가입 폼 value 확인하는 자바스크립트
function sendit(){
	let frm = document.joinForm;
	let USER_id = frm.USER_id;
	let userpw = frm.userpw;
	let userpw_re = frm.userpw_re;
	let username = frm.username;
	let userphone = frm.userphone;
	
	// 아이디 빈값 처리
	if( USER_id.value == "" ){
		alert("아이디를 입력하세요");
		USER_id.focus();
		return false;
	}
	
	// 아이디는 5자리 이상, 16자 미만
	if( USER_id.value.length <= 4 
			|| USER_id.value.length >= 16 ){
		alert("아이디는 5자리 이상, 16자 미만으로 작성해주세요");
		USER_id.focus();
		return false;
	}
		
	// 비밀번호 빈값 처리
	if( userpw.value == "" ){
		alert("패스워드를 입력하세요");
		userpw.focus();
		return false;
	}
	
	// 비밀번호 8자리 이상 처리
	if( userpw.value.length < 8 ){
		alert("비밀번호는 8자 이상으로 입력하세요");
		userpw.focus();
		return false;
	}
	
	// 비밀번호 == 비밀번호 확인 처리
	if( userpw.value != userpw_re.value ){
		alert("비밀번호 확인이 다릅니다");
		userpw_re.focus();
		return false;
	}
	
	// 이름 빈값 처리
	if( username.value == "" ){
		alert("이름을 입력하세요");
		username.focus();
		return false;
	}
	
	// 휴대폰 번호 빈값처리
	if( userphone.value == "" ){
		alert("휴대폰 번호를 입력하세요");
		userphone.focus();
		return false;
	}
	
	frm.submit();
}

function login(){
	let frm = document.frm;
	let USER_id = frm.USER_id;
	let userpw = frm.userpw;
	
	// 아이디 빈값 체크
	if(USER_id.value == ""){
		alert("아이디를 입력하세요!");
		USER_id.focus();
		return false;
	}
	
	// 비밀번호 빈값 체크
	if(userpw.value == ""){
		alert("비밀번호를 입력하세요!");
		userpw.focus();
		return false;
	}	
	
	frm.submit();
}

function checkId(){
	let USER_id = document.getElementById("USER_id").value;
	if( USER_id == "" ){
		alert("아이디를 입력해주세요");
		USER_id.focus();
		return false;
	} else {
		// ajax 통신으로 id 중복체크
		// get, idcheck.jsp?USER_id=USER_id
		let xhr = new XMLHttpRequest();
		xhr.open("GET", "idcheck.jsp?USER_id="+USER_id, true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status == 200 
				&& xhr.readyState == XMLHttpRequest.DONE){
				// alert(xhr.responseText);	
				if(xhr.responseText.trim() == "ok"){
					document.getElementById("text").innerHTML
					= "사용할 수 있는 아이디 입니다.";
				} else {
					document.getElementById("text").innerHTML
					= "중복된 아이디 입니다. ";
				}
			}
		}
	}	
}





