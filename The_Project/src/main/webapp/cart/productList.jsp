<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 목록</title>
</head>
<body>

<h1>상품 목록</h1>

<!-- 상품 목록을 표시 -->
<c:forEach var="product" items="${productList}">
    <div class="product">
        <h2>${product.name}</h2>
        <p>가격: ${product.price}원</p>
        <!-- 장바구니에 추가하는 폼 -->
        <form action="addToCart.jsp" method="post">
            <input type="hidden" name="productId" value="${product.id}">
            <input type="hidden" name="productName" value="${product.name}">
            <input type="hidden" name="productPrice" value="${product.price}">
            <button type="submit">장바구니 담기</button>
        </form>
    </div>
</c:forEach>

</body>
</html>
