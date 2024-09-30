<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.web.beans.TblMember" %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이 페이지 | 쇼핑하조</title>
    <link rel="stylesheet" href="main.css">
</head>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<!-- 테일윈드 css 불러오기 -->
<script src="https://cdn.tailwindcss.com"></script>

<body style="cursor: default;">
    <div class="header-container">
        <header class="header">
            <a href="../../main-page/login_main.html" class="" aria-label="이전 페이지로 이동 (로그인 후의 메인 페이지)">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path
                        d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005"
                        stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>

            <h1 onclick="toggleBold(this); showContent('maincontents')" style="color: #ffffff; cursor: default;">
                마이 페이지
            </h1>

            <a href="../../cart/cart.jsp">
                <label style="font-size: 24px; cursor: pointer;">
                    <input type="button" value="장바구니" style="cursor: pointer;" />
                    <!-- 장바구니 이미지 -->
                    <i class="fa-solid fa-cart-shopping"></i>
                </label>
            </a>

        </header>

        <div class="con mx-auto" style="min-height: 100vh; display: flex; flex-direction: column;">

            <div class="container" style="flex:1">
                <nav class="sidebar">
                    <div class="sidebar-title" id="" onclick="toggleBold(this); showContent('maincontents')">
                        <p>마이페이지</p>
                    </div>
                    <ul>
                        <li><a href="#" onclick="toggleBold(this); showContent('my-info')" class="sidebar-options">나의
                                정보</a></li> <!-- 나의 정보창 -->
                        <li><a href="../ordered/order-status.html" onclick="toggleBold(this); showContent('orders')"
                                class="sidebar-options">주문 내역</a></li> <!-- 여기에 주문 취소랑 주소 변경 등 넣기-->
                        <li><a href="#" onclick="toggleBold(this); showContent('membership')"
                                class="sidebar-options">멤버십</a></li> <!-- 여기에 멤버십 포인트나 할인 이벤트 등 넣기 -->
                        <li><a href="#" onclick="toggleBold(this); showContent('helpcenter')"
                                class="sidebar-options">고객센터</a></li> <!-- 고객센터 페이지 만들기(같은 페이지임)-->
                        <li><a href="../refund/refund.html" onclick="toggleBold(this); showContent('refunds')"
                                class="sidebar-options">환불 및 교환</a></li> <!-- 환불 및 교환 페이지 만들기(같은 페이지임) -->
                        <li><a href="#" onclick="toggleBold(this); showContent('events')"
                                class="sidebar-options">이벤트</a>
                        </li> <!-- 이벤트 나오는 페이지 만들기 -->
                        <li><a href="#" onclick="toggleBold(this); showContent('announcement')"
                                class="sidebar-options">공지사항</a></li> <!-- 공지사항 페이지 만들기 -->
                        <li><a href="#" onclick="toggleBold(this); showContent('byebye')" class="sidebar-options">회원
                                탈퇴</a>
                        </li> <!-- 이건 나중에 DB에서 delete 문 날리고 새로운 페이지에서 성공했습니다 뜨게 하기 -->

                        <li><a href="#" onclick="toggleBold(this); showContent('')" class="sidebar-options"></a></li>
                        <!-- ('') 안쪽에 더 추가해서 화면 더 만들기 -->

                    </ul>

                    <a href="../../main-page/index.html" style="font-weight: bold; color: red;">로그 아웃</a>

                </nav>



                <main class="main-hello">
                    <!-- 처음 들어왔을때 보여주는 화면 박스 (어서오세요 박스)-->
                    <div class="hello">
                   
                        <p class="left" style="font-weight: bold; cursor: pointer;" onclick="showContent('my-info')">
                        </p> <!-- 여기 '닉네임' 에 DB에서 가져온 username 삽입 -->
                        <div class="right-container">

                            <p id="member-status" class="right" style="cursor: pointer;"
                                onclick="showContent('membership')">회원 등급: ~~~</p>
                            <!-- member-status 라는게 화원 등급 설정임 (3번 구매하면 브론즈 5번 구매하면 실버 등 로직 추가하기) -->
                            <p id="user-member-point" class="right" style="cursor: pointer;"
                                onclick="showContent('membership')">잔여 포인트: ~~~p</p>
                            <!-- user-member-point 라는게 잔여 포인트임 -->
                        </div>

                    </div>

                    <!-- 위에 박스랑 아래 내용이랑 조금 공백 넣으려고 넣음 -->
                    <br />
                    <hr class="line" />
                    <br />

                    <!-- 메인페이지 내용 페이지-->
                    <div id="maincontents" class="content-section" style="display: block;">

                        <!-- 나중에 여기에다가 주문현황 박스 만들기 박스 3개 정도 만들어서 가로로 해서 왼쪽은 주문형황 중간은 주문현황 오른쪽은 고객센터 이렇게 만들기 아래는 후기-->
                        <div class="main-container">
                            <div class="tracking">
                                <h2 class="bold">주문현황</h2>
                                <hr class="line" />


                                <div class="tracking-container">
                                    <header class="tracking-header">
                                        <h1 class="bold">배송 추적하기</h1>
                                        <hr />
                                    </header>

                                    <div class="tracking-box" style="border-radius: 5px;">
                                        <h2 class="bold">주문 번호를 입력하세요:</h2>
                                        <form id="tracking-form">
                                            <input type="text" id="order-number" placeholder="예: 123456789" required />
                                            <button type="button" class="all-button" id="track-button">추적하기</button>
                                        </form>

                                        <div id="tracking-info" class="tracking-info" style="display: none;">
                                            <hr class="line" />
                                            <h3>배송 정보</h3>
                                            <p><strong>주문 번호:</strong> <span id="display-order-number"></span></p>
                                            <div class="progress-container">
                                                <div class="progress-bar"></div>
                                            </div>

                                            <!-- 이 아래가 추적하기 누루면 나오는 내용 나중엔 DB쪽에서 가지고 오기 색은 저거 바를 칸으로 나눠서 한개 될때 마다 칸 채우기(?) 가능한가? 시간 많이 남으면 하기 -->
                                            <div class="progress-labels">
                                                <span>주문 접수</span>
                                                <span>배송 준비중</span>
                                                <span>배송 중</span>
                                                <span>배송 완료</span>
                                            </div>
                                            <p><strong>현재 위치:</strong> 물류센터 A</p>
                                            <p><strong>예상 도착일:</strong> 5일 후</p>
                                        </div>
                                    </div>

                                </div>


                                <br />

                            </div>

                            <!-- <div class="main-box">
                                <a href="#" onclick="showContent('helpcenter')">
                                    <h2 class="bold">고객센터</h2>
                                </a>
                                <hr class="line" />
                                <p>1 : 1 문의 내용</p>

                                -- 여기 내용 더 추가하기 --

                            </div> -->

                            <div class="main-box">
                                <h2 class="bold">후기</h2>
                                <hr class="line" />
                                <p>후기1</p><br />
                                <p>후기2</p><br />
                                <p>후기3</p>
                            </div>
                        </div>

                    </div>

                    <!-- 나의 정보 내용 페이지 -->
                    <div id="my-info" class="content-section" style="display: none;">
                        <div class="profile-container">
                            <h2 class="bold">나의 정보</h2>
                            <!-- h2 태그 말고 class 줘서 크기 조절하기 다른 페이지도 같이 쓰게 (폰트랑 굵기 등 추가) -->
                            <p></p>
                            <div class="profile-info">
                                <!-- span 태그 안에 jsp 넣어서 db에서 나중에 select 해 올거 넣기 -->
                                
								<%
								    TblMember member = (TblMember) session.getAttribute("session_member"); // 세션에서 회원 정보 가져오기
								%>
                                <div class="profile-info">
							    <label for="user-name">이름 :</label>
							    <span id="user-name">
							        <%
							            // member가 null일 경우 처리
							            if (member != null) {
							                out.print(member.getUsername());
							            } else {
							                out.print("로그인 해주세요."); // 회원 정보가 없을 경우 메시지 출력
							            }
							        %>
							    </span>
								</div>
								<div class="profile-info">
								    <label for="user-id">아이디 :</label>
								    <span id="user-id">
								        <%
								            // member가 null일 경우 처리
								            if (member != null) {
								                out.print(member.getUSER_id());
								            } else {
								                out.print("로그인 해주세요.");
								            }
								        %>
								    </span>
								</div>
							<div class="profile-info">
							    <label for="user-pw">비밀번호 :</label>
							    <span id="user-pw">비밀번호는 보안을 위해 표시되지 않습니다.</span>
							</div>
                                <div class="profile-info">
								    <label for="phone">전화번호 :</label>
								    <span id="phone"><%= member.getUserphone() %></span>
								</div>
                                <div class="profile-info">
                                    <label for="address">주소 :</label>
                                    <span id="address">서울특별시 강남구 테헤란로 123</span>
                                </div>
                                <div class="profile-info">
								    <label for="user-gender">성별 :</label>
								    <span id="user-gender"><%= member.getUsergender() %></span>
								</div>
                                <div class="profile-info">
                                    <label for="email">이메일 :</label>
                                    <span id="email">example@example.com</span>
                                </div>

                                <div style="width: 100%;">
                                    <a href="#" onclick="showContent('edit-my-info')">
                                        <input type="button" id="" class="all-button" value="정보 수정하기"
                                            style="width: 100%;" /></a> <!-- edit-my-info 와서 보여주기 -->
                                </div>

                            </div>


                        </div>



                    </div>



                    <!-- 나의 멤버십 페이지 -->

                    <!-- 현재 포인트 섹션 -->
                    <div id="membership" class="content-section" style="display: none;">
                        <section class="bold" style="text-align: center;">
                            <h2>현재 보유 포인트: <span id="current-points">750</span> P</h2>
                            <div class="membership-bar-container">
                                <div class="membership-bar" id="membership-bar"></div>
                            </div>
                            <p id="points-left-text">다음 등급까지 250 포인트가 남았습니다!</p>
                        </section>

                        <!-- 멤버십 단계 -->
                        <section class="membership-levels">
                            <div class="membership-level">
                                <h3>Basic</h3>
                                <p>0 - 999 포인트</p>
                                <ul>
                                    <li>신규 가입 시 5% 할인 쿠폰</li>
                                    <li>포인트 적립: 구매 금액의 5%</li>
                                    <li>무료 배송 (일정 금액 이상 구매 시)</li>
                                </ul>
                            </div>

                            <div class="membership-level">
                                <h3>Premium</h3>
                                <p>1000 - 4999 포인트</p>
                                <ul>
                                    <li>10% 할인 쿠폰</li>
                                    <li>포인트 적립: 구매 금액의 10%</li>
                                    <li>무료 배송</li>
                                    <li>생일 축하 쿠폰</li>
                                </ul>
                            </div>

                            <div class="membership-level">
                                <h3>VIP</h3>
                                <p>5000 포인트 이상</p>
                                <ul>
                                    <li>20% 할인 쿠폰</li>
                                    <li>포인트 적립: 구매 금액의 20%</li>
                                    <li>전 제품 무료 배송</li>
                                    <li>생일 축하 쿠폰</li>
                                    <li>한정판 상품 사전 예약 기회</li>
                                </ul>
                            </div>
                        </section>

                    </div>


                    <!-- 고객센터 상담 페이지 -->
                    <div id="helpcenter" class="content-section" style="display: none;">
                        <div class="profile-container">
                            <h2 class="bold">고객 지원 센터 센터</h2>
                            <div>
                                고객 지원 센터: 1234-5678 | 이메일: shoppinghajo@samjo.com<br />
                                운영 시간: 월-금, 09:00-18:00 (주말 및 공휴일 휴무)<br />
                            </div>
                            <br />
                            <a href="https://chatgpt.com/" target="_blank">
                                <p class="all-button">AI 챗 봇이랑 대화하기</p>
                            </a>

                            <!-- <hr class="line" />
                    1 : 1 상담 버튼 추가 -> 상담하고 그 내역 전송
                    (전송된거 받는 페이지 or DB) 안보임
                    상담 내역 추가 - 장바구니 나 주문내역 에서 for 문 돌린거 처럼 추가 하면 될듯 (아직은 for문 없음)

                    박스 2개 있음 좌우로 한개는 상담 하기 내용 한개는 상담 한 후의 내용 / 내역 -->

                        </div>
                    </div>

                    <!-- 이벤트 페이지 -->
                    <div id="events" class="content-section" style="display: none;">
                        <div>

                            <!-- 아직 a 태그에 # 넣음 나중에는 이벤트 페이지 만들어서 이벤트 내용 집어 넣기 -->

                            <!-- 스크롤 가능한 이벤트 카드 섹션 -->
                            <div class="events-section-wrapper">
                                <section class="events-section">

                                    <!-- 이벤트 카드 1 -->
                                    <div class="event-card">
                                        <img src="https://via.placeholder.com/500x200" alt="이벤트 1 이미지">
                                        <div class="event-card-content">
                                            <h3>가을 시즌 할인</h3>
                                            <p>가을을 맞아 전 제품 20% 할인! 지금 바로 쇼핑하세요.</p>
                                            <a href="#" class="all-button">이벤트 참여하기</a>
                                        </div>
                                    </div>

                                    <!-- 이벤트 카드 2 -->
                                    <div class="event-card">
                                        <img src="https://via.placeholder.com/500x200" alt="이벤트 2 이미지">
                                        <div class="event-card-content">
                                            <h3>신규 회원 웰컴 쿠폰</h3>
                                            <p>신규 회원 가입 시 10% 할인 쿠폰을 드립니다!</p>
                                            <a href="#" class="all-button">이벤트 참여하기</a>
                                        </div>
                                    </div>

                                    <!-- 이벤트 카드 3 -->
                                    <div class="event-card">
                                        <img src="https://via.placeholder.com/500x200" alt="이벤트 3 이미지">
                                        <div class="event-card-content">
                                            <h3>무료 배송 이벤트</h3>
                                            <p>특정 금액 이상 구매 시, 무료 배송 혜택을 드립니다.</p>
                                            <a href="#" class="all-button">이벤트 참여하기</a>
                                        </div>
                                    </div>

                                    <!-- 이벤트 카드 4 -->
                                    <div class="event-card">
                                        <img src="https://via.placeholder.com/500x200" alt="이벤트 4 이미지">
                                        <div class="event-card-content">
                                            <h3>VIP 전용 프로모션</h3>
                                            <p>VIP 고객님들만을 위한 특별한 혜택을 누려보세요.</p>
                                            <a href="#" class="all-button">이벤트 참여하기</a>
                                        </div>
                                    </div>

                                </section>
                            </div>

                        </div>
                    </div>


                    <!-- 공지사항 페이지 -->
                    <div id="announcement" class="content-section" style="display: none;">
                        <div class="profile-container">

                            <!-- 지금은 이동하는게 공지 1뿐이지만 나중엔 공지 누루면 바로 공지 페이지로 이동 가능 하게끔 만들기 -->


                            <div class="events-section-wrapper">
                                <section class="events-section">

                                    <!-- 공지1 -->
                                    <div class="event-card">
                                        <a href="https://www.naver.com/">
                                            <div class="event-card-content">
                                                <h3>공지1</h3>
                                                <p>세일 안해요.</p>
                                            </div>
                                        </a>
                                    </div>

                                    <!-- 공지 2 -->
                                    <div class="event-card">
                                        <div class="event-card-content">
                                            <h3>공지 2</h3>
                                            <p>멤버십 포인트 있는거 만들거임?</p>
                                        </div>
                                    </div>

                                    <!-- 공지 3 -->
                                    <div class="event-card">
                                        <div class="event-card-content">
                                            <h3>공지 3</h3>
                                            <p>DB 언제됨?.</p>
                                        </div>
                                    </div>

                                    <!-- 공지 4 -->
                                    <div class="event-card">
                                        <div class="event-card-content">
                                            <h3>공지 4</h3>
                                            <p>섭종합니다.</p>
                                        </div>
                                    </div>

                                </section>
                            </div>



                        </div>
                    </div>



                    <!-- 회원 탈퇴 -->
                    <div id="byebye" class="content-section" style="display: none;">
                        <div class="profile-container">

                            <button onclick="showModal()" class="all-button">회원 탈퇴</button>

                            <div id="modal">
                                <div id="modalContent">
                                    <h2>회원 탈퇴 확인</h2>
                                    <p>회원 탈퇴하시겠습니까?</p>
                                    <button class="all-button" onclick="confirmWithdrawal(true)">네</button>
                                    <button class="all-button" onclick="confirmWithdrawal(false)">아니오</button>
                                </div>
                            </div>

                        </div>

                    </div>



                    <!-- 정보 수정하기 페이지 -->
                    <div id="edit-my-info" class="content-section" style="display: none;">
                        <div class="profile-container">
                            <div class="">
                                <h1 style="font-weight: bold;">정보 수정하기</h1>
                                <br />

                                <!-- 지금은 그냥 바로 수정하기 나오는데 나중엔 placeholder에 기존에 있던거 그댜로 가지고 오기(환불에 있는 주문번호처럼)
                                    readonly 는 안하지만, 그리고 만약 사용자가 수정하면 그거만 바뀌게 하기 (건든것만) 안건드렸으면 그냥 기존꺼 그대로 냅두기
                                    또 변경하면 그 박스는 다른색으로 표현 되게 하기 border 값 같은거 넣서 색 입히면 될듯

                                    input[type="text"]:focus, input[type="email"]:focus, input[type="tel"]:focus {
                                    border-color: #007BFF;
                                    outline: none;
}
                                    위에 처럼 css에 넣으면 될듯 색만 좀 바꾸고 
                                -->


                                <form>

                                    <div class="profile-info">
                                        <label for="user-name">이름 :</label>
                                        <input type="text" id="" name="user-name" placeholder="이름을 입력하세요">
                                    </div>

                                    <label for="user-id">아이디</label>
                                    <input type="text" id="" name="user-id" placeholder="아이디를 입력하세요">

                                    <label for="pw">비밀번호</label>
                                    <input type="text" id="" name="pw" placeholder="비밀번호를 입력하세요">

                                    <label for="user-name" class="">이름</label>
                                    <input type="text" id="" name="user-name" placeholder="이름을 입력하세요">

                                    <label for="user-addr">주소</label>
                                    <input type="text" id="" name="user-addr" placeholder="주소를 입력하세요">

                                    <label for="phone">전화번호</label>
                                    <input type="tel" id="" name="" placeholder="전화번호를 입력하세요">

                                    <label for="user-gender">성별</label>
                                    <div style="padding-top: 12px;">
                                        <input type="radio" id="male" name="user-gender" value="male">
                                        <label for="male">남</label>

                                        <input type="radio" id="female" name="user-gender" value="female">
                                        <label for="female">여</label>
                                    </div>

                                </form>

                                <div style="padding-top: 20px;">
                                    <a href="#" onclick="showContent('my-info')"><input type="button" class="all-button"
                                            value="수정하기" /></a>
                                    <!-- 지금은 그냥 나의 정보 페이지로 이동하는데 나중에는 누루면 DB 에서 update 하고 나의 정보 페이지로 이동하게 만들기 -->
                                </div>
                            </div>

                        </div>


                    </div>



                    <!-- 더 추가할 페이지들 -->





                </main>



            </div>

        </div>

</body>
<script src="main-script.js"></script>

</html>