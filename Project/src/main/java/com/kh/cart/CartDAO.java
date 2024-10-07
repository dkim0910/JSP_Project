package com.kh.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.category.GoodsDTO;
import com.kh.mybatis.SqlMapConfig;

public class CartDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public CartDAO() {
		session = factory.openSession(true);
	}

	public List<GoodsDTO> searchcartgoods(String user_id) {
		List<GoodsDTO> result = null;
		result = session.selectList("Cart.searchgoods", user_id);

		return result;
	}
}
