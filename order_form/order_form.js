function openPopup_AddressChange() {
    var popupURL = "https://kh-academy.co.kr/login/login.kh";

    var popupProperties = "width=600, height=400 ,scrollbars=yes";

    window.open(popupURL, "Popup", popupProperties);
}
function openPopup_couponApply() {
    var popupURL = "https://www.daum.net";

    var popupProperties = "width=600, height=400 ,scrollbars=yes";

    window.open(popupURL, "Popup", popupProperties);
}
function toggleOtherPayments(show) {
    var otherPayments = document.getElementById('other-payment-options');
    if (show) {
        otherPayments.style.display = 'block';
    } else {
        otherPayments.style.display = 'none';
    }
}

                