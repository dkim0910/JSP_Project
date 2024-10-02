<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.CartItem" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카테고리 페이지</title>
    <!-- 페이지 제목 옆의 아이콘 -->
    <link href="https://image.msscdn.net/favicon_152.ico" rel="icon">
    <link rel="stylesheet" href="categoryDetail.css">
    <!-- 폰트어썸 불러오기 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="categoryDetail.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<c:set var="category" value="${sessionScope.categoryList }"/>
    <div id="common">
        <div id="commonLayoutContainer">
            <!-- 상단 검색창 영역 -->
            <header id="commonLayoutHeader">
                <div class="top-search-bar">
                    <input type="text" id="search" placeholder="검색할 상품을 입력하세요" value="" />
                    <button type="button" id="search-button" >검색</button>
                </div>
                <div class="top-menu">
					<a href="../../my-page/my-main/my-page-main.html" class="menu-button">
						<img src="../img/마이.png"  >
					</a>
                    <a href="../../cart/cart.jsp" class="menu-button">
						<img src="../img/카트.png"  >
                    </a>
                    <a href="../../main-page/login_main.html" class="menu-button">
						<img src="../img/홈.png"  >
					</a>
                </div>
            </header>
            
            <main id="commonLayoutContents">
                <!-- 우측 상품 카테고리 목록 -->
                <div class="right-goods-category">
                    <section class="goods-category" id="beauty-section">
                        <div class="goods-category-real">
                        	<c:forEach var="category" items="${category }">
	                            <a href="/scg.product?PRODUCT_ID=${category.PRODUCT_ID }" class="goods" name="스킨케어">
	                                <img src="${category.IMAGE_URL }"  >
	                                <span>${category.PRODUCT_NAME }</span>
	                                <div class="product-description">
	                                    <img src="./detail/img/102-1.webp" alt="상품 이미지">
	                                    ${category.PRODUCT_NAME }
	                                </div>
	                            </a>
                            </c:forEach>
                        </div>
                    </section>

                </div>
            </main>

            <footer id="commonLayoutFooter">
                <p>고객 지원 센터: 1234-5678 | 이메일: shoppinghajo@samjo.com</p>
                <p>운영 시간: 월-금, 09:00-18:00 (주말 및 공휴일 휴무)</p>
                <div>
                    © 쇼핑하조 ALL RIGHTS RESERVED
                </div>
                <div>
                    <span>일부 상품의 경우 쇼핑하조는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한
                        <br>
                        책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.
                    </span>
                </div>
            </footer>
        </div>
    </div>
</body>
</html>
