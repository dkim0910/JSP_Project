package com.kh.web.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public UserDAO() {
		session = factory.openSession(true);
	}
	
	// 회원가입
	public boolean join(UserDTO user) {
		boolean result = false;
		if(session.insert("Member.join",user)==1) {
			result = true;
		}
		return result;
	}
	
	// id 중복체크
	 public boolean checkId(String userid) {
		 boolean result = false;
		 int cnt = 0;
		 cnt = session.selectOne("Member.checkId", userid);
		 if(cnt == 1) {
			 result = true;
		 }
		 return result;
	 }
	
	// 로그인
	public UserDTO login(String userid, String userpw) {
		UserDTO member = null;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		member = session.selectOne("Member.login", datas);
		return member;
	}
	
	// 아이디 찾기
	public UserDTO searchByname(String username, String userphone) {
		UserDTO member = null;
		Map<String, String> params = new HashMap<>();
		params.put("username", username);
		params.put("userphone", userphone);
		member = session.selectOne("Member.searchByname", params);
		return member;		 
	}
}
