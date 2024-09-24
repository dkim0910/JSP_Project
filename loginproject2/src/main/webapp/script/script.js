// 메뉴바 클릭 이벤트
$(document).ready(function() {
  // 모든 메뉴 항목에 클릭 이벤트 추가
  $('#menu1 li a').on('click', function(e) {
      e.preventDefault();
      
      // 모든 메뉴 항목에서 active 클래스 제거
      $('#menu1 li a').removeClass('active');
      
      // 클릭된 메뉴 항목에 active 클래스 추가
      $(this).addClass('active');
  });
  
  $('#menu1 li a').first().addClass('active');
});

// 배너 fade-in, fade-out 기능
function SliderBox__init() {
	let SliderBox1__idx = 0;

	setInterval(function() {
		$('.slider-box-1').attr('data-index', ++SliderBox1__idx % 5);
	}, 3000);
}

SliderBox__init();

// 바텀바 2차메뉴 클릭 기능
$(document).ready(function() {
  $('.toggle-icon, .toggle-menu').click(function(event) {
      event.preventDefault(); // 링크 클릭시 페이지 이동 방지
      $(this).parent().next('.submenu').slideToggle(); // 해당 submenu 토글
      $('.submenu').not($(this).parent().next('.submenu')).slideUp(); // 다른 submenu는 닫기
  });
});