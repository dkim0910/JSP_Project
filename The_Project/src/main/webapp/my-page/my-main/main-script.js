

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
}

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


