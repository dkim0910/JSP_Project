package com.kh.mypage.refund.Beans_DAO_DTO;

import java.util.ArrayList;
import java.util.HashMap;
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

	// 환불페이지에 필요한 요소 가지고 오기
	public List<MyDTO> getRefunds(String userid, String orderedNum){
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("orderedNum", orderedNum);
		
		List<MyDTO> refunds = new ArrayList<>();
		refunds = session.selectList("MyMapper.getRefunds", datas);	// .xml 에 있는거 가지고 옴 Board , getBoardList
		
		return refunds;
	}

	// 주문 내역
	public List<MyDTO> getOrdered(String userid, String orderedNum) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("orderedNum", orderedNum);
		
		List<MyDTO> refunds = new ArrayList<>();
		refunds = session.selectList("MyMapper.getOrdered", datas);	// .xml 에 있는거 가지고 옴 Board , getBoardList
		
		return refunds;
	}

	// 회원 삭제 및 회원 카트랑 주문 내역 삭제 (모든 테이블에서 이 값의 user_id면 삭제)
	public void deleteUser(String userid) {
	    // Ordered 테이블에서 USER_ID가 'admin'인 데이터 삭제
	    session.delete("MyMapper.deleteFromOrdered", userid);

	    // Cart 테이블에서 USER_ID가 'admin'인 데이터 삭제
	    session.delete("MyMapper.deleteFromCart", userid);

	    // Users 테이블에서 USER_ID가 'admin'인 데이터 삭제
	    session.delete("MyMapper.deleteFromUsers", userid);
	}




    
    
    
    
    
}
