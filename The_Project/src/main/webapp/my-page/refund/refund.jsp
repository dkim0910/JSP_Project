<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>환불 및 교환 | 쇼핑하조</title>
    <link rel="stylesheet" href="refund.css">
</head>

<body style="cursor: default;">
    <div class="container" >
        <header class="header">
            <a href="../my-main/my-page-main.html" class="button-back-page" aria-label="이전 페이지로 이동">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005" stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>
            <h1 style="flex-grow: 1; text-align: center;">환불 및 교환</h1>
            <p></p>
        </header>
        

        <section class="products-section" id="remove-style" style="min-height: 100vh; display: flex; flex-direction: column;" >
            <h2>구매 내역</h2>

            <!-- 나중에 이 ul 안에 알아서 DB에서 계속 가져올수 있게 이전체를 for 문으로 만들어보기 -->

            <ul class="product-list" >
                <li class="product-item" onclick="showRefundForm('1', '1.1')">
                    <img src="https://image.msscdn.net/thumbnails/images/goods_img/20210826/2092852/2092852_17086532214128_big.jpg?w=1200"
                        alt="" class="product-image">
                    <span class="product-name">이지 와이드 데님 팬츠 그레이</span>
                    <span class="refund-button" onclick="removeStyles()">환불 신청</span>
                </li>
                <li class="product-item" onclick="showRefundForm('2' , '2.2')">
                    <img src="https://image.msscdn.net/thumbnails/images/goods_img/20240311/3936910/3936910_17101188568662_big.jpg?w=1200"
                        alt="" class="product-image">
                    <span class="product-name">여성 로고테이프 버클 버킷햇(L245AP506P) 네이비</span>
                    <span class="refund-button" onclick="removeStyles()">환불 신청</span>
                </li>



            </ul>
        </section>

        <section class="refund-form-section" id="refund-form-section">
            <h2>환불 신청서</h2>
            <form id="refund-form">
                <div class="form-group">
                    
                    <label for="product-name">제품 이름</label>
                    <input type="text" id="product-name" name="product-name" readonly>
                </div>
                <div class="form-group">
                    <label for="order-number">주문 번호</label>
                    <input type="text" id="order-number" name="order-number" readonly>
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

                <a href="finish-refund.html"><button type="button" class="submit-button">환불 신청하기</button></a>
            </form>
        </section>

        <footer class="footer">
            <p>고객 지원 센터: 1234-5678 | 이메일: shoppinghajo@samjo.com</p>
            <p>운영 시간: 월-금, 09:00-18:00 (주말 및 공휴일 휴무)</p>
            <div>
                © 쇼핑하조 ALL RIGHTS RESERVED
            </div>

            <div>
                <span>일부 상품의 경우 쇼핑하조는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한
                    <br>
                    책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</span>
            </div>
    </div>
    </footer>
    </div>

    

</body>

<script src="refund.js"></script>

</html>