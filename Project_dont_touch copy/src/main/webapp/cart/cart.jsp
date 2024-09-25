<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.model.CartItem" %> <!-- 패키지 경로를 맞춰서 임포트 -->
<%@ page import="java.util.ArrayList" %>

<%
    // 세션에서 장바구니 아이템을 불러오기
    ArrayList<CartItem> cartItems = (ArrayList<CartItem>) session.getAttribute("cartItems");

    if (cartItems == null) {
        cartItems = new ArrayList<CartItem>();
    }

    // 총액 계산
    int totalPrice = 0;
    for (CartItem item : cartItems) {
        totalPrice += item.getPrice() * item.getQuantity();
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="cart-container">
        <h1>장바구니</h1>
        <table class="cart-items">
            <thead>
                <tr>
                    <th>상품명</th>
                    <th>가격</th>
                    <th>수량</th>
                    <th>총액</th>
                    <th>삭제</th>
                </tr>
            </thead>
            <tbody>
                <%
                    if (cartItems.isEmpty()) {
                        out.println("<tr><td colspan='5'>장바구니가 비어 있습니다.</td></tr>");
                    } else {
                        for (int i = 0; i < cartItems.size(); i++) {
                            CartItem item = cartItems.get(i);
                %>
                <tr>
                    <td><%= item.getName() %></td>
                    <td><%= item.getPrice() %>원</td>
                    <td><%= item.getQuantity() %></td>
                    <td><%= item.getPrice() * item.getQuantity() %>원</td>
                    <td>
                        <form action="removeItem.jsp" method="post">
                            <input type="hidden" name="index" value="<%= i %>">
                            <button type="submit">삭제</button>
                        </form>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
        <div class="cart-summary">
            <h3>총 금액: <%= totalPrice %>원</h3>
            <button onclick="location.href='checkout.jsp'">결제하기</button>
        </div>
    </div>
</body>
</html>
