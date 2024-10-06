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
// 페이지 로드 시 localStorage 값 확인 및 적용(볼드체 적용 목적)
window.onload = function() {
    let activeMenu = localStorage.getItem('activeMenu');
    
    if (activeMenu) {
        // 저장된 메뉴 텍스트와 일치하는 요소를 찾아서 bold 적용
        const options = document.querySelectorAll('.sidebar-options');
        options.forEach(option => {
            if (option.innerText === activeMenu) {
                option.classList.add('bold');
            }
        });
    }
};


// 배달 현황 바 나오는 평션

document.getElementById('track-button').addEventListener('click', function() {
	const orderNumber = document.getElementById('order-number').value;

	// Display the tracking info
	document.getElementById('display-order-number').innerText = orderNumber;
	document.getElementById('tracking-info').style.display = 'block'; // Show tracking info

	// Update the progress bar (example: halfway for demo purposes)
	const progressBar = document.querySelector('.progress-bar');
	progressBar.style.width = '50%'; // Adjust as needed for the actual status
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




