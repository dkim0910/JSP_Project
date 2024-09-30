<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>íë¶ ë° êµí | ì¼ííì¡°</title>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
        }

        body {
            display: flex;
            flex-direction: column;
        }

        .container {
            display: flex;
            flex-direction: column;
            max-width: 1600px;
            margin: 0 auto;
            padding: 0 40px 20px;
            background-color: #fff;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            min-height: 100vh;
            /* Maintain full height */
        }

        .header {
            display: flex;
            align-items: center;
            padding: 20px;
            background-color: black;
            color: #ffffff;
            border-bottom: 2px solid #ff4d4d;
            position: relative;
        }

        .content {
            flex: 1;
            /* Take up available space */
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
            /* Optional padding */
        }

        .footer {
            text-align: center;
            padding: 20px;
            background-color: black;
            color: #999999;
            border-top: 2px solid #ff4d4d;
        }

        .footer p {
            margin: 5px 0;
        }

        .all-button {
            background-color: black;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 20px;
            text-align: center;
            cursor: pointer;
            text-decoration: none;
            /* Ensure no underline */
        }
    </style>
</head>

<body style="cursor: default;">
    <div class="container">
        <header class="header">
            <a href="../../my-page/my-main/my-page-main.html" class="button-back-page" aria-label="ì´ì  íì´ì§ë¡ ì´ë"
                style="color: white;">
                <svg width="35" height="35" viewBox="0 0 28 28" fill="none">
                    <path
                        d="M16.1004 21.7L8.61252 14.2122C8.49537 14.095 8.49537 13.9051 8.61252 13.7879L16.1004 6.30005"
                        stroke="currentColor" stroke-width="1.4"></path>
                </svg>
            </a>
            <h1 style="flex-grow: 1; text-align: center;">íë¶ ë° êµí</h1>
            <p></p>
        </header>
        <div class="content">
            <div>
                <h1>íë¶ ë° êµí ì ì²­ì´ ìë£ëììµëë¤</h1>
                <h2>ìì¸í ë´ì©ì ~~~ë¡ ìë´í´ ëë¦¬ê² ìµëë¤</h2>
                <div>
                    <a href="../../my-page/my-main/my-page-main.html" class="all-button">ë§ì´íì´ì§ë¡ ëìê°ê¸°</a>
                </div>
            </div>
        </div>

        <footer class="footer">
            <p>ê³ ê° ì§ì ì¼í°: 1234-5678 | ì´ë©ì¼: shoppinghajo@samjo.com</p>
            <p>ì´ì ìê°: ì-ê¸, 09:00-18:00 (ì£¼ë§ ë° ê³µí´ì¼ í´ë¬´)</p>
            <div>Â© ì¼ííì¡° ALL RIGHTS RESERVED</div>
            <div>
                <span>ì¼ë¶ ìíì ê²½ì° ì¼ííì¡°ë íµì íë§¤ì ë¹ì¬ìê° ìë íµì íë§¤ì¤ê°ìë¡ì ìí, ìíì ë³´, ê±°ëì ëí ì±ìì´ ì íë  ì ìì¼ë¯ë¡, ê° ìí íì´ì§ìì êµ¬ì²´ì ì¸ ë´ì©ì íì¸íìê¸°
                    ë°ëëë¤.</span>
            </div>
        </footer>
    </div>
</body>

</html>