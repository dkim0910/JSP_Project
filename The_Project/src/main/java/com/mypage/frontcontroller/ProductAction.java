package com.mypage.frontcontroller;

import java.util.List;

import com.mypage.Action.Action;
import com.mypage.Action.ActionForward;
import com.mypageBeans_DAO_DTO.MyDAO;
import com.mypageBeans_DAO_DTO.MyDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ProductAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
    	
    	MyDAO productDAO = new MyDAO();
        List<MyDTO> products = productDAO.getAllProducts();
        request.setAttribute("products", products);
        
        forward.setRedirect(false);
        forward.setPath("/productList.jsp");
        
        return forward; // 포워딩
    }
}
