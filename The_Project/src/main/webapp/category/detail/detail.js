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