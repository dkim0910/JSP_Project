// 전체 선택 및 해제 기능
function toggleSelectAll(source) {
    const checkboxes = document.querySelectorAll('.item-checkbox');
    checkboxes.forEach(checkbox => {
        checkbox.checked = source.checked;
    });
}

/*// 선택된 항목 삭제 기능
function deleteSelectedItems() {
    const selectedItems = document.querySelectorAll('.item-checkbox:checked');
    if (selectedItems.length > 0) {
        let itemIds = Array.from(selectedItems).map(item => item.value);
        window.location.href = deleteSelectedItems.jsp?itemIds=${itemIds.join(",")};
    }
}*/

// 옵션 변경 모달 열기
function openOptionModal(itemId) {
    document.getElementById('optionItemId').value = itemId;
    document.getElementById('optionModal').style.display = 'block';
}

// 쿠폰 사용 모달 열기
function openCouponModal(itemId) {
    document.getElementById('couponItemId').value = itemId;
    document.getElementById('couponModal').style.display = 'block';
}

// 모달 닫기
function closeModal(modalId) {
    document.getElementById(modalId).style.display = 'none';
}

/*// 구매하기 기능 (선택된 항목 구매)
function purchaseItems() {
    const selectedItems = document.querySelectorAll('.item-checkbox:checked');
    if (selectedItems.length > 0) {
        let itemIds = Array.from(selectedItems).map(item => item.value);
        window.location.href = purchaseItems.jsp?itemIds=${itemIds.join(",")};
    } else {
        alert('구매할 항목을 선택하세요.');
    }
}*/
