function createQuantityOptions(stock) {
    const selectElement = document.createElement('select');
    selectElement.className = 'quantity';
    selectElement.onchange = updateQuantity; // this 사용 안 함

    for (let i = 0; i <= stock; i++) {
        const option = document.createElement('option');
        option.value = i;
        option.textContent = i;
        selectElement.appendChild(option);
    }

    return selectElement;
}

function updateQuantity(event) {
    const selectElement = event.target;
    const quantity = selectElement.value;
    const row = selectElement.closest('tr');
    console.log(`주문 번호: ${row.cells[0].innerText}, 선택한 수량: ${quantity}`);
}

// 각 행에 대해 남은 수량에 맞는 드롭다운 생성
document.querySelectorAll('.orderlist tbody tr').forEach(row => {
    const stockQuantity = parseInt(row.querySelector('.stock-quantity').textContent);
    const selectElement = createQuantityOptions(stockQuantity);
    row.cells[2].appendChild(selectElement);  // 수량 열에 드롭다운 추가
});
