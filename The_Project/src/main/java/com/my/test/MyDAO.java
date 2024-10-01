package test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mybatis.SqlMapConfig;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MyDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
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

    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
        ActionForward forward = new ActionForward();

        // 모든 제품 목록 가져오기
        List<MyDTO> products = getAllProducts();
        
        // 요청 속성에 제품 목록 저장
        req.setAttribute("products", products);
        
        // 결과를 보여줄 JSP 페이지로 포워딩
        forward.setPath("/productList.jsp"); // JSP 페이지 경로 설정
        forward.setRedirect(false); // 포워드 방식으로 설정
        
        return forward; // ActionForward 반환
    }
}
