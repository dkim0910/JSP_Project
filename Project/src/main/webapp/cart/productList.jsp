<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 목록</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            padding: 20px;
        }

        .product {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            border-bottom: 1px solid #eee;
        }

        .product img {
            width: 100px;
            height: auto;
            margin-right: 20px;
        }

        .product-details {
            flex-grow: 1;
        }

        .product-name {
            font-size: 18px;
            font-weight: bold;
        }

        .product-price {
            color: #333;
            margin: 5px 0;
        }

        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>상품 목록</h1>
    
    <!-- 상품 목록 -->
    <c:forEach var="product" items="상의">
        <div class="product">
            <div class="product-details">
                <p class="product-name">후드티</p>
                <p class="product-price">10000원</p>
            </div>
            <!-- 장바구니 담기 버튼 -->
            <form action="addToCart.jsp" method="post">
                <input type="hidden" name="productId" value="상의">
                <input type="hidden" name="productName" value="후드티">
                <input type="hidden" name="productPrice" value="10000">
                <button type="submit">장바구니 담기</button>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
