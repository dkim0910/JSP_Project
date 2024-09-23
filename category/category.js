// 클릭 이벤트를 처리하는 함수 정의
function scrollToSection(event) {
    const sectionId = event.target.getAttribute('data-target');
    document.getElementById(sectionId).scrollIntoView({ behavior: 'smooth' });
}

// 모든 <li> 요소에 이벤트 리스너 추가
document.querySelectorAll('.left-goods-category li').forEach(function(li) {
    li.addEventListener('click', scrollToSection);
});
