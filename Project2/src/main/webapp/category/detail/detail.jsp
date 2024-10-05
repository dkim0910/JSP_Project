<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.CartItem" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 상세 페이지</title>
    <link rel="stylesheet" href="detail.css">
    <script src="./detail.js" defer></script>
</head>
<body>
	<c:set var="goods" value="${sessionScope.goods }"/>
    <div class="product-detail-container">
        <!-- 상품 이미지 및 정보 -->
        <div class="product-image">
            <img src="./img/101-1.webp" alt="상품 이미지">
        </div>
    
        <div class="product-info">
            <h1 class="product-title">${goods.PRODUCT_NAME }</h1>
            <p class="product-price">${goods.NORMAL_PRICE }원</p>
            <p class="product-description">
                향기에 한번, 사용감에 두 번 반하다<br>
                카카오톡 선물하기 랭킹 1위<br>
                모발 굵기, 손상도, 퍼퓸 모두 나의 헤어타입 및<br>
                취향에 맞춘 스타일로! 나에게 꼭 맞춘<br>
                '퍼스널 헤어 오일'
            </p>

            <!-- 현재 이 파일(detail.html)에만 구현되어 있음 -->
            <div class="quantity-selector">
                <label for="quantity">수량 :</label>
                <select id="quantity" name="quantity">
                </select>
            </div>

            <!-- 현재 이 파일(detail.html)에만 구현되어 있음 -->
            <div class="total-price">
                <p id="total-number">총 x개</p>
                <p id="total-goods-price">y원</p>
            </div>
            
            <!-- 현재 이 파일(detail.html)에만 구현되어 있음 -->
            <div class="product-parchase-buttons">
                <form action="../../order/order_form.html">
                    <button type="submit" class="buy-now">바로 구매</button>
                </form>
                <form action="../../cart/cart.jsp">
                    <button type="submit" class="add-to-cart">장바구니 담기</button>
                </form>
            </div>
        </div>
    </div>
    
    <!-- 상품 상세 이미지 -->
    <div class="product-detail-img">
        <img src="./img/101-2.jpg" alt="상품 상세 이미지">
    </div>

    <div class="bottom-parchase-buttons">
        구매하기
    </div>
	<script>
    const productPrice = ${goods.NORMAL_PRICE}; // 상품의 개당 가격
	</script>
</body>
</html>
