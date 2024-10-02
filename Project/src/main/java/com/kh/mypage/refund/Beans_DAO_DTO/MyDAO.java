package com.kh.mypage.refund.Beans_DAO_DTO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mypage.refund.Action.ActionForward;
import com.kh.mypage.refund.mybatis.My_SqlMapConfig;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MyDAO {
	SqlSessionFactory factory = My_SqlMapConfig.getFactory();
	SqlSession session;
	
	public MyDAO() {
		session = factory.openSession(true);
	}

    // 전체 테이블 검색
    public List<MyProductsDTO> getAllProducts() {
        List<MyProductsDTO> products;
        products = session.selectList("MyMapper.getAllProducts"); // MyBatis Mapper XML에서 정의된 쿼리 호출
        return products;
    }

    // 한불 테이블 검색 order_num으로 
    public List<MyOrder_OrderedDTO> getRefundedProducts(String orderNum) {
    	System.out.println("here3");
    	System.out.println("ORDER_NUM : " + orderNum);
        List<MyOrder_OrderedDTO> refund;
        refund = session.selectList("MyMapper.getRefundedProducts", orderNum); // orderNum을 파라미터로 전달
        System.out.println("refund : " + refund);
        return refund;
    }



    
    // 환불 페이지 DB 조회 
    
    
    
    
}
