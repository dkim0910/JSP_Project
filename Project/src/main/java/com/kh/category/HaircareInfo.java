package com.kh.category;

import com.kh.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HaircareInfo {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)  {
		ActionForward forward = new ActionForward();
		GoodsDTO goods = new GoodsDTO();
		GoodsDAO gdao = new GoodsDAO();
		goods = gdao.searchHaircare();
		// 세션에 상품 정보 저장
		request.getSession().setAttribute("goods", goods);
		
		forward.setRedirect(true);
		if(goods != null) {
			// redirect 여부 선택
			forward.setPath("/category/detail/detail.jsp");
		}else {
			forward.setPath("/index.html");
		}
		return forward;
	}
}
