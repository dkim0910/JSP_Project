// 구매 상품 수량
const selectElement = document.getElementById('quantity');

    // 수량 옵션을 1부터 10까지 생성
    for (let i = 1; i <= 10; i++) {
        const option = document.createElement('option');
        option.value = i;
        option.text = `${i}`;
        selectElement.appendChild(option);
    }

// 총 수량과 가격 업데이트
function updateTotalNumber() {
    let totalNumber = document.getElementById('total-number');
    totalNumber.innerHTML = '총 ' + selectElement.value + '개';
}
// 처음 로드 시 초기값 설정
updateTotalNumber();
// 수량이 변경될 때마다 업데이트
selectElement.addEventListener('change', updateTotalNumber);

// 하단의 구매하기
document.addEventListener('DOMContentLoaded', function() {
    const b_button = document.querySelector('.bottom-parchase-buttons');
    const buyNowButton = document.querySelector('.buy-now');

    // 하단 구매하기 클릭
    b_button.addEventListener('click', function() {
        buyNowButton.click();
    });
});

// 스크롤 시 하단의 구매하기 버튼 보이기
document.addEventListener('DOMContentLoaded', function() {
    const b_button = document.querySelector('.bottom-parchase-buttons');
    let isVisible = false;  // 버튼이 보이는 상태인지 추적
    
    // 처음에는 숨김
    b_button.style.visibility = 'hidden';
    b_button.style.opacity = '0';
    b_button.style.transition = 'opacity 0.5s'; // 부드러운 전환 효과

    window.addEventListener('scroll', function() {
        const scrollPosition = window.scrollY; // 현재 스크롤 위치 (y축)
        const triggerPosition = 600; // 버튼을 나타낼 스크롤 위치 (500px 예시)

        // 스크롤이 500px 이상 내려갔을 때 버튼을 보이도록 함
        if (scrollPosition >= triggerPosition) {
            b_button.style.visibility = 'visible';
            b_button.style.opacity = '1'; // 보이게 함
            isVisible = true;
        } else {
            b_button.style.opacity = '0'; // 숨김
            isVisible = false;
            // opacity 전환이 끝난 후 visibility를 hidden으로 설정
            setTimeout(() => {
                if (!isVisible) {  // 버튼이 여전히 안 보일 상태라면
                    b_button.style.visibility = 'hidden';
                }
            }, 500); // opacity 전환 시간과 동일하게 설정

        }
    });
});

