<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 내역 | 쇼핑하조</title>
    <link rel="stylesheet" href="order-status.css">
</head>

<body style="cursor: default;">
    <div class="container" style="text-align: center;">
        <header class="header">
            <a href="../../my-page/my-main/my-page-main.html" class="button-back-page" aria-label="이전 페이지로 이동">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005" stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>
            <h1 style="flex-grow: 1; text-align: center;">주문 내역</h1>
        </header>

        <div class="orderlist" style="min-height: 100vh; display: flex; flex-direction: column;">
            <h1>나의 주문 내역 예시 테이블</h1>
            <table>
                <thead>
                    <tr>
                        <th>주문 번호</th>
                        <th>상품명</th>
                        <th>수량</th>
                        <th>가격</th>
                        <th>주문 날짜</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#001</td>
                        <td>
                            <div class="product-info">
                                <img src="https://image.msscdn.net/thumbnails/images/goods_img/20210826/2092852/2092852_17086532214128_big.jpg?w=1200"
                                    alt="이지 와이드 데님 팬츠 그레이" class="product-image" />
                                <div class="product-details">
                                    <p>이지 와이드 데님 팬츠 그레이</p>
                                    <p>₩20,000</p>
                                    <p>남은 수량: <span class="stock-quantity">1</span>개</p>
                                </div>
                            </div>
                        </td>
                        <td>1</td>
                        <td>₩20,000</td>
                        <td>
                            <span> 주문 날짜 <br/> </span> 2024-09-15 <br /><br />
                            <a href="../refund/refund.html"><input type="button" class="refund-button" value="환불 및 교환하기" style="cursor: pointer;"/></a>
                        </td>
                    </tr>
                    <!-- 추가 주문 내역 -->
                </tbody>
            </table>
        </div>

        <footer class="footer">
            <p>고객 지원 센터: 1234-5678 | 이메일: shoppinghajo@samjo.com</p>
            <p>운영 시간: 월-금, 09:00-18:00 (주말 및 공휴일 휴무)</p>
            <div>© 쇼핑하조 ALL RIGHTS RESERVED</div>
            <div>
                <span>일부 상품의 경우 쇼핑하조는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한 책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</span>
            </div>
        </footer>
    </div>

    <script src="order-status.js"></script>
</body>

</html>
