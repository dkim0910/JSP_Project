package com.kh.mypage.refund.frontcontroller;

import java.io.IOException;
import java.io.PrintWriter;

import org.json.simple.JSONObject;

import com.kh.mypage.refund.Action.Action;
import com.kh.mypage.refund.Action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class TrackOrder implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
        
        String orderNumber = request.getParameter("orderNumber");

        // 실제 데이터베이스 또는 로직에 따라 daysToDeliver 값을 가져와야 합니다.
        int daysToDeliver = 5; // 기본값

        // 배송 정보를 설정
        String expectedDeliveryDate;
        if (daysToDeliver > 0) {
            daysToDeliver -= 1; // 1일 감소
        }

        if (daysToDeliver == 0) {
            expectedDeliveryDate = "배송 완료"; // 배송 완료 표시
            daysToDeliver = 5; // 5일로 리셋
        } else {
            expectedDeliveryDate = daysToDeliver + "일 후"; // 남은 일수 표시
        }

        // JSON 객체 생성
        JSONObject jsonResponse = new JSONObject();
        jsonResponse.put("orderNumber", orderNumber);
        jsonResponse.put("expectedDeliveryDate", expectedDeliveryDate);

        // JSON 응답 설정
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        return forward; 
    }
}
