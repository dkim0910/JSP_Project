package com.kh.main;

import java.util.List;

import com.kh.web.action.Action;
import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ImgAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		MainDAO mainDAO = new MainDAO();
        List<MainDAO> mainImg = mainDAO.getMainImg();
        request.setAttribute("mainImg", mainImg);
        
        forward.setRedirect(false);
        forward.setPath();
		
		return forward;
	}

}
