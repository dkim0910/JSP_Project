package com.kh.web.category;

import java.io.IOException;

import com.kh.web.action.ActionForward;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.product")
public class CgFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		if(requestURI.equals("/cg/product")) {
			String category = req.getParameter("category"); 		// ex) beauty
			String subcategory = req.getParameter("subcategory"); 	// ex) skincare
			forward = new CategoryService().execute(req, resp);
		}
        
        if(forward != null) {
			// true, redirect 방식으로 페이지 이동할 경우
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			// false, forward 방식으로 페이지 이동할 경우	
			}else {
				req.getRequestDispatcher(forward.getPath()).forward(req, resp);
			}
		}
	}
	
}
