<<<<<<< HEAD
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
=======
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.CartItem" %> <!-- CartItem 객체는 실제 데이터베이스에서 불러온 상품 정보를 담는 클래스 -->

<!DOCTYPE html>
<html lang="ko">
>>>>>>> branch 'main' of https://github.com/dkim0910/JSP_Project.git
<head>
    <title>장바구니</title>
    <style>
<<<<<<< HEAD

    
    
    @font-face {
	font-family: 'GmarketSansMedium';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}

html>body {
	font-family: 'GmarketSansMedium';
	text-underline-position: under;
}

body {
    background-color: #f7f7f7;
    color: #333;
    margin: 0; /* Remove default body margin */
    font-size: large;
}

.container {
    max-width: 1600px;
    box-sizing: border-box; /* width + padding <= max-width */
    margin: 0 auto; /* Center the container */
    padding: 0px 40px 20px; /* Top and bottom padding, with side padding */
    background-color: #fff;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

h1 {
    margin: 0; /* Remove margin from h1 */
    padding: 10px 0; /* Add padding if needed for spacing */
}

.product-info {
    display: flex;
    flex-direction: column; 
    align-items: center; 
}

/* 이미지 크기 변경 */
.product-image {
    width: 300px; /* Smaller width */
    height: 300px; /* Smaller height */
    object-fit: cover; /* Maintain aspect ratio */
    border-radius: 10px;
    margin-bottom: 10px;
}

table {
    width: 100%; 
    border-collapse: collapse; 
}

th, td {
    padding: 10px; 
    text-align: center; 
    border-bottom: 1px solid #ddd; 
}

th {
    background-color: #f0f4f8; 
}

.footer {
    text-align: center;
    padding: 20px;
    background-color: black;
    color: #999999;
    border-top: 2px solid #ff4d4d;
}

.footer p {
    margin: 5px 0;
}


.button-back-page {
    background: none; /* 배경색 제거 */
    border: none; /* 테두리 제거 */
    cursor: pointer; /* 포인터 커서 */
    margin-right: 10px; /* h1과의 간격 */
    font-size: 2.5rem; /* h1과 동일한 크기로 설정 */
    color: #ffffff; /* 텍스트 색상 */
    display: flex; /* flexbox로 중앙 정렬 */
    align-items: center; /* 세로 중앙 정렬 */
    justify-content: center; /* 가로 중앙 정렬 */
    padding: 0; /* 기본 패딩 제거 */
    line-height: 1; /* 줄 높이 설정 */
  text-decoration: none; /* 밑줄 제거 */
}

.header {
    display: flex; /* flexbox 레이아웃 적용 */
    align-items: center; /* 세로 중앙 정렬 */
    padding: 20px; /* 상하좌우 여백 */
    background-color: black; /* 배경색 */
    color: #ffffff; /* 텍스트 색상 */
    border-bottom: 2px solid #ff4d4d; /* 하단 경계선 */
    position: relative; /* 절대 위치 요소를 포함하기 위해 설정 */
    padding-right: 130px; /* 오른쪽 패딩 */
}

.refund-button {
    background-color: black;
    color: #ffffff;
    padding: 10px 20px;
    border-radius: 20px;
    text-align: center;
}

.refund-form-section {
    padding: 40px 20px 55px;
    display: none;
    background-color: #f7f7f7;
    border-top: 2px solid #ff4d4d;
}
    
    
        /* 기본 스타일링 */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }
        
        .header {
            
            padding: 10px;
            display: flex;
            justify-content: space-between;
        }

        .cart {
            padding: 20px;
        }

        .cart-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }

        .item-details {
            flex-grow: 1;
            margin-left: 10px;
        }

        button {
            padding: 5px 10px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
            margin-left: 10px;
        }

        button:hover {
            background-color: #555;
        }

        /* 구매하기 버튼 스타일 */
        .purchase-button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .purchase-button:hover {
            background-color: #0056b3;
        }

        /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
            background-color: #fff;
            margin: 15% auto;
            padding: 20px;
            width: 80%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
=======
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            background-color: #fff;
            border-bottom: 1px solid #ddd;
        }
        .header button {
            background: none;
            border: none;
            font-size: 18px;
            cursor: pointer;
        }
        .header h1 {
            margin: 0;
            font-size: 20px;
        }
        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            background-color: #fff;
            margin-top: 10px;
        }
        .cart-item img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            margin-right: 15px;
        }
        .cart-item-info {
            display: flex;
            align-items: center;
            width: 100%;
        }
        .cart-item-info div {
            margin-left: 15px;
        }
        .cart-item-actions {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }
        .total-summary {
            padding: 15px;
            background-color: #fff;
            border-top: 1px solid #ddd;
            margin-top: 10px;
        }
        .total-summary h2 {
            font-size: 18px;
            margin: 0;
            text-align: right;
        }
        .buy-now {
            display: block;
            width: 100%;
            padding: 15px;
            background-color: #ff5a00;
            color: white;
            text-align: center;
            font-size: 18px;
            text-decoration: none;
            margin-top: 10px;
>>>>>>> branch 'main' of https://github.com/dkim0910/JSP_Project.git
            cursor: pointer;
        }
    </style>
</head>
<<<<<<< HEAD
<body style="cursor: default;">

 <header class="header">
            <a href="../../my-page/my-main/my-page-main.html" class="button-back-page" aria-label="이전 페이지로 이동">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path
                        d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005"
                        stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>
            <h1 style="flex-grow: 1; text-align: center;">장바구니</h1>
            <p></p>
        </header>

