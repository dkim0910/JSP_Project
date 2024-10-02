package com.kh.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mybatis.SqlMapConfig;
import com.kh.web.dao.UserDTO;

public class MainDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;

	public MainDAO() {
		session = factory.openSession(true);
	}
	
//	로그인성공시 이름보여주는 메서드
	public UserDTO welcomName(String user_name) {
		UserDTO member = null;
	    member = session.selectOne("Member.welcomName", user_name);
	    return member;		 
	}

}
