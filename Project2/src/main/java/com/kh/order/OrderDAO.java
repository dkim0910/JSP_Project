package com.kh.order;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.kh.mybatis.SqlMapConfig;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;

public class OrderDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public OrderDAO() {
		session = factory.openSession(true);
	}

//	public UserDTO getById(String user_id) {
//		return (UserDTO)session.selectOne("Order.getById",user_id);
//	}
	
	public MyDTO getName(String user_name) {
		MyDTO name = session.selectOne("Order.getName", user_name);
		return name;
	}

	public List<MyDTO> getProducts(String product_id) {
		List<MyDTO> result = session.selectList("Order.getProducts", product_id);
		return result;
	}
	
	
}
