<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ë§ì´ íì´ì§ | ì¼ííì¡°</title>
    <link rel="stylesheet" href="main.css">
</head>

<!-- í°í¸ì´ì¸ ë¶ë¬ì¤ê¸° -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<!-- íì¼ìë css ë¶ë¬ì¤ê¸° -->
<script src="https://cdn.tailwindcss.com"></script>

<body style="cursor: default;">
    <div class="header-container">
        <header class="header">
            <a href="../../main-page/login_main.html" class="" aria-label="ì´ì  íì´ì§ë¡ ì´ë (ë¡ê·¸ì¸ íì ë©ì¸ íì´ì§)">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path
                        d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005"
                        stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>

            <h1 onclick="toggleBold(this); showContent('maincontents')" style="color: #ffffff; cursor: default;">
                ë§ì´ íì´ì§
            </h1>

            <a href="../../cart/cart.jsp">
                <label style="font-size: 24px; cursor: pointer;">
                    <input type="button" value="ì¥ë°êµ¬ë" style="cursor: pointer;" />
                    <!-- ì¥ë°êµ¬ë ì´ë¯¸ì§ -->
                    <i class="fa-solid fa-cart-shopping"></i>
                </label>
            </a>

        </header>

        <div class="con mx-auto" style="min-height: 100vh; display: flex; flex-direction: column;">

            <div class="container" style="flex:1">
                <nav class="sidebar">
                    <div class="sidebar-title" id="" onclick="toggleBold(this); showContent('maincontents')">
                        <p>ë§ì´íì´ì§</p>
                    </div>
                    <ul>
                        <li><a href="#" onclick="toggleBold(this); showContent('my-info')" class="sidebar-options">ëì
                                ì ë³´</a></li> <!-- ëì ì ë³´ì°½ -->
                        <li><a href="../ordered/order-status.html" onclick="toggleBold(this); showContent('orders')"
                                class="sidebar-options">ì£¼ë¬¸ ë´ì­</a></li> <!-- ì¬ê¸°ì ì£¼ë¬¸ ì·¨ìë ì£¼ì ë³ê²½ ë± ë£ê¸°-->
                        <li><a href="#" onclick="toggleBold(this); showContent('membership')"
                                class="sidebar-options">ë©¤ë²ì­</a></li> <!-- ì¬ê¸°ì ë©¤ë²ì­ í¬ì¸í¸ë í ì¸ ì´ë²¤í¸ ë± ë£ê¸° -->
                        <li><a href="#" onclick="toggleBold(this); showContent('helpcenter')"
                                class="sidebar-options">ê³ ê°ì¼í°</a></li> <!-- ê³ ê°ì¼í° íì´ì§ ë§ë¤ê¸°(ê°ì íì´ì§ì)-->
                        <li><a href="../refund/refund.html" onclick="toggleBold(this); showContent('refunds')"
                                class="sidebar-options">íë¶ ë° êµí</a></li> <!-- íë¶ ë° êµí íì´ì§ ë§ë¤ê¸°(ê°ì íì´ì§ì) -->
                        <li><a href="#" onclick="toggleBold(this); showContent('events')"
                                class="sidebar-options">ì´ë²¤í¸</a>
                        </li> <!-- ì´ë²¤í¸ ëì¤ë íì´ì§ ë§ë¤ê¸° -->
                        <li><a href="#" onclick="toggleBold(this); showContent('announcement')"
                                class="sidebar-options">ê³µì§ì¬í­</a></li> <!-- ê³µì§ì¬í­ íì´ì§ ë§ë¤ê¸° -->
                        <li><a href="#" onclick="toggleBold(this); showContent('byebye')" class="sidebar-options">íì
                                íí´</a>
                        </li> <!-- ì´ê±´ ëì¤ì DBìì delete ë¬¸ ë ë¦¬ê³  ìë¡ì´ íì´ì§ìì ì±ê³µíìµëë¤ ë¨ê² íê¸° -->

                        <li><a href="#" onclick="toggleBold(this); showContent('')" class="sidebar-options"></a></li>
                        <!-- ('') ììª½ì ë ì¶ê°í´ì íë©´ ë ë§ë¤ê¸° -->

                    </ul>

                    <a href="../../main-page/index.html" style="font-weight: bold; color: red;">ë¡ê·¸ ìì</a>

                </nav>



                <main class="main-hello">
                    <!-- ì²ì ë¤ì´ììë ë³´ì¬ì£¼ë íë©´ ë°ì¤ (ì´ìì¤ì¸ì ë°ì¤)-->
                    <div class="hello">
                        <p class="left" style="font-weight: bold; cursor: pointer;" onclick="showContent('my-info')">ëë¤ì
                        </p> <!-- ì¬ê¸° 'ëë¤ì' ì DBìì ê°ì ¸ì¨ username ì½ì -->
                        <div class="right-container">

                            <p id="member-status" class="right" style="cursor: pointer;"
                                onclick="showContent('membership')">íì ë±ê¸: ~~~</p>
                            <!-- member-status ë¼ëê² íì ë±ê¸ ì¤ì ì (3ë² êµ¬ë§¤íë©´ ë¸ë¡ ì¦ 5ë² êµ¬ë§¤íë©´ ì¤ë² ë± ë¡ì§ ì¶ê°íê¸°) -->
                            <p id="user-member-point" class="right" style="cursor: pointer;"
                                onclick="showContent('membership')">ìì¬ í¬ì¸í¸: ~~~p</p>
                            <!-- user-member-point ë¼ëê² ìì¬ í¬ì¸í¸ì -->
                        </div>

                    </div>

                    <!-- ìì ë°ì¤ë ìë ë´ì©ì´ë ì¡°ê¸ ê³µë°± ë£ì¼ë ¤ê³  ë£ì -->
                    <br />
                    <hr class="line" />
                    <br />

                    <!-- ë©ì¸íì´ì§ ë´ì© íì´ì§-->
                    <div id="maincontents" class="content-section" style="display: block;">

                        <!-- ëì¤ì ì¬ê¸°ìë¤ê° ì£¼ë¬¸íí© ë°ì¤ ë§ë¤ê¸° ë°ì¤ 3ê° ì ë ë§ë¤ì´ì ê°ë¡ë¡ í´ì ì¼ìª½ì ì£¼ë¬¸íí© ì¤ê°ì ì£¼ë¬¸íí© ì¤ë¥¸ìª½ì ê³ ê°ì¼í° ì´ë ê² ë§ë¤ê¸° ìëë íê¸°-->
                        <div class="main-container">
                            <div class="tracking">
                                <h2 class="bold">ì£¼ë¬¸íí©</h2>
                                <hr class="line" />


                                <div class="tracking-container">
                                    <header class="tracking-header">
                                        <h1 class="bold">ë°°ì¡ ì¶ì íê¸°</h1>
                                        <hr />
                                    </header>

                                    <div class="tracking-box" style="border-radius: 5px;">
                                        <h2 class="bold">ì£¼ë¬¸ ë²í¸ë¥¼ ìë ¥íì¸ì:</h2>
                                        <form id="tracking-form">
                                            <input type="text" id="order-number" placeholder="ì: 123456789" required />
                                            <button type="button" class="all-button" id="track-button">ì¶ì íê¸°</button>
                                        </form>

                                        <div id="tracking-info" class="tracking-info" style="display: none;">
                                            <hr class="line" />
                                            <h3>ë°°ì¡ ì ë³´</h3>
                                            <p><strong>ì£¼ë¬¸ ë²í¸:</strong> <span id="display-order-number"></span></p>
                                            <div class="progress-container">
                                                <div class="progress-bar"></div>
                                            </div>

                                            <!-- ì´ ìëê° ì¶ì íê¸° ëë£¨ë©´ ëì¤ë ë´ì© ëì¤ì DBìª½ìì ê°ì§ê³  ì¤ê¸° ìì ì ê±° ë°ë¥¼ ì¹¸ì¼ë¡ ëë ì íê° ë ë ë§ë¤ ì¹¸ ì±ì°ê¸°(?) ê°ë¥íê°? ìê° ë§ì´ ë¨ì¼ë©´ íê¸° -->
                                            <div class="progress-labels">
                                                <span>ì£¼ë¬¸ ì ì</span>
                                                <span>ë°°ì¡ ì¤ë¹ì¤</span>
                                                <span>ë°°ì¡ ì¤</span>
                                                <span>ë°°ì¡ ìë£</span>
                                            </div>
                                            <p><strong>íì¬ ìì¹:</strong> ë¬¼ë¥ì¼í° A</p>
                                            <p><strong>ìì ëì°©ì¼:</strong> 5ì¼ í</p>
                                        </div>
                                    </div>

                                </div>


                                <br />

                            </div>

                            <!-- <div class="main-box">
                                <a href="#" onclick="showContent('helpcenter')">
                                    <h2 class="bold">ê³ ê°ì¼í°</h2>
                                </a>
                                <hr class="line" />
                                <p>1 : 1 ë¬¸ì ë´ì©</p>

                                -- ì¬ê¸° ë´ì© ë ì¶ê°íê¸° --

                            </div> -->

                            <div class="main-box">
                                <h2 class="bold">íê¸°</h2>
                                <hr class="line" />
                                <p>íê¸°1</p><br />
                                <p>íê¸°2</p><br />
                                <p>íê¸°3</p>
                            </div>
                        </div>

                    </div>

                    <!-- ëì ì ë³´ ë´ì© íì´ì§ -->
                    <div id="my-info" class="content-section" style="display: none;">
                        <div class="profile-container">
                            <h2 class="bold">ëì ì ë³´</h2>
                            <!-- h2 íê·¸ ë§ê³  class ì¤ì í¬ê¸° ì¡°ì íê¸° ë¤ë¥¸ íì´ì§ë ê°ì´ ì°ê² (í°í¸ë êµµê¸° ë± ì¶ê°) -->
                            <p></p>
                            <div class="profile-info">
                                <!-- span íê·¸ ìì jsp ë£ì´ì dbìì ëì¤ì select í´ ì¬ê±° ë£ê¸° -->
                                <div class="profile-info">
                                    <label for="user-name">ì´ë¦ :</label>
                                    <span id="user-name">NAME~~~</span>
                                </div>
                                <div class="profile-info">
                                    <label for="user-id">ìì´ë :</label>
                                    <span id="user-id">ID~~~</span>
                                </div>
                                <div class="profile-info">
                                    <label for="user-pw">ë¹ë°ë²í¸ :</label>
                                    <span id="user-pw">pasword~~~</span>
                                </div>
                                <div class="profile-info">
                                    <label for="phone">ì íë²í¸ :</label>
                                    <span id="phone">010-1234-5678</span>
                                </div>
                                <div class="profile-info">
                                    <label for="address">ì£¼ì :</label>
                                    <span id="address">ìì¸í¹ë³ì ê°ë¨êµ¬ íí¤ëë¡ 123</span>
                                </div>
                                <div class="profile-info">
                                    <label for="user-gender">ì±ë³ :</label>
                                    <span id="user-gender">ë¨</span>
                                </div>
                                <div class="profile-info">
                                    <label for="email">ì´ë©ì¼ :</label>
                                    <span id="email">example@example.com</span>
                                </div>

                                <div style="width: 100%;">
                                    <a href="#" onclick="showContent('edit-my-info')">
                                        <input type="button" id="" class="all-button" value="ì ë³´ ìì íê¸°"
                                            style="width: 100%;" /></a> <!-- edit-my-info ìì ë³´ì¬ì£¼ê¸° -->
                                </div>

                            </div>


                        </div>



                    </div>



                    <!-- ëì ë©¤ë²ì­ íì´ì§ -->

                    <!-- íì¬ í¬ì¸í¸ ì¹ì -->
                    <div id="membership" class="content-section" style="display: none;">
                        <section class="bold" style="text-align: center;">
                            <h2>íì¬ ë³´ì  í¬ì¸í¸: <span id="current-points">750</span> P</h2>
                            <div class="membership-bar-container">
                                <div class="membership-bar" id="membership-bar"></div>
                            </div>
                            <p id="points-left-text">ë¤ì ë±ê¸ê¹ì§ 250 í¬ì¸í¸ê° ë¨ììµëë¤!</p>
                        </section>

                        <!-- ë©¤ë²ì­ ë¨ê³ -->
                        <section class="membership-levels">
                            <div class="membership-level">
                                <h3>Basic</h3>
                                <p>0 - 999 í¬ì¸í¸</p>
                                <ul>
                                    <li>ì ê· ê°ì ì 5% í ì¸ ì¿ í°</li>
                                    <li>í¬ì¸í¸ ì ë¦½: êµ¬ë§¤ ê¸ì¡ì 5%</li>
                                    <li>ë¬´ë£ ë°°ì¡ (ì¼ì  ê¸ì¡ ì´ì êµ¬ë§¤ ì)</li>
                                </ul>
                            </div>

                            <div class="membership-level">
                                <h3>Premium</h3>
                                <p>1000 - 4999 í¬ì¸í¸</p>
                                <ul>
                                    <li>10% í ì¸ ì¿ í°</li>
                                    <li>í¬ì¸í¸ ì ë¦½: êµ¬ë§¤ ê¸ì¡ì 10%</li>
                                    <li>ë¬´ë£ ë°°ì¡</li>
                                    <li>ìì¼ ì¶í ì¿ í°</li>
                                </ul>
                            </div>

                            <div class="membership-level">
                                <h3>VIP</h3>
                                <p>5000 í¬ì¸í¸ ì´ì</p>
                                <ul>
                                    <li>20% í ì¸ ì¿ í°</li>
                                    <li>í¬ì¸í¸ ì ë¦½: êµ¬ë§¤ ê¸ì¡ì 20%</li>
                                    <li>ì  ì í ë¬´ë£ ë°°ì¡</li>
                                    <li>ìì¼ ì¶í ì¿ í°</li>
                                    <li>íì í ìí ì¬ì  ìì½ ê¸°í</li>
                                </ul>
                            </div>
                        </section>

                    </div>


                    <!-- ê³ ê°ì¼í° ìë´ íì´ì§ -->
                    <div id="helpcenter" class="content-section" style="display: none;">
                        <div class="profile-container">
                            <h2 class="bold">ê³ ê° ì§ì ì¼í° ì¼í°</h2>
                            <div>
                                ê³ ê° ì§ì ì¼í°: 1234-5678 | ì´ë©ì¼: shoppinghajo@samjo.com<br />
                                ì´ì ìê°: ì-ê¸, 09:00-18:00 (ì£¼ë§ ë° ê³µí´ì¼ í´ë¬´)<br />
                            </div>
                            <br />
                            <a href="https://chatgpt.com/" target="_blank">
                                <p class="all-button">AI ì± ë´ì´ë ëííê¸°</p>
                            </a>

                            <!-- <hr class="line" />
                    1 : 1 ìë´ ë²í¼ ì¶ê° -> ìë´íê³  ê·¸ ë´ì­ ì ì¡
                    (ì ì¡ëê±° ë°ë íì´ì§ or DB) ìë³´ì
                    ìë´ ë´ì­ ì¶ê° - ì¥ë°êµ¬ë ë ì£¼ë¬¸ë´ì­ ìì for ë¬¸ ëë¦°ê±° ì²ë¼ ì¶ê° íë©´ ë ë¯ (ìì§ì forë¬¸ ìì)

                    ë°ì¤ 2ê° ìì ì¢ì°ë¡ íê°ë ìë´ íê¸° ë´ì© íê°ë ìë´ í íì ë´ì© / ë´ì­ -->

                        </div>
                    </div>

                    <!-- ì´ë²¤í¸ íì´ì§ -->
                    <div id="events" class="content-section" style="display: none;">
                        <div>

                            <!-- ìì§ a íê·¸ì # ë£ì ëì¤ìë ì´ë²¤í¸ íì´ì§ ë§ë¤ì´ì ì´ë²¤í¸ ë´ì© ì§ì´ ë£ê¸° -->

                            <!-- ì¤í¬ë¡¤ ê°ë¥í ì´ë²¤í¸ ì¹´ë ì¹ì -->
                            <div class="events-section-wrapper">
                                <section class="events-section">

                                    <!-- ì´ë²¤í¸ ì¹´ë 1 -->
                                    <div class="event-card">
                                        <img src="https://via.placeholder.com/500x200" alt="ì´ë²¤í¸ 1 ì´ë¯¸ì§">
                                        <div class="event-card-content">
                                            <h3>ê°ì ìì¦ í ì¸</h3>
                                            <p>ê°ìì ë§ì ì  ì í 20% í ì¸! ì§ê¸ ë°ë¡ ì¼ííì¸ì.</p>
                                            <a href="#" class="all-button">ì´ë²¤í¸ ì°¸ì¬íê¸°</a>
                                        </div>
                                    </div>

                                    <!-- ì´ë²¤í¸ ì¹´ë 2 -->
                                    <div class="event-card">
                                        <img src="https://via.placeholder.com/500x200" alt="ì´ë²¤í¸ 2 ì´ë¯¸ì§">
                                        <div class="event-card-content">
                                            <h3>ì ê· íì ì°ì»´ ì¿ í°</h3>
                                            <p>ì ê· íì ê°ì ì 10% í ì¸ ì¿ í°ì ëë¦½ëë¤!</p>
                                            <a href="#" class="all-button">ì´ë²¤í¸ ì°¸ì¬íê¸°</a>
                                        </div>
                                    </div>

                                    <!-- ì´ë²¤í¸ ì¹´ë 3 -->
                                    <div class="event-card">
                                        <img src="https://via.placeholder.com/500x200" alt="ì´ë²¤í¸ 3 ì´ë¯¸ì§">
                                        <div class="event-card-content">
                                            <h3>ë¬´ë£ ë°°ì¡ ì´ë²¤í¸</h3>
                                            <p>í¹ì  ê¸ì¡ ì´ì êµ¬ë§¤ ì, ë¬´ë£ ë°°ì¡ ííì ëë¦½ëë¤.</p>
                                            <a href="#" class="all-button">ì´ë²¤í¸ ì°¸ì¬íê¸°</a>
                                        </div>
                                    </div>

                                    <!-- ì´ë²¤í¸ ì¹´ë 4 -->
                                    <div class="event-card">
                                        <img src="https://via.placeholder.com/500x200" alt="ì´ë²¤í¸ 4 ì´ë¯¸ì§">
                                        <div class="event-card-content">
                                            <h3>VIP ì ì© íë¡ëª¨ì</h3>
                                            <p>VIP ê³ ê°ëë¤ë§ì ìí í¹ë³í ííì ëë ¤ë³´ì¸ì.</p>
                                            <a href="#" class="all-button">ì´ë²¤í¸ ì°¸ì¬íê¸°</a>
                                        </div>
                                    </div>

                                </section>
                            </div>

                        </div>
                    </div>


                    <!-- ê³µì§ì¬í­ íì´ì§ -->
                    <div id="announcement" class="content-section" style="display: none;">
                        <div class="profile-container">

                            <!-- ì§ê¸ì ì´ëíëê² ê³µì§ 1ë¿ì´ì§ë§ ëì¤ì ê³µì§ ëë£¨ë©´ ë°ë¡ ê³µì§ íì´ì§ë¡ ì´ë ê°ë¥ íê²ë ë§ë¤ê¸° -->


                            <div class="events-section-wrapper">
                                <section class="events-section">

                                    <!-- ê³µì§1 -->
                                    <div class="event-card">
                                        <a href="https://www.naver.com/">
                                            <div class="event-card-content">
                                                <h3>ê³µì§1</h3>
                                                <p>ì¸ì¼ ìí´ì.</p>
                                            </div>
                                        </a>
                                    </div>

                                    <!-- ê³µì§ 2 -->
                                    <div class="event-card">
                                        <div class="event-card-content">
                                            <h3>ê³µì§ 2</h3>
                                            <p>ë©¤ë²ì­ í¬ì¸í¸ ìëê±° ë§ë¤ê±°ì?</p>
                                        </div>
                                    </div>

                                    <!-- ê³µì§ 3 -->
                                    <div class="event-card">
                                        <div class="event-card-content">
                                            <h3>ê³µì§ 3</h3>
                                            <p>DB ì¸ì ë¨?.</p>
                                        </div>
                                    </div>

                                    <!-- ê³µì§ 4 -->
                                    <div class="event-card">
                                        <div class="event-card-content">
                                            <h3>ê³µì§ 4</h3>
                                            <p>ì­ì¢í©ëë¤.</p>
                                        </div>
                                    </div>

                                </section>
                            </div>



                        </div>
                    </div>



                    <!-- íì íí´ -->
                    <div id="byebye" class="content-section" style="display: none;">
                        <div class="profile-container">

                            <button onclick="showModal()" class="all-button">íì íí´</button>

                            <div id="modal">
                                <div id="modalContent">
                                    <h2>íì íí´ íì¸</h2>
                                    <p>íì íí´íìê² ìµëê¹?</p>
                                    <button class="all-button" onclick="confirmWithdrawal(true)">ë¤</button>
                                    <button class="all-button" onclick="confirmWithdrawal(false)">ìëì¤</button>
                                </div>
                            </div>

                        </div>

                    </div>



                    <!-- ì ë³´ ìì íê¸° íì´ì§ -->
                    <div id="edit-my-info" class="content-section" style="display: none;">
                        <div class="profile-container">
                            <div class="">
                                <h1 style="font-weight: bold;">ì ë³´ ìì íê¸°</h1>
                                <br />

                                <!-- ì§ê¸ì ê·¸ë¥ ë°ë¡ ìì íê¸° ëì¤ëë° ëì¤ì placeholderì ê¸°ì¡´ì ìëê±° ê·¸ëë¡ ê°ì§ê³  ì¤ê¸°(íë¶ì ìë ì£¼ë¬¸ë²í¸ì²ë¼)
                                    readonly ë ìíì§ë§, ê·¸ë¦¬ê³  ë§ì½ ì¬ì©ìê° ìì íë©´ ê·¸ê±°ë§ ë°ëê² íê¸° (ê±´ë ê²ë§) ìê±´ëë ¸ì¼ë©´ ê·¸ë¥ ê¸°ì¡´êº¼ ê·¸ëë¡ ëëê¸°
                                    ë ë³ê²½íë©´ ê·¸ ë°ì¤ë ë¤ë¥¸ìì¼ë¡ íí ëê² íê¸° border ê° ê°ìê±° ë£ì ì ìíë©´ ë ë¯

                                    input[type="text"]:focus, input[type="email"]:focus, input[type="tel"]:focus {
                                    border-color: #007BFF;
                                    outline: none;
}
                                    ìì ì²ë¼ cssì ë£ì¼ë©´ ë ë¯ ìë§ ì¢ ë°ê¾¸ê³  
                                -->


                                <form>

                                    <div class="profile-info">
                                        <label for="user-name">ì´ë¦ :</label>
                                        <input type="text" id="" name="user-name" placeholder="ì´ë¦ì ìë ¥íì¸ì">
                                    </div>

                                    <label for="user-id">ìì´ë</label>
                                    <input type="text" id="" name="user-id" placeholder="ìì´ëë¥¼ ìë ¥íì¸ì">

                                    <label for="pw">ë¹ë°ë²í¸</label>
                                    <input type="text" id="" name="pw" placeholder="ë¹ë°ë²í¸ë¥¼ ìë ¥íì¸ì">

                                    <label for="user-name" class="">ì´ë¦</label>
                                    <input type="text" id="" name="user-name" placeholder="ì´ë¦ì ìë ¥íì¸ì">

                                    <label for="user-addr">ì£¼ì</label>
                                    <input type="text" id="" name="user-addr" placeholder="ì£¼ìë¥¼ ìë ¥íì¸ì">

                                    <label for="phone">ì íë²í¸</label>
                                    <input type="tel" id="" name="" placeholder="ì íë²í¸ë¥¼ ìë ¥íì¸ì">

                                    <label for="user-gender">ì±ë³</label>
                                    <div style="padding-top: 12px;">
                                        <input type="radio" id="male" name="user-gender" value="male">
                                        <label for="male">ë¨</label>

                                        <input type="radio" id="female" name="user-gender" value="female">
                                        <label for="female">ì¬</label>
                                    </div>

                                </form>

                                <div style="padding-top: 20px;">
                                    <a href="#" onclick="showContent('my-info')"><input type="button" class="all-button"
                                            value="ìì íê¸°" /></a>
                                    <!-- ì§ê¸ì ê·¸ë¥ ëì ì ë³´ íì´ì§ë¡ ì´ëíëë° ëì¤ìë ëë£¨ë©´ DB ìì update íê³  ëì ì ë³´ íì´ì§ë¡ ì´ëíê² ë§ë¤ê¸° -->
                                </div>
                            </div>

                        </div>


                    </div>



                    <!-- ë ì¶ê°í  íì´ì§ë¤ -->





                </main>



            </div>

        </div>

</body>
<script src="main-script.js"></script>

</html>