<!-- 상단 뒤로가기 및 홈 버튼 -->


<!-- 장바구니 항목 전체 선택 및 삭제 -->
<div class="cart">
    <div class="cart-header">
        <div>
            <input type="checkbox" id="select-all" onclick="toggleSelectAll(this)">
            <label for="select-all">전체선택</label>
            <button class="delete-selected" onclick="deleteSelectedItems()">선택삭제</button>
=======
<body>

<%
    // 가상의 장바구니 아이템 목록을 서버에서 가져온다고 가정
    List<CartItem> cartItems = (List<CartItem>) request.getAttribute("cartItems");
    int totalPrice = 0;
%>

<div class="header">
    <button onclick="history.back()">←</button>
    <h1>장바구니</h1>
    <button onclick="location.href='/'">🏠</button>
</div>

<%
    // 장바구니가 비어있지 않으면 각 아이템을 출력
    if (cartItems != null && !cartItems.isEmpty()) {
        for (CartItem item : cartItems) {
            totalPrice += item.getPrice();
%>

<div class="cart-item">
    <input type="checkbox" name="selectedItem" value="<%= item.getId() %>">
    <div class="cart-item-info">
        <img src="<%= item.getImageUrl() %>" alt="상품 이미지">
        <div>
            <p><%= item.getName() %></p>
            <p>₩<%= item.getPrice() %></p>
            <button onclick="location.href='changeOption.jsp?itemId=<%= item.getId() %>'">옵션 변경</button>
            <button onclick="location.href='applyCoupon.jsp?itemId=<%= item.getId() %>'">쿠폰 선택</button>
>>>>>>> branch 'main' of https://github.com/dkim0910/JSP_Project.git
        </div>
        <!-- 구매하기 버튼 -->
        <button class="purchase-button" onclick="purchaseItems()">구매하기</button>
    </div>
<<<<<<< HEAD

    <!-- 장바구니 항목 리스트 -->
    <c:forEach var="item" items="${cartItems}">
        <div class="cart-item">
            <input type="checkbox" class="item-checkbox" value="${item.id}">
            <div class="item-details">
                <p>${item.name}</p>
                <p>가격: ${item.price}</p>
                <button class="option-change" onclick="openOptionModal(${item.id})">옵션변경</button>
                <button class="coupon-apply" onclick="openCouponModal(${item.id})">쿠폰사용</button>
            </div>
        </div>
    </c:forEach>
</div>

<!-- 옵션 변경 모달 -->
<div id="optionModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('optionModal')">&times;</span>
        <h2>옵션 변경</h2>
        <form action="updateOption.jsp" method="post">
            <input type="hidden" id="optionItemId" name="itemId">
            <label for="newOption">새 옵션:</label>
            <input type="text" id="newOption" name="newOption">
            <button type="submit">변경</button>
        </form>
    </div>
</div>

<!-- 쿠폰 사용 모달 -->
<div id="couponModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('couponModal')">&times;</span>
        <h2>쿠폰 사용</h2>
        <form action="applyCoupon.jsp" method="post">
            <input type="hidden" id="couponItemId" name="itemId">
            <label for="couponCode">쿠폰 코드:</label>
            <input type="text" id="couponCode" name="couponCode">
            <button type="submit">적용</button>
        </form>
    </div>
</div>

<script>
// 전체 선택 및 해제 기능
function toggleSelectAll(source) {
    const checkboxes = document.querySelectorAll('.item-checkbox');
    checkboxes.forEach(checkbox => {
        checkbox.checked = source.checked;
    });
}

// 선택된 항목 삭제 기능
function deleteSelectedItems() {
    const selectedItems = document.querySelectorAll('.item-checkbox:checked');
    if (selectedItems.length > 0) {
        let itemIds = Array.from(selectedItems).map(item => item.value);
        window.location.href = deleteSelectedItems.jsp?itemIds=${itemIds.join(",")};
    }
}

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

// 구매하기 기능 (선택된 항목 구매)
function purchaseItems() {
    const selectedItems = document.querySelectorAll('.item-checkbox:checked');
    if (selectedItems.length > 0) {
        let itemIds = Array.from(selectedItems).map(item => item.value);
        window.location.href = purchaseItems.jsp?itemIds=${itemIds.join(",")};
    } else {
        alert('구매할 항목을 선택하세요.');
    }
}

</script>
 
    
        <footer class="footer">
            <p>고객 지원 센터: 1234-5678 | 이메일: shoppinghajo@samjo.com</p>
            <p>운영 시간: 월-금, 09:00-18:00 (주말 및 공휴일 휴무)</p>
            <div>
                © 쇼핑하조 ALL RIGHTS RESERVED
            </div>

            <div>
                <span>일부 상품의 경우 쇼핑하조는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한
                    <br>
                    책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</span>
            </div>
  
    </footer>
 
=======
</div>

<%
        }
    } else {
%>

<div class="cart-item">
    <p>장바구니가 비어 있습니다.</p>
</div>

<%
    }
%>

<div class="total-summary">
    <h2>총 주문 금액: ₩<%= totalPrice %></h2>
</div>

<a href="checkout.jsp" class="buy-now">구매하기</a>

>>>>>>> branch 'main' of https://github.com/dkim0910/JSP_Project.git
</body>
</html>