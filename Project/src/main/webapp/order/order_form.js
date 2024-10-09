// 배송지 변경 
function new_execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				/*-- // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				 if(extraAddr !== ''){
					 extraAddr = ' (' + extraAddr + ')';
				 }
				 // 조합된 참고항목을 해당 필드에 넣는다.
				 document.getElementById("input_extraAddress").value = extraAddr;
			 --*/
			} else {
				//   document.getElementById("input_extraAddress").value = '';
			}

			// 주소 정보를 해당 필드에 넣는다.
			document.getElementById("input_address").value = addr;
			// 커서를 주소 필드로 이동한다.
			document.getElementById("input_address").focus();
		}
	}).open();
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

// 기타 결제 부분
function toggleOtherPayments(show) {
	var otherPayments = document.getElementById('other-payment-options');
	if (show) {
		otherPayments.style.display = 'block';
	} else {
		otherPayments.style.display = 'none';
	}
}
// 기타 -> 카드 결제 부분
function togglePaymentCard(show) {
	var listPayments = document.getElementById('list-payment');
	if (show) {
		listPayments.style.display = 'block';
	} else {
		listPayments.style.display = 'none';
	}
}
//기타 -> 카드결제 클릭 부분
document.querySelectorAll('.card-selection-input').forEach((input) => {
	input.addEventListener('change', function() {
		document.querySelectorAll('.list-payment-label').forEach((label) => {
			label.style.border = '1px solid #eee';  // 모든 label을 초기화
		});
		if (this.checked) {
			this.parentElement.style.border = '1px solid black';  // 선택된 label에 테두리 적용
		}
	});
});
/*
// 결제하기 버튼
function purchaseItem(productId, userId) {
    const form = document.createElement('form');
    form.action = '/order/order_confirmed.or_c';
    form.method = 'post';

    // PRODUCT_ID 추가
    const productIdInput = document.createElement('input');
    productIdInput.type = 'hidden';
    productIdInput.name = 'PRODUCT_ID[]'; // 배열 형태로 전송
    productIdInput.value = productId;
    form.appendChild(productIdInput);

    // 사용자 ID 추가
    const userIdInput = document.createElement('input');
    userIdInput.type = 'hidden';
    userIdInput.name = 'user_id';
    userIdInput.value = userId; // JSP 변수 사용
    form.appendChild(userIdInput);

    document.body.appendChild(form);
    form.submit(); // 폼 전송
}
*/
// 장바구니 상품 결제하기
// 선택된 항목 구매
function purchasecartItems() {
    const selectedItems = document.querySelectorAll('.item-purchase-list');
		// 구매할 상품ID들을 배열에 저장
        let itemIds = Array.from(selectedItems).map(item => item.value);
		// 배열의 값들을 문자열 형태로 변환하고 전송
        window.location.href = `/order/cart_to_order.or_c?itemIds=${itemIds.join(",")}`;
}

// 바텀바 2차메뉴 클릭 기능
$(document).ready(function() {
	$('.toggle-icon, .toggle-menu').click(function(event) {
		event.preventDefault(); // 링크 클릭시 페이지 이동 방지
		$(this).parent().next('.submenu').slideToggle(); // 
		$('.submenu').not($(this).parent().next('.submenu')).slideUp();
	});
});


function setupCardSelection() {
	$('.card-selection-input').on('click', function() {
		// 모든 카드의 border를 초기화
		$('.list-payment li').css('border', '1px solid #eee');

		// 선택된 카드의 border를 변경
		$(this).closest('li').css('border', '1px solid black');
	});
}

// 함수 호출
setupCardSelection();