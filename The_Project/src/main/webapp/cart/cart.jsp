<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.CartItem" %> <!-- CartItem 객체는 실제 데이터베이스에서 불러온 상품 정보를 담는 클래스 -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니</title>
    <style>
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
            cursor: pointer;
        }
    </style>
</head>
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
        </div>
    </div>
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

</body>
</html>
