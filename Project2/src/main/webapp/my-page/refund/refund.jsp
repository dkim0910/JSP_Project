<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>환불 및 교환 | 쇼핑하조</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/my-page/refund/refund.css">
</head>

<body style="cursor: default;">
	<div class="container">
		<header class="header">
			<a href="../my-page/my-main/my-page-main.jsp"
				class="button-back-page" aria-label="이전 페이지로 이동"> <!-- 이게 '<' 모양의 뒤로 가기 버튼 -->
				<svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path
						d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005"
						stroke="currentColor" stroke-width="1.4"></path>
                </svg>
			</a>
			<h1 style="flex-grow: 1; text-align: center;">환불 및 교환</h1>
			<p></p>
		</header>

		<section class="products-section" id="remove-style"
			style="min-height: 100vh; display: flex; flex-direction: column;">
			<h2>구매 내역</h2>

			<%-- <c:forEach var="refund" items="${Refunded}">
				<div>
					<p>User ID: ${refund.user_id}</p>
					<p>Ordered Number: ${refund.ordered_num}</p>
					<p>Ordered Date: ${refund.ordered_date}</p>
				</div>
			</c:forEach> --%>


			<!-- 환불할 제품이 있는 경우 -->
			<c:if test="${not empty Refunded}">
				<h2>환불 제품 목록</h2>
				<ul class="product-list">
					<c:forEach var="refund" items="${Refunded}">
						<li class="product-item"
							onclick="showRefundForm('${refund.product_name}', '${refund.order_num}')">
							<img src="${refund.image_url}" alt="${refund.product_name}"
							class="product-image"> <span class="product-name">${refund.product_name}</span>
							<span class="order-number">주문 번호: ${refund.order_num}</span> <!-- 주문 번호 표시 -->
							<span class="refund-button" onclick="removeStyles()">환불 신청</span>
						</li>
					</c:forEach>
				</ul>
			</c:if>

			<!-- 환불할 제품이 없는 경우 -->
			<c:if test="${empty Refunded}">
				<p>환불할 제품이 없습니다.</p>
			</c:if>
		</section>

		<section class="refund-form-section" id="refund-form-section">
			<h2>환불 신청서</h2>
			<form id="refund-form">
				<div class="form-group">
					<label for="product-name">제품 이름</label> <input type="text"
						id="product-name" name="product-name" readonly>
				</div>
				<div class="form-group">
					<label for="order-number">주문 번호</label> <input type="text"
						id="order-number" name="order-number" readonly>
				</div>
				<div class="form-group">
					<label for="reason">환불 사유</label>
					<textarea id="reason" name="reason" rows="4" required></textarea>
				</div>

				<a href="my-page/refund/finish-refund.jsp"><button type="button"
						class="submit-button" onclick="submitRefund()">환불 신청하기</button></a>
			</form>
		</section>

		<footer class="footer">
			<p>고객 지원 센터: 1234-5678 | 이메일: shoppinghajo@samjo.com</p>
			<p>운영 시간: 월-금, 09:00-18:00 (주말 및 공휴일 휴무)</p>
			<div>© 쇼핑하조 ALL RIGHTS RESERVED</div>
			<div>
				<span>일부 상품의 경우 쇼핑하조는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에
					대한 책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</span>
			</div>
		</footer>
	</div>
</body>

<script
	src="${pageContext.request.contextPath}/my-page/refund/refund.js"></script>

</html>
