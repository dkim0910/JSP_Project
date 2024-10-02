package com.kh.category;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mybatis.SqlMapConfig;

public class GoodsDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public GoodsDAO() {
		session = factory.openSession(true);
	}
	
	// 특정 카테고리 정보 list
	public List<GoodsDTO> searchCategory(String category, String subcategory) {
		List<GoodsDTO> result = null;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("category", category);
		datas.put("subcategory", subcategory);
		result = session.selectList("Category.search", datas);
		return result;
	}
	
	// 헤어케어 상품 1개 특정한 정보
	public GoodsDTO searchHaircare() {
		GoodsDTO result = null;
		result = session.selectOne("Category.Haircareinfo");
		return result;
	}
	
	
}
