<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 세션에서 장바구니 리스트를 가져옴 (없으면 새로 생성)
    List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
        session.setAttribute("cart", cart);
    }

    // 요청 파라미터에서 상품 정보를 가져옴
    String productId = request.getParameter("productId");
    String productName = request.getParameter("productName");
    String productPrice = request.getParameter("productPrice");

    // 상품 정보를 Map에 담음
    Map<String, Object> product = new HashMap<>();
    product.put("id", productId);
    product.put("name", productName);
    product.put("price", productPrice);

    // 장바구니에 상품 추가
    cart.add(product);

    // 장바구니 페이지로 리다이렉트
    response.sendRedirect("cart.jsp");
%>
