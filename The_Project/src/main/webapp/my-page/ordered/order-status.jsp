<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ì£¼ë¬¸ ë´ì­ | ì¼ííì¡°</title>
    <link rel="stylesheet" href="order-status.css">
</head>

<body style="cursor: default;">

    <!-- ì§ê¸ì ê·¸ë¥ íì´ë¸ ìëì¼ë¡ ë§ëëê±°ì§ë§ ëì¤ììë <c: > ë¬¸ ì¬ì©í´ì ë°ì´í° ìì¼ë©´ ê³ì ê°ì§ê³  ì¤ê² ë§ë¤ì´ ë³´ê¸° -->

    <div class="container" style="text-align: center;">
        <header class="header">
            <a href="../../my-page/my-main/my-page-main.html" class="button-back-page" aria-label="ì´ì  íì´ì§ë¡ ì´ë">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path
                        d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005"
                        stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>
            <h1 style="flex-grow: 1; text-align: center;">ì£¼ë¬¸ ë´ì­</h1>
            <p></p>
        </header>


        <div class="orderlist" style="min-height: 100vh; display: flex; flex-direction: column;">
            <h1>ëì ì£¼ë¬¸ ë´ì­ ìì íì´ë¸</h1>
            <p></p>
            <table>
                <thead>
                    <tr>
                        <th>ì£¼ë¬¸ ë²í¸</th>
                        <th>ìíëª</th>
                        <th>ìë</th>
                        <th>ê°ê²©</th>
                        <th>ì£¼ë¬¸ ë ì§</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#001</td>
                        <td>
                            <div class="product-info" style="flex:1">
                                <!-- @@@ ì í ì´ë¯¸ì§ í´ë¦­íë©´ ìì¸ íì´ì§ë¡ ì´ëíê²ë ë§ë¤ê¸° ëì¤ì @@@ -->
                                <img src="https://image.msscdn.net/thumbnails/images/goods_img/20210826/2092852/2092852_17086532214128_big.jpg?w=1200"
                                    alt="ì´ì§ ìì´ë ë°ë í¬ì¸  ê·¸ë ì´" class="product-image" id="" />
                                <!-- id ê°ì ë°ì§ ì¹´íê³ ë¦¬ë¡ ê°ë ê±° ë£ê¸° -->
                                <div class="product-details">
                                    <p>ì´ì§ ìì´ë ë°ë í¬ì¸  ê·¸ë ì´</p>
                                    <p>â©20,000</p>
                                    <p>ë¨ì ìë: <span class="stock-quantity">1</span>ê°</p>
                                    <!-- ì ê¸° span íê·¸ ììª½ ì«ìê° ë¨ì ìëì ëì¤ì DBìì ë¨ì ìë ê°ì§ê³  ìì ë£ì¼ë©´ ë  ë¯ -->
                                </div>
                            </div>
                        </td>
                        <td></td>
                        <td>â©20,000</td>
                        <td>
                            <span> ì£¼ë¬¸ ë ì§ <br/> </span> 2024-09-15 <br /><br />
                            <a href="../refund/refund.html"><input type="button" class="refund-button" value="íë¶ ë° êµííê¸°" style="cursor: pointer;"/></a>
                            <!-- <a href="../help-me.html"><input type="button" class="refund-button" value="ê³ ê°ì¼í°" style="cursor: pointer;"/></a> -->
                        </td>
                    </tr>
                    <tr>
                        <td>#002</td>
                        <td>
                            <div class="product-info">
                                <img src="https://image.msscdn.net/thumbnails/images/goods_img/20240311/3936910/3936910_17101188568662_big.jpg?w=1200"
                                    alt="ì¬ì± ë¡ê³ íì´í ë²í´ ë²í·í(L245AP506P) ë¤ì´ë¹" class="product-image" id="" />
                                <div class="product-details">
                                    <p>ì¬ì± ë¡ê³ íì´í ë²í´ ë²í·í(L245AP506P) ë¤ì´ë¹</p>
                                    <p>â©15,000</p>
                                    <p>ë¨ì ìë: <span class="stock-quantity">5</span>ê°</p>
                                </div>
                            </div>
                        </td>
                        <td></td>
                        <td>â©15,000</td>
                        <td>
                            <span> ì£¼ë¬¸ ë ì§ <br/> </span> 2024-09-15 <br /><br />
                            <a href="../refund/refund.html"><input type="button" class="refund-button" value="íë¶ ë° êµííê¸°" style="cursor: pointer;"/></a>
                            <!-- <a href=""><input type="button" class="refund-button" value="ê³ ê°ì¼í°" style="cursor: pointer;"/></a> -->
                        </td>

                    </tr>
                    <tr>
                        <td>#003</td>
                        <td>
                            <div class="product-info">
                                <img src="https://image.msscdn.net/thumbnails/images/goods_img/20240326/3991058/3991058_17116184755452_big.jpg?w=1200"
                                    alt="[ì íë² PICK]FR-40S íë ì¹ ìí¬ 5P ìì¼_Military Navy" class="product-image" id="" />
                                <div class="product-details">
                                    <p>[ì íë² PICK]FR-40S íë ì¹ ìí¬ 5P ìì¼_Military Navy</p>
                                    <p>â©30,000</p>
                                    <p>ë¨ì ìë: <span class="stock-quantity">2</span>ê°</p>
                                </div>
                            </div>
                        </td>
                        <td></td>
                        <td>â©30,000</td>
                        <td>
                            <span> ì£¼ë¬¸ ë ì§ <br/> </span> 2024-09-17 <br /><br />
                            <a href="../refund/refund.html"><input type="button" class="refund-button" value="íë¶ ë° êµííê¸°" style="cursor: pointer;"/></a>
                            <!-- <a href="../help-me.html"><input type="button" class="refund-button" value="ê³ ê°ì¼í°" style="cursor: pointer;"/></a> -->
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <footer class="footer">
            <p>ê³ ê° ì§ì ì¼í°: 1234-5678 | ì´ë©ì¼: shoppinghajo@samjo.com</p>
            <p>ì´ì ìê°: ì-ê¸, 09:00-18:00 (ì£¼ë§ ë° ê³µí´ì¼ í´ë¬´)</p>
            <div>
                Â© ì¼ííì¡° ALL RIGHTS RESERVED
            </div>

            <div>
                <span>ì¼ë¶ ìíì ê²½ì° ì¼ííì¡°ë íµì íë§¤ì ë¹ì¬ìê° ìë íµì íë§¤ì¤ê°ìë¡ì ìí, ìíì ë³´, ê±°ëì ëí
                    <br>
                    ì±ìì´ ì íë  ì ìì¼ë¯ë¡, ê° ìí íì´ì§ìì êµ¬ì²´ì ì¸ ë´ì©ì íì¸íìê¸° ë°ëëë¤.</span>
            </div>
    </div>
    </footer>
    </div>


</body>
<script src="order-status.js"></script>

</html>