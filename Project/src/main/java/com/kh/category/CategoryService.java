package com.kh.category;

import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CategoryService {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)  {
		ActionForward forward = new ActionForward();
		GoodsDTO goods = new GoodsDTO();
		GoodsDAO gdao = new GoodsDAO();
		
		String category = request.getParameter("category");
		String subcategory = request.getParameter("subcategory");
		
		goods = gdao.searchCategory(category, subcategory);
		request.setAttribute("goods", goods);
		
		forward.setRedirect(true);
		if(goods != null) {
			// redirect 여부 선택
			forward.setPath("/skincare/skincare.jsp");
		}else {
			forward.setPath("/index.html");
		}
		return forward;
	}
}
