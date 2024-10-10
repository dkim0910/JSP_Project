// 이 펑션이 페이지에서 사이드바에 있는 카테고리 클릭하면 나타내주는 기능의 펑션
function showContent(sectionId) {
	// 모든 섹션 숨기기
	let sections = document.querySelectorAll('.content-section');
	sections.forEach(function(section) {
		section.style.display = 'none';
	});
	// 선택된 섹션만 표시하기
	let sectionToShow = document.getElementById(sectionId);
	if (sectionToShow) {
		sectionToShow.style.display = 'block';
	}
}

// 버튼 클릭시 계속 볼드채로 있는 평션 (클릭 시 사이드바 옵션들 볼드채)
function toggleBold(selectedElement) {
	// 모든 .sidebar-options 요소를 선택
	const options = document.querySelectorAll('.sidebar-options');
	// 모든 요소에서 'bold' 클래스를 제거
	options.forEach(option => {
		option.classList.remove('bold');
	});
	// 클릭한 요소에 'bold' 클래스를 추가
	selectedElement.classList.add('bold');
	// 클릭한 메뉴를 localStorage에 저장
	localStorage.setItem('activeMenu', selectedElement.innerText);
}

// 추적하기 엔터 눌러도 바로 추적하기 버튼 눌린거 처럼 하는거
document.getElementById('order-number').addEventListener('keydown', function(event) {
    if (event.key === 'Enter') {
        document.getElementById('track-button').click(); // 버튼 클릭 이벤트 호출	
    }
});

// 배달 현황 바 나오는 평션
// 버튼 누룰때 마다 1일 씩 줄어들어서 0이되면 배송 완료 나옴 그리고 리셋
document.getElementById('track-button').addEventListener('click', function() {
	const orderNumber = document.getElementById('order-number').value;
	const displayOrderNumber = document.getElementById('display-order-number');
	const trackingInfo = document.getElementById('tracking-info');
	const warningMessage = document.getElementById('warning-message');

	let progress = 0; // 배송 현황 바를 0으로 시작
	let expectedDays = 5; // 5일후 도착

	// 주문번호가 숫자 인지를 확인
	const isNumeric = /^\d+$/.test(orderNumber); // 정규 표현식으로 숫자 체크

	// 주문 번호가 비어있을 경우 경고 메시지 표시
	if (orderNumber == '') {
		warningMessage.style.display = 'block';
		warningMessage.textContent = '주문 번호를 입력해주세요';
		warningMessage.style.color = 'black';
		return; // 함수 종료
	} else if (!isNumeric) {
		// 숫자가 아닌 경우 경고 메시지 표시
		warningMessage.style.display = 'block';
		warningMessage.textContent = '주문 번호는 숫자만 입력할 수 있습니다';
		warningMessage.style.color = 'black';
		return; // 함수 종료
	} else {
		warningMessage.textContent = ''; // 경고 메시지 초기화
	}

	trackingInfo.style.display = 'block';
	displayOrderNumber.textContent = orderNumber;

	const progressBar = document.querySelector('.progress-bar');
	const currentLocation = document.getElementById('current-location');
	const expectedDeliveryDate = document.getElementById('expected-delivery-date');

	// 처음엔 5일로 시작
	expectedDeliveryDate.textContent = `${expectedDays}일 후`;
	progressBar.style.width = '0%'; // 초기값 설정

	const interval = setInterval(() => {
		if (progress < 100) {
			progress += 25; // 25 씩 증가함 
			expectedDays -= 1; // 도착일을 하루씩 줄임

			progressBar.style.width = progress + '%';

			expectedDeliveryDate.textContent = `${expectedDays}일 후`;	// 1씩 줄어드는거 표시하는거

			if (expectedDays == 4) {
				currentLocation.textContent = '물류센터 B';
			}
			if (expectedDays == 3) {
				currentLocation.textContent = '물류센터 C';
			}
			if (expectedDays == 2) {
				currentLocation.textContent = '물류센터 D';
			}

			// 100 이면 배송 완료 나옴
			if (progress >= 100) {
				expectedDeliveryDate.textContent = '배송 완료';
				currentLocation.textContent = '집';
				clearInterval(interval); // 타이머 중지
			}
		}
	}, 1500); // 1.5초에 한번씩 진행바 올라감
});

// 멤버십 바 올라가는거 평션

// 사용자 현재 포인트 예시
const currentPoints = 750; // 현재 포인트
const nextLevelPoints = 1000; // 다음 레벨까지 필요한 포인트 (예: Premium)

// 진행 상태 바 업데이트
const memberBar = document.getElementById('membership-bar');

// 현재 포인트 비율 계산
const progressPercent = (currentPoints / nextLevelPoints) * 100;

// progress-bar의 width 속성을 설정하여 상태바 색을 채움
memberBar.style.width = progressPercent + '%';

// 남은 포인트 계산 후 텍스트 업데이트
const pointsLeft = nextLevelPoints - currentPoints;
document.getElementById('points-left-text').textContent = `다음 등급까지 ${pointsLeft} 포인트가 남았습니다!`;


// 회원 탈퇴 펑션
function showModal() {
	document.getElementById("modal").style.display = "flex";
}

function confirmWithdrawal(confirmed) {
	const modal = document.getElementById("modal");
	modal.style.display = "none"; // 모달 닫기

	if (confirmed) {
		alert("회원 탈퇴가 성공적으로 완료되었습니다.");

		window.location.href = "/byebye.my";
	}

	if (!confirmed) {
		alert("회원 탈퇴를 실패했습니다.");
	}
}

// 로그 아웃 alert 창 
function logout() {
	// 확인 대화상자 표시
	if (confirm("로그 아웃 하시겠습니까?")) {
		// 사용자가 "네"를 클릭한 경우 로그아웃 페이지로 이동
		window.location.href = "/bye.my"; // 로그아웃 페이지의 URL로 변경
	}
	// 사용자가 "아니요"를 클릭한 경우 아무 작업도 하지 않음
}

// 정보 수정 
window.onload = function() {
	let showMyInfo = '<c:out value="${showMyInfo}" />'; // 세션에서 showMyInfo 값을 가져옴

	if (showMyInfo === 'true') {
		// '나의 정보'가 선택된 상태라면 localStorage 값을 유지
		let activeMenu = localStorage.getItem('activeMenu');
		const options = document.querySelectorAll('.sidebar-options');
		options.forEach(option => {
			if (option.innerText === activeMenu) {
				option.classList.add('bold');
			}
		});
	} else {
		// '나의 정보'가 선택되지 않은 상태라면 localStorage 초기화
		localStorage.removeItem('activeMenu');

		// 모든 sidebar-options 요소에서 'bold' 클래스를 제거
		const options = document.querySelectorAll('.sidebar-options');
		options.forEach(option => {
			option.classList.remove('bold');
		});
	}
};

// 정보 수정 텍스트 박스 클릭해도 넘어가지는거 방지하는 평션 (나만 오류남?)


