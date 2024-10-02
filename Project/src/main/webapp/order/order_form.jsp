<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 페이지 | 쇼핑하조</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<script src="https://cdn.tailwindcss.com"></script>
<style>
    @import url(order_form.css);
</style>
<script src="order_form.js"></script>
<body>
    <head>
    </head>
    <body style="overflow: unset">
        <header>
            <div class="order_form-headline">
                <a href="../cart/cart.jsp">
                    <button type="button" aria-label="이전 페이지로 이동" class="button-back-page">
                        <svg width="28" height="28" viewBox="0 0 28 28" fill="none">
                            <path d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005" stroke="currentColor" stroke-width="1.4"></path>
                        </svg>
                    </button>               
                </a>
                <h2 class="order_form-headline-text">주문서</h2>
                <div class="order_form-headline-inside"></div>               
            </div>
        </header>
        <main class="contents">
            <div class="double-section">
                <div class="double-section-left">
                    <section class="sheet-section" id="sheet-section-recipient">
                        <div class="sheet-address">
                            <div class="sheet-title">
                                <h2 class="sheet-title-address">배송지</h2>
                            </div>
                            <div class="sheet-address-title">
                                <strong class="sheet-address-title-name" id="recipient-name">
                                    ${order.user_name }
                                </strong>
                                <span class="sheet-address-title-label" id="recipient-default" style="display: block;">
                                    기본 배송지
                                </span>
                                <button class="sheet-address-title-button" type="button" id="button-address-change" onclick="new_execDaumPostcode()">
                                    배송지 변경
                                </button>
                            </div>
                            <div>
                            	<div class="form-input-address">
		                            <%-- <input type="text" id="input_postcode" placeholder="우편번호" value="${order.user_postcode}" > --%>
									<input type="text" id="input_address" placeholder="주소" value="${order.user_address}"><br/>
									<%-- <input type="text" id="input_detailAddress" placeholder="상세주소" value="${order.user_address_detail}"> --%>
									<input type="text" id="input_phoneNumber" placeholder="전화번호" value="${order.user_phone}">
                            	</div>
                            </div>
                            <div class="sheet-message-select">
                                <button type="button" class="sheet-message-text">
                                    배송 메세지를 선택하세요.
                                </button>    
                                <ul class="sheet-message-selectbox">
                                    <li><button type="button" class="sheet-message-option-btn">문 앞에 놔주세요</button></li>                       
                                    <li><button type="button" class="sheet-message-option-btn">경비실에 맡겨주세요</button></li>                                    
                                    <li><button type="button" class="sheet-message-option-btn">택배함에 넣어주세요</button></li>                   
                                    <li><button type="button" class="sheet-message-option-btn">배송 전에 연락주세요</button></li>      
                                </ul>    
                            </div>
                        </div>
                    </section>
                    <br/>
                    <hr/>
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
                                            </strong><!-- default : style="display: none" -->
                                            <strong class="sheet-order-product-price-origin" id="display-product-price-1076429836">108,000원</strong>
                                            <br/>                                   
                                            <span class="sheet-order-product-price-sale" id="display-product-price-origin-1076429836">100,000원</span>
                                            <span class="sheet-order-product-price-text-coupon" id="display-product-apply-coupon-1076429836" style="display: none">쿠폰적용가</span><!-- default : style="display: none" -->
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="sheet-order-product-coupon" id="button-product-apply-coupon-1076429836" onclick="openPopup_couponApply()">
                                    쿠폰사용
                                </button>
                            </div>
                        </div>
                    </section>
                    <br/>
                    <hr/>
                    <section class="sheet-section" id="sheet-section-usepoint">
                        <div class="sheet-title">
                            <h2 class="sheet-title-text">보유 적립금 사용</h2>
                            <button type="button" class="sheet-title-bottomSheet" id="button-bottom-sheet-usepoint">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                    <circle cx="8" cy="8" r="6" stroke="black"></circle>
                                    <path d="M8 4.7998V6.2398" stroke="black" stroke-width="1.4"></path>
                                    <path d="M8 7.2002V11.6002" stroke="black" stroke-width="1.4"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="sheet-point-input">
                            <div class="sheet-point-input-inputBox">
                                <input type="text" class="sheet-point-input-input-disabled" disabled value="최소 5000원 이상 보유시 사용 가능"/>
                            </div>
                            <ul class="sheet-point-input-text">
                                <li class="sheet-point-limit-input-text">
                                    적용한도(10%)
                                </li>
                                <li class="sheet-point-input-price">
                                    10,000원 / 
                                </li>
                                <li class="sheet-point-input-own">
                                     보유 4,100원
                                </li>
        
                            </ul>
                        </div>
                    </section>
                    <hr/>
                    <section class="sheet-section" id="sheet-section-payment-methond-types">
                        <div class="sheet-title">
                            <h2 class="sheet-title-text">
                                결제 수단
                            </h2>
                        </div>
                        <div class="payment-method-choice">
                            <label>
                                <input type="radio" name="button-payment-type" id="button-payment-TOSSPAY" class="payment-method-type-input" onclick="toggleOtherPayments(false); togglePaymentCard(false)">
                                <img src="./img/payment_method_img/Toss-Symbol.png" class="payment-method-logo-TOSSPAY">
                                토스페이
                            </label>
                            <br/>
                            <label>
                                <input type="radio" name="button-payment-type" id="button-payment-KAKAOPAY" class="payment-method-type-input" onclick="toggleOtherPayments(false); togglePaymentCard(false)">
                                <img src="./img/payment_method_img/payment_icon_yellow_small.png" class="payment-method-logo-KAKAOPAY">
                                카카오페이
                            </label>
                            <br/>
                            <label>
                                <input type="radio" name="button-payment-type" id="button-payment-PAYCO" class="payment-method-type-input" onclick="toggleOtherPayments(false); togglePaymentCard(false)">
                                <img src="./img/payment_method_img/1_PAYCO_Red.png" class="payment-method-logo-PAYCO">
                                페이코
                            </label>
                            <br/>
                            <label class="payment-method-others">
                                <input type="radio" name="button-payment-type" id="button-payment-OTHERS" class="payment-method-type-input" onclick="toggleOtherPayments(true)">
                                기타 결제
                            </label>
                            <div id="other-payment-options" class="paymentMethod-others" style="display: none;">
                                <ul class="paymentMethod-others-list">
                                    <li id="box-payment-method-type-CARD">
                                        <button type="button" id="button-payment-CARD" onclick="togglePaymentCard(true)">
                                            <span class="paymentMethod-others-text">카드</span>
                                        </button>
                                    </li>
                                    <li id="box-payment-method-type-VACCOUNT">
                                        <button type="button" id="button-payment-VACCOUNT" onclick="togglePaymentCard(false)">
                                            <span class="paymentMethod-others-text">가상계좌</span>
                                        </button>
                                    </li>
                                    <li id="box-payment-method-type-PHONE">
                                        <button type="button" id="button-payment-PHONE" onclick="togglePaymentCard(false)">
                                            <span class="paymentMethod-others-text">휴대폰</span>
                                        </button>
                                    </li>
                                    <li id="box-payment-method-type-NAVERPAY">
                                        <button type="button" id="button-payment-NAVERPAY" onclick="togglePaymentCard(false)">
                                            <span class="paymentMethod-others-text">네이버페이</span>
                                        </button>
                                    </li>
                                </ul>
                            </div>                    
                        </div>
                        <div>
                            <ul class="list-payment" id="list-payment" style="display: none;">
                                <div>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/KB_s_kr3.jpg" class="card-company-logo"/>
                                            <span>KB국민</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/shc_ci_basic_00.png" class="card-company-logo"/>
                                            <span>신한</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/HyundaiCard_Logomark.jpg" class="card-company-logo"/>
                                            <span>현대</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/lottecard.png" class="card-company-logo"/>
                                            <span>롯데</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/NH농협은행 CI 심볼마크.jpg" class="card-company-logo"/>
                                            <span>농협</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/BC_CARD_CI.svg" class="card-company-logo"/>
                                            <span>비씨</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/국문_Signature.png" class="card-company-logo"/>
                                            <span>우리</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/하나카드 로고.jfif" class="card-company-logo"/>
                                            <span>하나</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/Kakao_Bank_of_Korea_Logo.jpg" class="card-company-logo"/>
                                            <span>카카오</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/ci_삼성카드.jpg" class="card-company-logo"/>
                                            <span>삼성</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/sc로고.jpg" class="card-company-logo"/>
                                            <span>SC</span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="list-payment-label">
                                            <input type="radio" name="card-selection" class="card-selection-input" />
                                            <img src="./img/payment_method_img/card_company_logo/씨티.png" class="card-company-logo"/>
                                            <span>씨티</span>
                                        </label>
                                    </li>
                                </div>
                            </ul>
                        </div>
                    </section>
                </div>
                <hr/>
                <div class="double-section-right">
                    <section class="sticky-section">
                        <section class="sheet-section" id="sheet-section-reward-point">
                            <div class="sheet-title">
                                <h2 class="sheet-title-text">
                                    적립 혜택
                                </h2>
                            </div>
                            <div class="sheet-save-point">
                                <div class="sheet-save-point-level">
                                    <span class="sheet-save-point-level-text">
                                        LV.5 실버 : 2% 적립
                                    </span>
                                    <strong class="sheet-save-point-level-subject-price">
                                        2000원
                                    </strong>
                                </div>
                                <div class="sheet-save-point-level">
                                    <span class="sheet-save-point-additional-text">
                                        구매 추가 적립
                                    </span>
                                    <strong class="sheet-save-point-level-subject-price">
                                        100원
                                    </strong>
                                </div>
                                <div class="sheet-save-point-level">
                                    <span class="sheet-save-point-review-text">
                                        후기 적립금
                                    </span>
                                    <strong class="sheet-save-point-level-subject-price">
                                        최대 3,500원
                                    </strong>
                                </div>
                            </div>
                        </section>
                        <hr/>
                        <section class="sheet-section" id="sheet-section-pay">
                            <div class="sheet-title">
                                <h2 class="sheet-title-text">
                                    결제 금액
                                </h2>
                            </div>
                            <div class="sheet-payment-price">
                                <div class="sheet-payment-price-box">
                                    <span class="sheet-payment-price-subject-text">
                                        상품 금액
                                    </span>
                                    <strong class="sheet-payment-price-subject-price">
                                        108,000원
                                    </strong>
                                </div>
                                <div class="sheet-payment-price-box">
                                    <span class="sheet-payment-price-subject-text">
                                        할인 금액
                                    </span>
                                    <strong class="sheet-payment-price-subject-price">
                                        -8,000원
                                    </strong>
                                </div>
                                <div class="sheet-payment-price-box">
                                    <span class="sheet-payment-price-subject-text">
                                        적립금 사용
                                    </span>
                                    <strong class="sheet-payment-price-subject-price">
                                        0원
                                    </strong>
                                </div>
                                <div class="sheet-payment-price-box">
                                    <span class="sheet-payment-price-subject-text">
                                        배송비
                                    </span>
                                    <strong class="subject-payment-price-subject-price">
                                        배송비 무료
                                    </strong>
                                </div>
                                <div class="sheet-payment-price-total">
                                    <span class="sheet-payment-price-total-text">
                                        총 결제 금액
                                    </span>
                                    <strong class="subject-payment-price-totla-price">
                                        100,000원
                                    </strong>
                                </div>
                                <br/>
                                <div class="sheet-purchase-button-bottom" onclick="location.href='../order/order_confirmed.jsp';">
                                    <div class="sheet-purchase-button">
                                        <span class="sheet-purchase-button-price">
                                            100,000
                                        </span>
                                        원 결제하기
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <div class="sheet-agreement">
                                <strong class="sheet-agreement-text">
                                    주문 내용을 확인했으며 결제에 동의합니다.
                                </strong>
                                <strong class="sheet-agreement-text">
                                    회원님의 개인정보는 안전하게 관리됩니다.
                                </strong>
                                <strong class="sheet-agreement-text">
                                    쇼핑하조는 통신판매중개자로, 업체 배송 상품의 상품/상품정보/거래 등에 대한 책임은 쇼핑하조가 아닌 판매자에게 있습니다.
                                </strong>
                            </div>
                        </section>
                    </section>
                </div>
            </div>
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
        </main>
        <footer>
            <div class="sheet-purchase-button-bottom" id="sheet-purchase-button2" onclick="location.href='../order/order_confirmed.jsp';">
                <div class="sheet-purchase-button">
                    <span class="sheet-purchase-button-price" id="display-result-pay-amount">
                        100,000
                    </span>
                    원 결제하기
                </div>
            </div>
        </footer>

    </body>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function new_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                   /*-- // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("input_extraAddress").value = extraAddr;
                --*/
                } else {
                 //   document.getElementById("input_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('input_postcode').value = data.zonecode;
                document.getElementById("input_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("input_detailAddress").focus();
            }
        }).open();
    }
</script>
</html>