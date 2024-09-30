<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 내역 | 쇼핑하조</title>
    <link rel="stylesheet" href="order-status.css">
</head>

<body style="cursor: default;">

    <!-- 지금은 그냥 테이블 수동으로 만드는거지만 나중에서는 <c: > 문 사용해서 데이터 있으면 계속 가지고 오게 만들어 보기 -->

    <div class="container" style="text-align: center;">
        <header class="header">
            <a href="../../my-page/my-main/my-page-main.html" class="button-back-page" aria-label="이전 페이지로 이동">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path
                        d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005"
                        stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>
            <h1 style="flex-grow: 1; text-align: center;">주문 내역</h1>
            <p></p>
        </header>


        <div class="orderlist" style="min-height: 100vh; display: flex; flex-direction: column;">
            <h1>나의 주문 내역 예시 테이블</h1>
            <p></p>
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
                            <div class="product-info" style="flex:1">
                                <!-- @@@ 제품 이미지 클릭하면 상세 페이지로 이동하게끔 만들기 나중에 @@@ -->
                                <img src="https://image.msscdn.net/thumbnails/images/goods_img/20210826/2092852/2092852_17086532214128_big.jpg?w=1200"
                                    alt="이지 와이드 데님 팬츠 그레이" class="product-image" id="" />
                                <!-- id 값에 바지 카테고리로 가는 거 넣기 -->
                                <div class="product-details">
                                    <p>이지 와이드 데님 팬츠 그레이</p>
                                    <p>₩20,000</p>
                                    <p>남은 수량: <span class="stock-quantity">1</span>개</p>
                                    <!-- 저기 span 태그 안쪽 숫자가 남은 수량임 나중에 DB에서 남은 수량 가지고 와서 넣으면 될 듯 -->
                                </div>
                            </div>
                        </td>
                        <td></td>
                        <td>₩20,000</td>
                        <td>
                            <span> 주문 날짜 <br/> </span> 2024-09-15 <br /><br />
                            <a href="../refund/refund.html"><input type="button" class="refund-button" value="환불 및 교환하기" style="cursor: pointer;"/></a>
                            <!-- <a href="../help-me.html"><input type="button" class="refund-button" value="고객센터" style="cursor: pointer;"/></a> -->
                        </td>
                    </tr>
                    <tr>
                        <td>#002</td>
                        <td>
                            <div class="product-info">
                                <img src="https://image.msscdn.net/thumbnails/images/goods_img/20240311/3936910/3936910_17101188568662_big.jpg?w=1200"
                                    alt="여성 로고테이프 버클 버킷햇(L245AP506P) 네이비" class="product-image" id="" />
                                <div class="product-details">
                                    <p>여성 로고테이프 버클 버킷햇(L245AP506P) 네이비</p>
                                    <p>₩15,000</p>
                                    <p>남은 수량: <span class="stock-quantity">5</span>개</p>
                                </div>
                            </div>
                        </td>
                        <td></td>
                        <td>₩15,000</td>
                        <td>
                            <span> 주문 날짜 <br/> </span> 2024-09-15 <br /><br />
                            <a href="../refund/refund.html"><input type="button" class="refund-button" value="환불 및 교환하기" style="cursor: pointer;"/></a>
                            <!-- <a href=""><input type="button" class="refund-button" value="고객센터" style="cursor: pointer;"/></a> -->
                        </td>

                    </tr>
                    <tr>
                        <td>#003</td>
                        <td>
                            <div class="product-info">
                                <img src="https://image.msscdn.net/thumbnails/images/goods_img/20240326/3991058/3991058_17116184755452_big.jpg?w=1200"
                                    alt="[유튜버 PICK]FR-40S 프렌치 워크 5P 자켓_Military Navy" class="product-image" id="" />
                                <div class="product-details">
                                    <p>[유튜버 PICK]FR-40S 프렌치 워크 5P 자켓_Military Navy</p>
                                    <p>₩30,000</p>
                                    <p>남은 수량: <span class="stock-quantity">2</span>개</p>
                                </div>
                            </div>
                        </td>
                        <td></td>
                        <td>₩30,000</td>
                        <td>
                            <span> 주문 날짜 <br/> </span> 2024-09-17 <br /><br />
                            <a href="../refund/refund.html"><input type="button" class="refund-button" value="환불 및 교환하기" style="cursor: pointer;"/></a>
                            <!-- <a href="../help-me.html"><input type="button" class="refund-button" value="고객센터" style="cursor: pointer;"/></a> -->
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

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
<script src="order-status.js"></script>

</html>