package com.kh.order;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.category.GoodsDTO;
import com.kh.mybatis.SqlMapConfig;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;

public class OrderDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public OrderDAO() {
		session = factory.openSession(true);
	}
	
//	public MyDTO getName(String user_name) {
//		MyDTO name = session.selectOne("Order.getName", user_name);
//		return name;
//	}

	public List<MyDTO> getProducts(String product_id) {
		List<MyDTO> result = session.selectList("Order.getProducts", product_id);
		return result;
	}

	public boolean insertOrderedList(String product_id, String user_id) {
		boolean result = false;
		HashMap<String, String> data = new HashMap<String, String>();
		data.put("product_id", product_id);
		data.put("user_id", user_id);
		session.insert("Order.insertOrderedList", data);
		/*
		 * if( session.insert("list.insertOrderedList", data) == 1 ) { result = true; }
		 */
		return result;
	}
	
	
}
