package com.kh.cart.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.kh.cart.dao.CartDTO;

public class CartDAO{
	
	private ArrayList<CartDTO> listOfProducts = new ArrayList<>();
	
	private static CartDAO instance = new CartDAO();
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe"; // Oracle 데이터베이스 URL
    String user = "pj"; // 사용자명
    String password = "pj"; // 비밀번호
    
    public static CartDAO getInstance() {
    	return instance;
    }
    
    public CartDAO() {
    	
    }
    
    public ArrayList<CartDTO>getAllProducts(){
    	String sql = "select*from products";
    	
    	try {
    		conn = getConnection();
    		pstmt = conn.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    		
    		while(rs.next()) {
    			CartDTO product = new CartDTO();
    			product.setPRODUCT_ID(rs.getString("PRODUCT_ID"));
    			product.setBRAND(rs.getString("BRAND"));
    			product.setPRODUCT_NAME(rs.getString("PRODUCT_NAME"));
    			product.setPRICE_AMOUNT(rs.getInt("PRICE_AMOUNT"));
    			product.setNORMAL_PRICE(rs.getInt("NORMAL_PRICE"));
    			product.setSALE_RATE(rs.getInt("SALE_RATE"));
    			product.setIMAGE_URL(rs.getString("IMAGE_URL"));
    			product.setCATEGORY(rs.getString("CATEGORY"));
    			product.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
    			
    			listOfProducts.add(product);
    		}
    		
    	
    }catch(Exception e) {
    	e.printStackTrace();
    }finally {
    	try {
    		if(rs != null) rs.close();
    		if(pstmt != null) pstmt.close();
    		if(conn != null) conn.close();
    		System.out.println("DB연동해제");
    	}catch(Exception e2) {
    		e2.printStackTrace();
    	}
    }
    	return listOfProducts;
	
}
    public Connection getConnection() {
    	try {
    		Class.forName("jdbc:oracle:thin:@localhost:1521:xe");
    		conn = DriverManager.getConnection(jdbcUrl, user, password);
    		System.out.println("DB연동완료");
    	}catch (Exception e) {
    		System.out.println("DB연동실패");
    		e.printStackTrace();
    	}
    	return conn;
    	
    }
    public CartDTO getProductById(String PRODUCT_ID) {
    	CartDTO  ProductById = new CartDTO();
    	String sql = "select*from products where PRODUCT_ID=?";
    	try {
    		conn = getConnection();
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1,PRODUCT_ID);
    		
    		rs = pstmt.executeQuery();
    		if(!rs.next()) {
    			return null;
    		}
    		if(rs.next()) {
    			CartDTO product = new CartDTO();
    			product.setPRODUCT_ID(rs.getString("PRODUCT_ID"));
    			product.setBRAND(rs.getString("BRAND"));
    			product.setPRODUCT_NAME(rs.getString("PRODUCT_NAME"));
    			product.setPRICE_AMOUNT(rs.getInt("PRICE_AMOUNT"));
    			product.setNORMAL_PRICE(rs.getInt("NORMAL_PRICE"));
    			product.setSALE_RATE(rs.getInt("SALE_RATE"));
    			product.setIMAGE_URL(rs.getString("IMAGE_URL"));
    			product.setCATEGORY(rs.getString("CATEGORY"));
    			product.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
    		}}
    		catch(Exception e) {
    			e.printStackTrace();
    		}finally {
    			try {
    				if(rs !=null) rs.close();
    				if(pstmt != null) pstmt.close();
    				if(conn != null) conn.close();
    			}catch (Exception e2) {
    				e2.printStackTrace();
    			}
    		}
    		return ProductById;
    	}
    	public void addProduct(CartDTO product) {
    		listOfProducts.add(product);
    	}}
    
