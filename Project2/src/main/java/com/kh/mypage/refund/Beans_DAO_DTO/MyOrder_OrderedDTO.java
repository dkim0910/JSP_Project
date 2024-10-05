package com.kh.mypage.refund.Beans_DAO_DTO;

public class MyOrder_OrderedDTO {
	// Order_
//	private String products;
//	private String product_id;
	
	// Ordered
	private String ordered_num;
	private String order_num;
	private String ordered_date;	// 이건 DB에서는 Date로 빠짐 근데 우린 문자열로 가지고 올거임
	
	public String getOrdered_num() {
		return ordered_num;
	}
	public void setOrdered_num(String ordered_num) {
		this.ordered_num = ordered_num;
	}
	public String getOrder_num() {
		return order_num;
	}
	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}
	public String getOrdered_date() {
		return ordered_date;
	}
	public void setOrdered_date(String ordered_date) {
		this.ordered_date = ordered_date;
	}
	
	
	
	
	
}
