<%@ page import="java.util.*" %>
<%@ page import="com.kh.cart.CartDAO" %>
<%@ page import="com.kh.cart.CartDTO" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 상품주문</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	
	CartDAO dao = CartDAO.getInstance();
	CartDTO product = dao.getProductById(id);
	
	ArrayList<CartDTO> goodsList = dao.getAllProducts();
	CartDTO goods = new CartDTO();
	for (int i=0; i<goodsList.size(); i++){
		goods= goodsList.get(i);
		if(goods.getPRODUCT_ID().equals(id)){
			break;
		}
	}
	
	ArrayList<CartDTO> list = (ArrayList<CartDTO>)session.getAttribute("cartList");
	if(list ==null){
		list = new ArrayList<>();
		session.setAttribute("cartList", list);
	}
	int cnt = 0;
	CartDTO goodsQnt = new CartDTO();
	for( int i = 0; i<list.size(); i++){
		goodsQnt = list.get(i);
		if (goodsQnt.getPRODUCT_ID().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getCOUNT()+1;
			goodsQnt.setCOUNT(orderQuantity);
		}
	}
	if(cnt ==0){
		goods.setCOUNT(1);
		list.add(goods);
	}
	
	
	%>
</body>
</html>
