<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이벤트 | 쇼핑하조</title>
<!-- 페이지 제목 옆의 아이콘 -->
<link href="https://i.ibb.co/X4b9F9N/logo.png" rel="icon">
<style>
html, body {
	height: 100%;
	margin: 0;
}

body {
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.container {
	flex: 1;
	display: flex;
	flex-direction: column;
	max-width: 1600px;
	margin: 0 auto;
	padding: 0 40px 20px;
	background-color: #fff;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.header {
	display: flex;
	align-items: center;
	padding: 20px;
	background-color: black;
	color: #ffffff;
	border-bottom: 2px solid #ff4d4d;
	position: relative;
}

.content {
	flex: 1;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: flex-start;
	padding: 20px;
}

.card {
	background-color: #f9f9f9;
	border-radius: 10px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	width: 300px;
	margin: 20px;
	padding: 20px 20px 0px 20px;
	text-align: center;
	overflow: hidden; /* 자식 요소가 부모 요소를 넘지 않도록 설정 */
	transition: transform 0.3s ease; /* 카드 확대 전환 효과 */
}

.card:hover {
	transform: scale(1.05); /* 마우스 오버 시 카드 전체를 5% 확대 */
}

.card img {
	width: 100%;
	border-radius: 8px;
}

.card h3 {
	margin: 10px 0;
	font-size: 18px;
	color: #333;
}

.card p {
	margin: 5px 0;
	color: #666;
	font-size: 14px;
}

.card .colorred {
	color: red; /* 빨간색 폰트 설정 */
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

.all-button {
	background-color: black;
	color: #ffffff;
	padding: 10px 20px;
	border-radius: 20px;
	text-align: center;
	cursor: pointer;
	text-decoration: none;
}

/* 할인 퍼센트에 빨간색 */
a {
	text-decoration: none; /* 밑줄 제거 */
	color: inherit; /* 부모 요소의 색상 상속 */
}

</style>
</head>
<body>
	<div class="container">
		<header class="header">
			<a href="./my-page/my-main/my-page-main.jsp" class="button-back-page" aria-label="이전 페이지로 이동"> 
				<svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005" stroke="white" stroke-width="1.4"></path>
                </svg>
			</a>
			<h1 style="flex-grow: 1; text-align: center;">가을 맞이 할인</h1>
		</header>

		<section class="content">
			<c:forEach var="outersale" items="${outersale}">
				<div class="card">
					<a href="/scg.product?PRODUCT_ID=${outersale.product_id }"> <!-- 그 제품의 상세페이지로 이동 -->
						<img src="${outersale.image_url}" alt="${outersale.product_name}">
						<h3>${outersale.product_name}</h3>
						<h4>
							<span class="colorred">${outersale.sale_rate}%</span>
							<strong>${outersale.price_amount}원</strong>
						</h4>
					</a>
				</div>
			</c:forEach>
		</section>

		<footer class="footer">
			<p>고객 지원 센터: 1234-5678 | 이메일: shoppinghajo@samjo.com</p>
			<p>운영 시간: 월-금, 09:00-18:00 (주말 및 공휴일 휴무)</p>
			<div>© 쇼핑하조 ALL RIGHTS RESERVED</div>
			<div>
				<span>일부 상품의 경우 쇼핑하조는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한 책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</span>
			</div>
		</footer>
	</div>
</body>
</html>
