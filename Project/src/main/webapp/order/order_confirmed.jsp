<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제가 완료되었습니다. | 쇼핑하조</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<style>
    @import url(order_confirmed.css);
</style>
<body>
    <header>
        <div class="order_confirmed-headline">
            <div id="logo-box" class="self-center">
                <a href="../main-page/login_main.html" id="logo" class="flex">
                  <span>쇼핑하조</span>
                </a>
              </div>
            <div class="flex-1 h-full">
                <div id="icon-box">
                  <div id="icon">
                    <a href="../my-page/my-main/my-page-main.html" id="login">
                      <i class="fa-regular fa-user"></i>
                    </a>
                  </div>
                </div>
              </div>                           
        </div>
    </header>
    <main> 
        <h2>결제가 완료되었습니다. 주문해주셔서 감사합니다.</h2>
        <br/>
        <section class="sheet-section" id="sheet-section-product">
            <div class="sheet-title">
                <h2 class="sheet-title-count">주문 상품 1개</h2>
            </div>
            <div class="sheet-order-product">
                <div class="sheet-order-product-cartItem" data-goods-no="3997992" data-cart-id="1076429836">
                    <div class="sheet-order-product-box">
                        <div class="sheet-order-product-image-box">
                            <img class="sheet-order-product-image" src="./img/payment_method_img/t-4.jpg">
                        </div>
                        <div class="sheet-order-product-information">
                            <a class="sheet-order-product-brand" title="아디다스">아디다스</a>
                            <br/>                               
                            <a class="sheet-order-product-name" title="vintage washed Tee_BLUE">
                                vintage washed Tee_BLUE
                            </a>
                            <br/>
                            <span class="sheet-order-product-option">XL / 1개</span>                                     
                            <div class="sheet-order-product-price-box">
                                <strong class="sheet-order-product-price-coupon rolling-counter" id="display-product-price-coupon-box-1076429836" style="display: none">
                                    <span class="rolling-number" id="display-product-price-coupon-1076429836">0</span>
                                    <span>원</span>
                                </strong>
                                <br/>                                   
                                <span class="sheet-order-product-price-sale" id="display-product-price-origin-1076429836">100,000원</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <button type="button" class="button-order-status" onclick="location.href='../my-page/ordered/order-status.jsp';">
            주문 내역 바로가기
        </button>
    </main>
    <footer>
        <div class="con mx-auto">
            <nav class="bottom-menu">
                <ul class="space-y-2">
                    <li class="flex justify-between items-center">
                        <a href="#" class="toggle-menu">사업자 정보</a>
                        <i class="fa-solid fa-chevron-down cursor-pointer toggle-icon"></i>
                    </li>
                    <ul class="submenu hidden pl-4">
                        <p>(주) 쇼핑하조 | 대표자 : 홍길동 | 주소 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 | 개인정보보호책임자 :
                            신짱구 | 호스팅사업자 : 쇼핑하조 
                            <br>
                            당사는 고객님이 현금 결제한 금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다. 서비스 가입사실 확인
                        </p>
                    </ul>
                    <li class="flex justify-between items-center">
                        <a href="#" class="toggle-menu">법적 고지사항</a>
                        <i class="fa-solid fa-chevron-down cursor-pointer toggle-icon"></i>
                    </li>
                    <ul class="submenu hidden pl-4">
                        <li><a href="#">회사소개</a></li>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">개인정보처리방침</a></li>
                        <li><a href="#">영상정보처리기기 운영/관리방침</a></li>
                    </ul>
                    <li class="flex justify-between items-center">
                        <a href="#" class="toggle-menu">파트너 지원</a>
                        <i class="fa-solid fa-chevron-down cursor-pointer toggle-icon"></i>
                    </li>
                    <ul class="submenu hidden pl-4">
                        <li><a href="#">입점 및 제휴문의</a></li>
                        <li><a href="#">브랜드 구인</a></li>
                    </ul>
                    <li class="flex justify-between items-center">
                        <a href="#" class="toggle-menu">고객지원</a>
                        <i class="fa-solid fa-chevron-down cursor-pointer toggle-icon"></i>
                    </li>
                    <ul class="submenu hidden pl-4">
                        <li><a href="#">1:1 문의하기</a></li>
                        <li><a href="#">FAQ 자주 묻는 질문</a></li>
                        <li><a href="#">안전 거래 센터</a></li>
                        <span>
                            고객센터 1544-7199
                            <br>
                            운영시간 : 평일 09:00 - 18:00
                            <br>
                            (점심시간 12:00 - 13:00 제외)
                        </span>
                    </ul>
                </ul>
            </nav>
            <div class="copyright">
                <div>
                    © 쇼핑하조 ALL RIGHTS RESERVED
                </div>
                <div>
                    <a href="#">개인정보처리방침 · </a>
                    <a href="#">이용약관</a>
                </div>
                <div>
                    <span>일부 상품의 경우 쇼핑하조는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한
                        <br>
                        책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</span>
                    </div>
                </div>
                <div class="btn-icon">
                    <a href=""><i class="fa-brands fa-instagram"></i></a>
                    <a href=""><i class="fa-brands fa-youtube"></i></a>
                    <a href=""><i class="fa-brands fa-tiktok"></i></a>
                </div>
            </div>
    </footer>
    <script>
        // 바텀바 2차메뉴 클릭 기능
$(document).ready(function() {
    $('.toggle-icon, .toggle-menu').click(function(event) {
        event.preventDefault(); // 링크 클릭시 페이지 이동 방지
        $(this).parent().next('.submenu').slideToggle(); // 
        $('.submenu').not($(this).parent().next('.submenu')).slideUp(); 
    });
  });
    </script>
</body>
</html>