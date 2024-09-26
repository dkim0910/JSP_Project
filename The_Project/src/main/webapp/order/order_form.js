
// 배송지 변경 팝업창
function openPopup_AddressChange() {
    var popupURL = "https://kh-academy.co.kr/login/login.kh";

    var popupProperties = "width=600, height=700 ,scrollbars=yes";

    window.open(popupURL, "Popup", popupProperties);
}

//  쿠폰 적용 팝업창
function openPopup_couponApply() {
    var popupURL = "https://www.daum.net";

    var popupProperties = "width=400, height=700 ,scrollbars=yes";

    window.open(popupURL, "Popup", popupProperties);
}

// 기타 결제 부분
function toggleOtherPayments(show) {
    var otherPayments = document.getElementById('other-payment-options');
    if (show) {
        otherPayments.style.display = 'block';
    } else {
        otherPayments.style.display = 'none';
    }
}

// 바텀바 2차메뉴 클릭 기능
$(document).ready(function() {
    $('.toggle-icon, .toggle-menu').click(function(event) {
        event.preventDefault(); // 링크 클릭시 페이지 이동 방지
        $(this).parent().next('.submenu').slideToggle(); // 
        $('.submenu').not($(this).parent().next('.submenu')).slideUp(); 
    });
  });
  

                