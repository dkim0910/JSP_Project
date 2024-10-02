package com.kh.order;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.login.UserDTO;
import com.kh.mybatis.SqlMapConfig;
import com.kh.mypage.refund.Beans_DAO_DTO.MyProductsDTO;

public class OrderDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public OrderDAO() {
		session = factory.openSession(true);
	}

	public MyProductsDTO insertInfo(String product_id) {
		MyProductsDTO result = null;
		result = session.selectOne("Order.myproductsinfo", product_id);
		return result;
	}

	public UserDTO getById(String user_id) {
		return (UserDTO)session.selectOne("Order.getById",user_id);
	}
	
	
}
