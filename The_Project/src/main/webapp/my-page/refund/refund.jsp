<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>íë¶ ë° êµí | ì¼ííì¡°</title>
    <link rel="stylesheet" href="refund.css">
</head>

<body style="cursor: default;">
    <div class="container" >
        <header class="header">
            <a href="../my-main/my-page-main.html" class="button-back-page" aria-label="ì´ì  íì´ì§ë¡ ì´ë">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005" stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>
            <h1 style="flex-grow: 1; text-align: center;">íë¶ ë° êµí</h1>
            <p></p>
        </header>
        

        <section class="products-section" id="remove-style" style="min-height: 100vh; display: flex; flex-direction: column;" >
            <h2>êµ¬ë§¤ ë´ì­</h2>

            <!-- ëì¤ì ì´ ul ìì ììì DBìì ê³ì ê°ì ¸ì¬ì ìê² ì´ì ì²´ë¥¼ for ë¬¸ì¼ë¡ ë§ë¤ì´ë³´ê¸° -->

            <ul class="product-list" >
                <li class="product-item" onclick="showRefundForm('<%= ì í ì´ë¦1 %>', '<%= ì í ë²í¸1.1 %>')">
                    <img src="https://image.msscdn.net/thumbnails/images/goods_img/20210826/2092852/2092852_17086532214128_big.jpg?w=1200"
                        alt="" class="product-image">
                    <span class="product-name">ì´ì§ ìì´ë ë°ë í¬ì¸  ê·¸ë ì´</span>
                    <span class="refund-button" onclick="removeStyles()">íë¶ ì ì²­</span>
                </li>
                <li class="product-item" onclick="showRefundForm('<%= ì í ì´ë¦2 %>' , '<%= ì í ë²í¸2.2 %>')">
                    <img src="https://image.msscdn.net/thumbnails/images/goods_img/20240311/3936910/3936910_17101188568662_big.jpg?w=1200"
                        alt="" class="product-image">
                    <span class="product-name">ì¬ì± ë¡ê³ íì´í ë²í´ ë²í·í(L245AP506P) ë¤ì´ë¹</span>
                    <span class="refund-button" onclick="removeStyles()">íë¶ ì ì²­</span>
                </li>



            </ul>
        </section>

        <section class="refund-form-section" id="refund-form-section">
            <h2>íë¶ ì ì²­ì</h2>
            <form id="refund-form">
                <div class="form-group">
                    
                    <label for="product-name">ì í ì´ë¦</label>
                    <input type="text" id="product-name" name="product-name" readonly>
                </div>
                <div class="form-group">
                    <label for="order-number">ì£¼ë¬¸ ë²í¸</label>
                    <input type="text" id="order-number" name="order-number" readonly>
                </div>
                <div class="form-group">
                    <label for="reason">íë¶ ì¬ì </label>
                    <textarea id="reason" name="reason" rows="4"></textarea>
                </div>

                <!-- ëì¤ì ê³ ê° êµ¬ë§¤ì°½ìì ê³ ë¥¸ ê·¸ ê²°ì  ìë¨ì¼ë¡ íë¶íëê±° ë§ë¤ê¸° -->
                <!-- <div class="form-group">
                    <label for="bank-info">íë¶ ë°ì ê³ì¢ ì ë³´</label>
                    <input type="text" id="bank-info" name="bank-info" required>
                </div> -->

                <a href="finish-refund.html"><button type="button" class="submit-button">íë¶ ì ì²­íê¸°</button></a>
            </form>
        </section>

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

<script src="refund.js"></script>

</html>