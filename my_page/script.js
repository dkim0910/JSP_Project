function showContent(sectionId) {
    // 모든 콘텐츠 섹션을 숨깁니다.
    var sections = document.querySelectorAll('.content-section');
    sections.forEach(function(section) {
        section.style.display = 'none';
    });

    // 선택된 섹션을 표시합니다.
    var sectionToShow = document.getElementById(sectionId);
    if (sectionToShow) {
        sectionToShow.style.display = 'block';
    }
}
