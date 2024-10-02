package com.kh.order;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.login.UserDTO;
import com.kh.mybatis.SqlMapConfig;

public class OrderDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public OrderDAO() {
		session = factory.openSession(true);
	}

	public boolean insertInfo(UserDTO order) {
		boolean result = false;
		if(session.insert("order.insertOrder", order) == 1 ) {
			result = true;
		}
		return result;
	}
	
}
