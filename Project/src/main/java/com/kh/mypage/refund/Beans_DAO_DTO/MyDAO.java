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

    // 한불 테이블 검색 order_num으로 
    public List<MyDTO> getRefundedProducts(String orderNum) {
    	System.out.println("here3");
        List<MyDTO> refund;
        refund = session.selectList("MyMapper.getRefundedProducts", orderNum); // orderNum을 파라미터로 전달
        return refund;
    }

    // ordered 테이블에서 order_num으로 주문했던 상품 조회 (주문내역에서의 조회임)
	/*
	 * public List<MyDTO> getRefundProducts(String orderNum2) { List<MyDTO>
	 * refunded; refunded = session.selectList("MyMapper.getRefund", orderNum2);
	 * 
	 * return refunded; }
	 */

	// 이미지 불러오기
	public List<MyDTO> getImage(String Image1) {
		List<MyDTO> Image;
		Image = session.selectList("MyMapper.getImage", Image1);
		
		return Image;
	}
    
    



    
    
    
    
    
}
