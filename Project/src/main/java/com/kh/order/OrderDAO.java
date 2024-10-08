package com.kh.order;

import java.util.HashMap;
import java.util.List;

import org.apache.catalina.tribes.util.Arrays;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.cart.CartDTO;
import com.kh.category.GoodsDTO;
import com.kh.mybatis.SqlMapConfig;
import com.kh.mypage.refund.Beans_DAO_DTO.MyDTO;

public class OrderDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;

	public OrderDAO() {
		session = factory.openSession(true);
	}

	public List<MyDTO> getProducts(String product_id) {
		List<MyDTO> result = session.selectList("Order.getProducts", product_id);
		return result;
	}

	public List<GoodsDTO> getByList(String[] itemIdsArray) {
		List<GoodsDTO> result = session.selectList("Order.getbylist", itemIdsArray);
		return result;
	}

	public boolean insertOrderAndProducts(String user_id, String[] product_ids) {
		boolean result = true;
		SqlSession session = factory.openSession();

		try {
			// 주문 번호 생성
			HashMap<String, String> orderData = new HashMap<>();
			orderData.put("user_id", user_id);
			session.insert("Order.insertOrder", orderData);

			// 생성된 주문 번호 가져오기
			int orderedNum = session.selectOne("Order.getLastInsertedOrderNum"); // 가장 최근에 삽입된 주문 번호

			for (String product_id : product_ids) {
				HashMap<String, String> data = new HashMap<>();
				data.put("ordered_num", String.valueOf(orderedNum));
				data.put("user_id", user_id);
				data.put("product_id", product_id);

				int rowsAffected = session.insert("Order.insertOrderedList", data);
				if (rowsAffected <= 0) {
					result = false; // 하나라도 실패하면 false로 설정
				}
			}
		} finally {
			session.close();
		}

		return result; // 모든 삽입이 성공했으면 true 반환
	}
	// 장바구니 db 내의 상품 리스트 가져오기
	public List<CartDTO> searchCart(String user_id) {
		List<CartDTO> result = session.selectList("Order.carttoorder",user_id);
		return result;
	}
	// 장바구니 db의 상품 리스트를 주문 db로 보내기
	public void cartToOrder(String user_id, List<CartDTO> cartlist) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_id", user_id);
		for(CartDTO cartgoods : cartlist) {
			datas.put("cartgoods", cartgoods);
			session.insert("Order.insertToOrdered",datas);
		}
	}

	public void deleteCart(String user_id) {
		session.delete("Order.deletecart",user_id);
	}

}
