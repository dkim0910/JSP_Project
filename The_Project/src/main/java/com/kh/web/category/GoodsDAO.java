package com.kh.web.category;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mybatis.SqlMapConfig;

public class GoodsDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public GoodsDAO() {
		session = factory.openSession(true);
	}
	
	public GoodsDTO searchCategory(String category, String subcategory) {
		GoodsDTO result = null;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("category", category);
		datas.put("subcategory", subcategory);
		result = session.selectOne("Category.search", datas);
		return result;
	}
}
