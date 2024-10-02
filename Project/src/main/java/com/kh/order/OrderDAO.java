package com.kh.order;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.cart.dao.CartDTO;
import com.kh.login.UserDTO;
import com.kh.mybatis.SqlMapConfig;
import com.kh.mypage.refund.Beans_DAO_DTO.MyProductsDTO;

public class OrderDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public OrderDAO() {
		session = factory.openSession(true);
	}

	public MyProductsDTO getproductidByMyProducts(String product_id) {
		MyProductsDTO result = null;
		result = session.selectOne("Order.getproductidByMyProducts", product_id);
		return result;
	}

	public UserDTO getById(String user_id) {
		return (UserDTO)session.selectOne("Order.getById",user_id);
	}

	public CartDTO getproductidByCart(String product_id) {
		CartDTO result = null;
		result = session.selectOne("Order.getproductidByCart", product_id);
		return result;
	}
	
	
}
