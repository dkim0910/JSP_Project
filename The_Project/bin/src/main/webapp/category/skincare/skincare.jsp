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
    <title>카테고리 페이지</title>
    <!-- 페이지 제목 옆의 아이콘 -->
    <link href="https://image.msscdn.net/favicon_152.ico" rel="icon">
    <link rel="stylesheet" href="skincare.css">
    <!-- 폰트어썸 불러오기 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="skincare.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
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
                            <a href="../detail/detail2.jsp" class="goods" name="헤어케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104006_17164420040904_big.png" >
                                <span>헤어케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/101-1.webp" alt="상품 이미지">
                                    헤어케어
                                </div>
                            </a>
                            <a href="/scg/product?subcategory=skincare" class="goods" name="스킨케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104001_17164420025345_big.png"  >
                                <span>스킨케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/102-1.webp" alt="상품 이미지">
                                    스킨케어
                                </div>
                            </a>
                            <a href="./detail/103.html" class="goods" name="선케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104002_17164420028786_big.png"  >
                                <span>선케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/103-1.webp" alt="상품 이미지">
                                    선케어
                                </div>
                            </a>
                            <a href="./detail/104.html" class="goods" name="클렌징">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104003_17164420031582_big.png"  >
								<span>클렌징</span>
                                <div class="product-description">
                                    <img src="./detail/img/104-1.webp" alt="상품 이미지">
                                    클렌징
                                </div>
							</a>
							<a href="./detail/105.html" class="goods" name="메이크업">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104004_17164420034611_big.png"  >
								<span>메이크업</span>
                                <div class="product-description">
                                    <img src="./detail/img/105-1.webp" alt="상품 이미지">
                                    메이크업
                                </div>
							</a>
							<a href="./detail/106.html" class="goods" name="프레그런스">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104005_17164420037579_big.png"  >
								<span>프레그런스</span>
                                <div class="product-description">
                                    <img src="./detail/img/106-1.webp" alt="상품 이미지">
                                    프레그런스
                                </div>
							</a>
							<a href="./detail/detail.jsp" class="goods" name="헤어케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104006_17164420040904_big.png" >
                                <span>헤어케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/101-1.webp" alt="상품 이미지">
                                    헤어케어
                                </div>
                            </a>
                            <a href="./detail/102.html" class="goods" name="스킨케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104001_17164420025345_big.png"  >
                                <span>스킨케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/102-1.webp" alt="상품 이미지">
                                    스킨케어
                                </div>
                            </a>
                            <a href="./detail/103.html" class="goods" name="선케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104002_17164420028786_big.png"  >
                                <span>선케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/103-1.webp" alt="상품 이미지">
                                    선케어
                                </div>
                            </a>
                            <a href="./detail/104.html" class="goods" name="클렌징">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104003_17164420031582_big.png"  >
								<span>클렌징</span>
                                <div class="product-description">
                                    <img src="./detail/img/104-1.webp" alt="상품 이미지">
                                    클렌징
                                </div>
							</a>
							<a href="./detail/105.html" class="goods" name="메이크업">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104004_17164420034611_big.png"  >
								<span>메이크업</span>
                                <div class="product-description">
                                    <img src="./detail/img/105-1.webp" alt="상품 이미지">
                                    메이크업
                                </div>
							</a>
							<a href="./detail/106.html" class="goods" name="프레그런스">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104005_17164420037579_big.png"  >
								<span>프레그런스</span>
                                <div class="product-description">
                                    <img src="./detail/img/106-1.webp" alt="상품 이미지">
                                    프레그런스
                                </div>
							</a>
							<a href="./detail/detail.jsp" class="goods" name="헤어케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104006_17164420040904_big.png" >
                                <span>헤어케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/101-1.webp" alt="상품 이미지">
                                    헤어케어
                                </div>
                            </a>
                            <a href="./detail/102.html" class="goods" name="스킨케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104001_17164420025345_big.png"  >
                                <span>스킨케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/102-1.webp" alt="상품 이미지">
                                    스킨케어
                                </div>
                            </a>
                            <a href="./detail/103.html" class="goods" name="선케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104002_17164420028786_big.png"  >
                                <span>선케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/103-1.webp" alt="상품 이미지">
                                    선케어
                                </div>
                            </a>
                            <a href="./detail/104.html" class="goods" name="클렌징">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104003_17164420031582_big.png"  >
								<span>클렌징</span>
                                <div class="product-description">
                                    <img src="./detail/img/104-1.webp" alt="상품 이미지">
                                    클렌징
                                </div>
							</a>
							<a href="./detail/105.html" class="goods" name="메이크업">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104004_17164420034611_big.png"  >
								<span>메이크업</span>
                                <div class="product-description">
                                    <img src="./detail/img/105-1.webp" alt="상품 이미지">
                                    메이크업
                                </div>
							</a>
							<a href="./detail/106.html" class="goods" name="프레그런스">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104005_17164420037579_big.png"  >
								<span>프레그런스</span>
                                <div class="product-description">
                                    <img src="./detail/img/106-1.webp" alt="상품 이미지">
                                    프레그런스
                                </div>
							</a>
							<a href="./detail/detail.jsp" class="goods" name="헤어케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104006_17164420040904_big.png" >
                                <span>헤어케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/101-1.webp" alt="상품 이미지">
                                    헤어케어
                                </div>
                            </a>
                            <a href="./detail/102.html" class="goods" name="스킨케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104001_17164420025345_big.png"  >
                                <span>스킨케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/102-1.webp" alt="상품 이미지">
                                    스킨케어
                                </div>
                            </a>
                            <a href="./detail/103.html" class="goods" name="선케어">
                                <img src="https://image.msscdn.net/images/category_img/men/ITEM_104002_17164420028786_big.png"  >
                                <span>선케어</span>
                                <div class="product-description">
                                    <img src="./detail/img/103-1.webp" alt="상품 이미지">
                                    선케어
                                </div>
                            </a>
                            <a href="./detail/104.html" class="goods" name="클렌징">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104003_17164420031582_big.png"  >
								<span>클렌징</span>
                                <div class="product-description">
                                    <img src="./detail/img/104-1.webp" alt="상품 이미지">
                                    클렌징
                                </div>
							</a>
							<a href="./detail/105.html" class="goods" name="메이크업">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104004_17164420034611_big.png"  >
								<span>메이크업</span>
                                <div class="product-description">
                                    <img src="./detail/img/105-1.webp" alt="상품 이미지">
                                    메이크업
                                </div>
							</a>
							<a href="./detail/106.html" class="goods" name="프레그런스">
								<img src="https://image.msscdn.net/images/category_img/men/ITEM_104005_17164420037579_big.png"  >
								<span>프레그런스</span>
                                <div class="product-description">
                                    <img src="./detail/img/106-1.webp" alt="상품 이미지">
                                    프레그런스
                                </div>
							</a>
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
