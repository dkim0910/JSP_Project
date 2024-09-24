// 스크롤 함수
function scrollToSection(event) {
    const sectionId = event.target.getAttribute('data-target');
    document.getElementById(sectionId).scrollIntoView({ 
        behavior: 'smooth', 
        block: "center"
    });
}

// 모든 <li> 요소에 이벤트 리스너 추가
document.querySelectorAll('.left-goods-category li').forEach(function(li) {
    li.addEventListener('click', scrollToSection);
});

// Intersection Observer를 사용해 각 섹션의 가시성을 추적
const sections = document.querySelectorAll('.goods-category');
const navItems = document.querySelectorAll('.left-goods-category li');

window.addEventListener('scroll', () => {
    let currentSection = '';

    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        const sectionHeight = section.offsetHeight;

        if (window.scrollY >= sectionTop - sectionHeight / 2 && window.scrollY < sectionTop + sectionHeight / 2) {
            currentSection = section.getAttribute('id');
        }
    });

    // 각 <li> 항목의 상태 업데이트
    navItems.forEach(li => {
        li.classList.remove('active');
        if (li.getAttribute('data-target') === currentSection) {
            li.classList.add('active');
        }
    });
});