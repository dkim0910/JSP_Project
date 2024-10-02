<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
			<a href="../my-main/my-page-main.jsp" class="button-back-page"
				aria-label="이전 페이지로 이동"> <svg width="35" height="35"
					viewBox="0 0 28 28" fill="none">
                    <path
						d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005"
						stroke="currentColor" stroke-width="1.4"></path>
                </svg>
			</a>
			<h1 style="flex-grow: 1; text-align: center;">환불 및 교환</h1>
			<p></p>
		</header>

		<%-- <c:set var="refund" value="${requestScope.refund}" />
		${refund.get(0).ordered_num } ${refund.get(1).ordered_num }
		<c:set var="products" value="${requestScope.products}" />
		${products.get(0).product_id } ${products.get(0).brand }
		${products.get(0).product_name } --%>


		<section class="products-section" id="remove-style"
			style="min-height: 100vh; display: flex; flex-direction: column;">
			<h2>구매 내역</h2>

			<!-- 나중에 이 ul 안에 알아서 DB에서 계속 가져올수 있게 이전체를 for 문으로 만들어보기 -->

			<c:set var="products" value="${requestScope.products}" />
			<c:set var="refund" value="${requestScope.refund }" />
			<%-- <c:set var="refunded" value="${requestScope.refunded }" /> --%>
			<c:set var="Image" value="${requestScope.Image }" />
			
			
			<!-- 제품 정보 출력 -->
			<c:if test="${not empty products && not empty refund}">
				<h2>제품 목록</h2>
				  <ul class="product-list">
			        <c:forEach var="product" items="${products}" varStatus="status">
			            <c:if test="${status.index < 5}">
			                <li class="product-item"
			                    onclick="showRefundForm('${product.product_name}', '${refund.get(0).order_num}')">
			                    <img src="${Image.get(0).image_url }"
			                         alt="${product.product_name}" class="product-image">
			                    <span class="product-name">${product.product_name}</span>
			                    <span class="refund-button" onclick="removeStyles()">환불 신청</span>
			                </li>
			            </c:if>
			        </c:forEach>
			    </ul>
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
					<textarea id="reason" name="reason" rows="4"></textarea>
				</div>

				<!-- 나중에 고객 구매창에서 고른 그 결제 수단으로 환불하는거 만들기 -->
				<!-- <div class="form-group">
                    <label for="bank-info">환불 받을 계좌 정보</label>
                    <input type="text" id="bank-info" name="bank-info" required>
                </div> -->

				<a href="my-page/refund/finish-refund.jsp"><button type="button"
						class="submit-button">환불 신청하기</button></a>
			</form>
		</section>

		<footer class="footer">
			<p>고객 지원 센터: 1234-5678 | 이메일: shoppinghajo@samjo.com</p>
			<p>운영 시간: 월-금, 09:00-18:00 (주말 및 공휴일 휴무)</p>
			<div>© 쇼핑하조 ALL RIGHTS RESERVED</div>

			<div>
				<span>일부 상품의 경우 쇼핑하조는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에
					대한 <br> 책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.
				</span>
			</div>
	</div>
	</footer>
	</div>



</body>

<script
	src="${pageContext.request.contextPath}/my-page/refund/refund.js"></script>

</html>