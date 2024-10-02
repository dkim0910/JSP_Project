package com.kh.mypage.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kh.mybatis.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession session;
	
	public MemberDAO() {
		session = factory.openSession(true);
	}

	public MemberDTO getMemberById(String userId) {
		return (MemberDTO)session.selectOne("Member.getMemberById",userId);
	}
}
