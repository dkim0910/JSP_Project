package com.kh.mypage.refund.Beans_DAO_DTO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mypage.refund.mybatis.My_SqlMapConfig;

public class MyDAO {
	SqlSessionFactory factory = My_SqlMapConfig.getFactory();
	SqlSession session;
	
	public MyDAO() {
		session = factory.openSession(true);
	}

    // 전체 테이블 검색
    public List<MyDTO> getAllProducts() {
        List<MyDTO> products;
        products = session.selectList("MyMapper.getAllProducts"); // MyBatis Mapper XML에서 정의된 쿼리 호출
        return products;
    }

	// 환불에 필요한 요소 전체 가지고 오기
	public List<MyDTO> getRefunds(String thisorderNum) {
		List<MyDTO> allRefunds;
		allRefunds = session.selectList("MyMapper.getRefunds", thisorderNum);
		return allRefunds;
	}
    
    



    
    
    
    
    
}
