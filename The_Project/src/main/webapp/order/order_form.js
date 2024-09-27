
// 배송지 변경 팝업창
function openPopup_AddressChange() {
    var popupURL = "https://kh-academy.co.kr/login/login.kh";

    var popupProperties = "width=600, height=700 ,scrollbars=yes";

    window.open(popupURL, "Popup", popupProperties);
}

// 배송 메세지 선택 selectbox
document.addEventListener('DOMContentLoaded', () => {
    const btn = document.querySelector(".sheet-message-text");
    const list = document.querySelector(".sheet-message-selectbox");

    // 요소가 존재하는지 확인
    if (!btn || !list) {
        console.error("버튼이나 리스트 요소를 찾을 수 없습니다.");
        return;
    }

// 버튼을 누르면 화살표 방향이 바뀌어야 한다. 
// 셀렉트 박스 옵션이 담긴 ul 이 나와야한다. 
// 클릭했을 때 그 클릭된 요소가 박스에 보여야 한다. 

    btn.addEventListener('click', () => {
        btn.classList.toggle('on');
        list.classList.toggle('on');
    });

    list.addEventListener('click', (e) => {
        if (e.target.nodeName === 'BUTTON') {
            btn.innerHTML = e.target.innerHTML;
            list.classList.remove('on');
            btn.classList.remove('on');
        }
    });
});
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