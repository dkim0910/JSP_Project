package com.kh.cart.dao;


import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mybatis.SqlMapConfig;

public class CartDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public CartDAO() {
		session = factory.openSession(true);
	}
	
	public CartDTO searchCategory(String category, String subcategory) {
		CartDTO result = null;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("category", category);
		datas.put("subcategory", subcategory);
		result = session.selectOne("Category.search", datas);
		return result;
	}

	public void addToCart(String productId, int quantity) {}
	
	public CartDTO searchHaircare() {
		CartDTO result = null;
		result = session.selectOne("Category.Haircareinfo");
		return result;
	}
	
	
}
