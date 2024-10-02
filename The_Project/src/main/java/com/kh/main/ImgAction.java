package com.kh.main;

import java.util.List;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ImgAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		MainDAO productDAO = new MainDAO();
        List<MainDTO> products = productDAO.getImages();
        req.setAttribute("products", products);
        
        forward.setRedirect(false);
        forward.setPath("/main-page/imgview.jsp");
        
        return forward; // 포워딩
	}

}
