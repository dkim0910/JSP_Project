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

	public List<CartDTO> searchcartgoods(String user_id) {
		List<CartDTO> result = session.selectList("Cart.searchgoods", user_id);
		return result;
	}

	public List<GoodsDTO> searchByList(String[] itemIdsArray) {
		System.out.println("db start");
		List<GoodsDTO> result = session.selectList("Cart.searchbylist", itemIdsArray);
		System.out.println("db end");
		return result;
	}
}
